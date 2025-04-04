package main

import (
	"fmt"
	"os"
	"os/signal"
	"sort"
	"strings"
	"syscall"
	"time"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/core/check"
	"github.com/TerraDharitri/drt-go-chain-core/display"
	"github.com/TerraDharitri/drt-go-chain-core/marshal"
	factoryMarshalizer "github.com/TerraDharitri/drt-go-chain-core/marshal/factory"
	"github.com/TerraDharitri/drt-go-chain-crypto/signing"
	"github.com/TerraDharitri/drt-go-chain-crypto/signing/secp256k1"
	secp256k1SinglerSig "github.com/TerraDharitri/drt-go-chain-crypto/signing/secp256k1/singlesig"
	logger "github.com/TerraDharitri/drt-go-chain-logger"
	"github.com/TerraDharitri/drt-go-chain-logger/file"
	"github.com/TerraDharitri/drt-go-chain/cmd/node/factory"
	"github.com/TerraDharitri/drt-go-chain/cmd/seednode/api"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/config"
	p2pDebug "github.com/TerraDharitri/drt-go-chain/debug/p2p"
	"github.com/TerraDharitri/drt-go-chain/epochStart/bootstrap/disabled"
	"github.com/TerraDharitri/drt-go-chain/facade"
	cryptoFactory "github.com/TerraDharitri/drt-go-chain/factory/crypto"
	"github.com/TerraDharitri/drt-go-chain/p2p"
	p2pConfig "github.com/TerraDharitri/drt-go-chain/p2p/config"
	p2pFactory "github.com/TerraDharitri/drt-go-chain/p2p/factory"
	"github.com/urfave/cli"
)

const (
	defaultLogsPath     = "logs"
	logFilePrefix       = "dharitri-seed"
	filePathPlaceholder = "[path]"
)

var (
	seedNodeHelpTemplate = `NAME:
   {{.Name}} - {{.Usage}}
USAGE:
   {{.HelpName}} {{if .VisibleFlags}}[global options]{{end}}
   {{if len .Authors}}
AUTHOR:
   {{range .Authors}}{{ . }}{{end}}
   {{end}}{{if .Commands}}
GLOBAL OPTIONS:
   {{range .VisibleFlags}}{{.}}
   {{end}}
VERSION:
   {{.Version}}
   {{end}}
`
	// port defines a flag for setting the port on which the node will listen for connections
	port = cli.StringFlag{
		Name: "port",
		Usage: "The `[p2p port]` number on which the application will start. Can use single values such as " +
			"`0, 10230, 15670` or range of ports such as `5000-10000`",
		Value: "10000",
	}
	// restApiInterfaceFlag defines a flag for the interface on which the rest API will try to bind with
	restApiInterfaceFlag = cli.StringFlag{
		Name: "rest-api-interface",
		Usage: "The interface `address and port` to which the REST API will attempt to bind. " +
			"To bind to all available interfaces, set this flag to :8080. If set to `off` then the API won't be available",
		Value: facade.DefaultRestInterface,
	}
	// logLevel defines the logger level
	logLevel = cli.StringFlag{
		Name: "log-level",
		Usage: "This flag specifies the logger `level(s)`. It can contain multiple comma-separated value. For example" +
			", if set to *:INFO the logs for all packages will have the INFO level. However, if set to *:INFO,api:DEBUG" +
			" the logs for all packages will have the INFO level, excepting the api package which will receive a DEBUG" +
			" log level.",
		Value: "*:" + logger.LogInfo.String(),
	}
	// logFile is used when the log output needs to be logged in a file
	logSaveFile = cli.BoolFlag{
		Name:  "log-save",
		Usage: "Boolean option for enabling log saving. If set, it will automatically save all the logs into a file.",
	}
	// configurationFile defines a flag for the path to the main toml configuration file
	configurationFile = cli.StringFlag{
		Name: "config",
		Usage: "The `" + filePathPlaceholder + "` for the main configuration file. This TOML file contain the main " +
			"configurations such as the marshalizer type",
		Value: "./config/config.toml",
	}
	// p2pKeyPemFile defines the flag for the path to the key pem file used for p2p signing
	p2pKeyPemFile = cli.StringFlag{
		Name:  "p2p-key-pem-file",
		Usage: "The `filepath` for the PEM file which contains the secret keys for the p2p key. If this is not specified a new key will be generated (internally) by default.",
		Value: "./config/p2pKey.pem",
	}

	p2pConfigurationFile = "./config/p2p.toml"

	// p2pPrometheusMetrics defines a flag for p2p prometheus metrics
	// If enabled, it will open a new route, /debug/metrics/prometheus, where p2p prometheus metrics will be available
	p2pPrometheusMetrics = cli.BoolFlag{
		Name:  "p2p-prometheus-metrics",
		Usage: "Boolean option for enabling the /debug/metrics/prometheus route for p2p prometheus metrics",
	}
)

var log = logger.GetOrCreate("main")

func main() {
	app := cli.NewApp()
	cli.AppHelpTemplate = seedNodeHelpTemplate
	app.Name = "SeedNode CLI App"
	app.Usage = "This is the entry point for starting a new seed node - the app will help bootnodes connect to the network"
	app.Flags = []cli.Flag{
		port,
		restApiInterfaceFlag,
		logLevel,
		logSaveFile,
		configurationFile,
		p2pKeyPemFile,
		p2pPrometheusMetrics,
	}
	app.Version = "v0.0.1"
	app.Authors = []cli.Author{
		{
			Name:  "The DharitrI Team",
			Email: "contact@dharitri.org",
		},
	}

	app.Action = func(c *cli.Context) error {
		return startNode(c)
	}

	err := app.Run(os.Args)
	if err != nil {
		log.Error(err.Error())
		os.Exit(1)
	}
}

func startNode(ctx *cli.Context) error {
	var err error

	logLevelFlagValue := ctx.GlobalString(logLevel.Name)
	err = logger.SetLogLevel(logLevelFlagValue)
	if err != nil {
		return err
	}

	configurationFileName := ctx.GlobalString(configurationFile.Name)
	generalConfig, err := loadMainConfig(configurationFileName)
	if err != nil {
		return err
	}

	internalMarshalizer, err := factoryMarshalizer.NewMarshalizer(generalConfig.Marshalizer.Type)
	if err != nil {
		return fmt.Errorf("error creating marshalizer (internal): %s", err.Error())
	}

	withLogFile := ctx.GlobalBool(logSaveFile.Name)
	var fileLogging factory.FileLoggingHandler
	if withLogFile {
		workingDir := getWorkingDir(log)
		args := file.ArgsFileLogging{
			WorkingDir:      workingDir,
			DefaultLogsPath: defaultLogsPath,
			LogFilePrefix:   logFilePrefix,
		}
		fileLogging, err = file.NewFileLogging(args)
		if err != nil {
			return fmt.Errorf("%w creating a log file", err)
		}

		timeLogLifeSpan := time.Second * time.Duration(generalConfig.Logs.LogFileLifeSpanInSec)
		sizeLogLifeSpanInMB := uint64(generalConfig.Logs.LogFileLifeSpanInMB)
		err = fileLogging.ChangeFileLifeSpan(timeLogLifeSpan, sizeLogLifeSpanInMB)
		if err != nil {
			return err
		}
	}

	startRestServices(ctx, internalMarshalizer)

	log.Info("starting seednode...")

	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

	p2pCfg, err := common.LoadP2PConfig(p2pConfigurationFile)
	if err != nil {
		return err
	}
	log.Info("initialized with p2p config",
		"filename", p2pConfigurationFile,
	)
	if ctx.IsSet(port.Name) {
		p2pCfg.Node.Port = ctx.GlobalString(port.Name)
	}

	err = checkExpectedPeerCount(*p2pCfg)
	if err != nil {
		return err
	}

	p2pKeyPemFileName := ctx.GlobalString(p2pKeyPemFile.Name)
	messenger, err := createNode(*p2pCfg, internalMarshalizer, p2pKeyPemFileName)
	if err != nil {
		return err
	}

	err = messenger.Bootstrap()
	if err != nil {
		return err
	}

	log.Info("application is now running...")
	mainLoop(messenger, sigs)

	log.Debug("closing seednode")
	if !check.IfNil(fileLogging) {
		err = fileLogging.Close()
		log.LogIfError(err)
	}

	return nil
}

func mainLoop(messenger p2p.Messenger, stop chan os.Signal) {
	displayMessengerInfo(messenger)
	for {
		select {
		case <-stop:
			log.Info("terminating at user's signal...")
			return
		case <-time.After(time.Second * 5):
			displayMessengerInfo(messenger)
		}
	}
}

func loadMainConfig(filepath string) (*config.Config, error) {
	cfg := &config.Config{}
	err := core.LoadTomlFile(cfg, filepath)
	if err != nil {
		return nil, err
	}

	return cfg, nil
}

func createNode(
	p2pConfig p2pConfig.P2PConfig,
	marshalizer marshal.Marshalizer,
	p2pKeyFileName string,
) (p2p.Messenger, error) {
	p2pSingleSigner := &secp256k1SinglerSig.Secp256k1Signer{}
	p2pKeyGen := signing.NewKeyGenerator(secp256k1.NewSecp256k1())

	p2pKey, _, err := cryptoFactory.CreateP2pKeyPair(p2pKeyFileName, p2pKeyGen, log)
	if err != nil {
		return nil, err
	}

	arg := p2pFactory.ArgsNetworkMessenger{
		Marshaller:            marshalizer,
		P2pConfig:             p2pConfig,
		SyncTimer:             &p2pFactory.LocalSyncTimer{},
		PreferredPeersHolder:  disabled.NewPreferredPeersHolder(),
		PeersRatingHandler:    disabled.NewDisabledPeersRatingHandler(),
		ConnectionWatcherType: "disabled",
		P2pPrivateKey:         p2pKey,
		P2pSingleSigner:       p2pSingleSigner,
		P2pKeyGenerator:       p2pKeyGen,
		NetworkType:           p2p.MainNetwork,
		Logger:                logger.GetOrCreate("seed/p2p"),
	}

	netMessenger, err := p2pFactory.NewNetworkMessenger(arg)
	if err != nil {
		return nil, err
	}

	err = netMessenger.SetDebugger(p2pDebug.NewP2PDebugger(netMessenger.ID()))
	if err != nil {
		return nil, err
	}

	return netMessenger, err
}

func displayMessengerInfo(messenger p2p.Messenger) {
	headerSeedAddresses := []string{"Seednode addresses:"}
	addresses := make([]*display.LineData, 0)

	for _, address := range messenger.Addresses() {
		addresses = append(addresses, display.NewLineData(false, []string{address}))
	}

	tbl, _ := display.CreateTableString(headerSeedAddresses, addresses)
	log.Info("\n" + tbl)

	mesConnectedAddrs := messenger.ConnectedAddresses()
	sort.Slice(mesConnectedAddrs, func(i, j int) bool {
		return strings.Compare(mesConnectedAddrs[i], mesConnectedAddrs[j]) < 0
	})

	protocolIDString := "Valid protocol ID?"
	log.Info("peers info", "num known peers", len(messenger.Peers()), "num connected peers", len(mesConnectedAddrs))
	headerConnectedAddresses := []string{"Connected peers", protocolIDString}
	connAddresses := make([]*display.LineData, len(mesConnectedAddrs))

	yesMarker := "yes"
	yesMarker = strings.Repeat(" ", (len(protocolIDString)-len(yesMarker))/2) + yesMarker // add padding
	noMarker := "!!! no !!!"
	noMarker = strings.Repeat(" ", (len(protocolIDString)-len(noMarker))/2) + noMarker // add padding
	for idx, address := range mesConnectedAddrs {
		marker := noMarker
		if messenger.HasCompatibleProtocolID(address) {
			marker = yesMarker
		}
		connAddresses[idx] = display.NewLineData(false, []string{address, marker})
	}

	tbl2, _ := display.CreateTableString(headerConnectedAddresses, connAddresses)
	log.Info("\n" + tbl2)
}

func getWorkingDir(log logger.Logger) string {
	workingDir, err := os.Getwd()
	if err != nil {
		log.LogIfError(err)
		workingDir = ""
	}

	log.Trace("working directory", "path", workingDir)

	return workingDir
}

func checkExpectedPeerCount(p2pConfig p2pConfig.P2PConfig) error {
	maxExpectedPeerCount := p2pConfig.Node.MaximumExpectedPeerCount

	var rLimit syscall.Rlimit
	err := syscall.Getrlimit(syscall.RLIMIT_NOFILE, &rLimit)
	if err != nil {
		return fmt.Errorf("%w while getting RLimits", err)
	}

	log.Info("file limits",
		"current", rLimit.Cur,
		"max", rLimit.Max,
		"expected", maxExpectedPeerCount,
	)

	if maxExpectedPeerCount > rLimit.Cur {
		return fmt.Errorf("provided maxExpectedPeerCount is less than the current OS configured value")
	}

	return nil
}

func startRestServices(ctx *cli.Context, marshalizer marshal.Marshalizer) {
	restApiInterface := ctx.GlobalString(restApiInterfaceFlag.Name)
	if restApiInterface != facade.DefaultRestPortOff {
		p2pPrometheusMetricsEnabled := ctx.GlobalBool(p2pPrometheusMetrics.Name)
		go startGinServer(restApiInterface, marshalizer, p2pPrometheusMetricsEnabled)
	} else {
		log.Info("rest api is disabled")
	}
}

func startGinServer(restApiInterface string, marshalizer marshal.Marshalizer, p2pPrometheusMetricsEnabled bool) {
	err := api.Start(restApiInterface, marshalizer, p2pPrometheusMetricsEnabled)
	if err != nil {
		log.LogIfError(err)
	}
}
