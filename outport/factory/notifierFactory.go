package factory

import (
	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/core/check"
	"github.com/TerraDharitri/drt-go-chain-core/data/block"
	"github.com/TerraDharitri/drt-go-chain-core/marshal"
	"github.com/TerraDharitri/drt-go-chain/outport"
	"github.com/TerraDharitri/drt-go-chain/outport/notifier"
)

// EventNotifierFactoryArgs defines the args needed for event notifier creation
type EventNotifierFactoryArgs struct {
	Enabled           bool
	UseAuthorization  bool
	ProxyUrl          string
	Username          string
	Password          string
	RequestTimeoutSec int
	Marshaller        marshal.Marshalizer
}

// CreateEventNotifier will create a new event notifier client instance
func CreateEventNotifier(args *EventNotifierFactoryArgs) (outport.Driver, error) {
	if err := checkInputArgs(args); err != nil {
		return nil, err
	}

	httpClientArgs := notifier.HTTPClientWrapperArgs{
		UseAuthorization:  args.UseAuthorization,
		Username:          args.Username,
		Password:          args.Password,
		BaseUrl:           args.ProxyUrl,
		RequestTimeoutSec: args.RequestTimeoutSec,
	}
	httpClient, err := notifier.NewHTTPWrapperClient(httpClientArgs)
	if err != nil {
		return nil, err
	}

	blockContainer, err := createBlockCreatorsContainer()
	if err != nil {
		return nil, err
	}

	notifierArgs := notifier.ArgsEventNotifier{
		HttpClient:     httpClient,
		Marshaller:     args.Marshaller,
		BlockContainer: blockContainer,
	}

	return notifier.NewEventNotifier(notifierArgs)
}

func checkInputArgs(args *EventNotifierFactoryArgs) error {
	if check.IfNil(args.Marshaller) {
		return core.ErrNilMarshalizer
	}

	return nil
}

func createBlockCreatorsContainer() (notifier.BlockContainerHandler, error) {
	container := block.NewEmptyBlockCreatorsContainer()
	err := container.Add(core.ShardHeaderV1, block.NewEmptyHeaderCreator())
	if err != nil {
		return nil, err
	}
	err = container.Add(core.ShardHeaderV2, block.NewEmptyHeaderV2Creator())
	if err != nil {
		return nil, err
	}
	err = container.Add(core.MetaHeader, block.NewEmptyMetaBlockCreator())
	if err != nil {
		return nil, err
	}

	return container, nil
}
