package mock

import "github.com/TerraDharitri/drt-go-chain/debug"

// NodeWrapperStub -
type NodeWrapperStub struct {
	AddQueryHandlerCalled func(name string, handler debug.QueryHandler) error
}

// AddQueryHandler -
func (nws *NodeWrapperStub) AddQueryHandler(name string, handler debug.QueryHandler) error {
	if nws.AddQueryHandlerCalled != nil {
		return nws.AddQueryHandlerCalled(name, handler)
	}

	return nil
}

// IsInterfaceNil -
func (nws *NodeWrapperStub) IsInterfaceNil() bool {
	return nws == nil
}
