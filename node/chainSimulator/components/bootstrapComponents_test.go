package components

import (
	"testing"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data/typeConverters"
	"github.com/TerraDharitri/drt-go-chain-core/hashing"
	"github.com/TerraDharitri/drt-go-chain-core/marshal"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/config"
	"github.com/TerraDharitri/drt-go-chain/consensus"
	"github.com/TerraDharitri/drt-go-chain/integrationTests/mock"
	"github.com/TerraDharitri/drt-go-chain/process"
	"github.com/TerraDharitri/drt-go-chain/sharding"
	"github.com/TerraDharitri/drt-go-chain/sharding/nodesCoordinator"
	"github.com/TerraDharitri/drt-go-chain/storage"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/cryptoMocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/economicsmocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/enableEpochsHandlerMock"
	"github.com/TerraDharitri/drt-go-chain/testscommon/epochNotifier"
	"github.com/TerraDharitri/drt-go-chain/testscommon/factory"
	"github.com/TerraDharitri/drt-go-chain/testscommon/genesisMocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/p2pmocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/shardingMocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/statusHandler"
	"github.com/stretchr/testify/require"
)

func createArgsBootstrapComponentsHolder() ArgsBootstrapComponentsHolder {
	return ArgsBootstrapComponentsHolder{
		CoreComponents: &factory.CoreComponentsHolderStub{
			ChainIDCalled: func() string {
				return "T"
			},
			GenesisNodesSetupCalled: func() sharding.GenesisNodesSetupHandler {
				return &genesisMocks.NodesSetupStub{}
			},
			InternalMarshalizerCalled: func() marshal.Marshalizer {
				return &testscommon.MarshallerStub{}
			},
			EpochNotifierCalled: func() process.EpochNotifier {
				return &epochNotifier.EpochNotifierStub{}
			},
			EconomicsDataCalled: func() process.EconomicsDataHandler {
				return &economicsmocks.EconomicsHandlerMock{}
			},
			RaterCalled: func() sharding.PeerAccountListAndRatingHandler {
				return &testscommon.RaterMock{}
			},
			NodesShufflerCalled: func() nodesCoordinator.NodesShuffler {
				return &shardingMocks.NodeShufflerMock{}
			},
			RoundHandlerCalled: func() consensus.RoundHandler {
				return &testscommon.RoundHandlerMock{}
			},
			HasherCalled: func() hashing.Hasher {
				return &testscommon.HasherStub{}
			},
			PathHandlerCalled: func() storage.PathManagerHandler {
				return &testscommon.PathManagerStub{}
			},
			TxMarshalizerCalled: func() marshal.Marshalizer {
				return &testscommon.MarshallerStub{}
			},
			AddressPubKeyConverterCalled: func() core.PubkeyConverter {
				return &testscommon.PubkeyConverterStub{}
			},
			Uint64ByteSliceConverterCalled: func() typeConverters.Uint64ByteSliceConverter {
				return &mock.Uint64ByteSliceConverterMock{}
			},
			TxSignHasherCalled: func() hashing.Hasher {
				return &testscommon.HasherStub{}
			},
			EnableEpochsHandlerCalled: func() common.EnableEpochsHandler {
				return &enableEpochsHandlerMock.EnableEpochsHandlerStub{}
			},
		},
		CryptoComponents: &mock.CryptoComponentsStub{
			PubKey:                  &mock.PublicKeyMock{},
			BlockSig:                &cryptoMocks.SingleSignerStub{},
			BlKeyGen:                &cryptoMocks.KeyGenStub{},
			TxSig:                   &cryptoMocks.SingleSignerStub{},
			TxKeyGen:                &cryptoMocks.KeyGenStub{},
			ManagedPeersHolderField: &testscommon.ManagedPeersHolderStub{},
		},
		NetworkComponents: &mock.NetworkComponentsStub{
			Messenger:                        &p2pmocks.MessengerStub{},
			FullArchiveNetworkMessengerField: &p2pmocks.MessengerStub{},
		},
		StatusCoreComponents: &factory.StatusCoreComponentsStub{
			TrieSyncStatisticsField: &testscommon.SizeSyncStatisticsHandlerStub{},
			AppStatusHandlerField:   &statusHandler.AppStatusHandlerStub{},
			StateStatsHandlerField:  &testscommon.StateStatisticsHandlerStub{},
		},
		WorkingDir:     ".",
		FlagsConfig:    config.ContextFlagsConfig{},
		ImportDBConfig: config.ImportDbConfig{},
		PrefsConfig:    config.Preferences{},
		Config: config.Config{
			EpochStartConfig: config.EpochStartConfig{
				MinNumConnectedPeersToStart:       1,
				MinNumOfPeersToConsiderBlockValid: 1,
			},
			TrieSync: config.TrieSyncConfig{
				MaxHardCapForMissingNodes: 1,
				NumConcurrentTrieSyncers:  1,
			},
			GeneralSettings: config.GeneralSettingsConfig{
				SetGuardianEpochsDelay: 1,
			},
			Versions: config.VersionsConfig{
				Cache: config.CacheConfig{
					Type:     "LRU",
					Capacity: 123,
				},
				DefaultVersion: "1",
				VersionsByEpochs: []config.VersionByEpochs{
					{
						StartEpoch: 0,
						Version:    "1",
					},
				},
			},
			WhiteListPool: config.CacheConfig{
				Type:     "LRU",
				Capacity: 123,
			},
		},
		ShardIDStr: "0",
	}
}

func TestCreateBootstrapComponents(t *testing.T) {
	t.Parallel()

	t.Run("should work", func(t *testing.T) {
		t.Parallel()

		comp, err := CreateBootstrapComponents(createArgsBootstrapComponentsHolder())
		require.NoError(t, err)
		require.NotNil(t, comp)

		require.Nil(t, comp.Create())
		require.Nil(t, comp.Close())
	})
	t.Run("NewBootstrapComponentsFactory failure should error", func(t *testing.T) {
		t.Parallel()

		args := createArgsBootstrapComponentsHolder()
		args.StatusCoreComponents = &factory.StatusCoreComponentsStub{}
		comp, err := CreateBootstrapComponents(args)
		require.Error(t, err)
		require.Nil(t, comp)
	})
	t.Run("managedBootstrapCreate failure should error", func(t *testing.T) {
		t.Parallel()

		args := createArgsBootstrapComponentsHolder()
		args.StatusCoreComponents = &factory.StatusCoreComponentsStub{
			TrieSyncStatisticsField: &testscommon.SizeSyncStatisticsHandlerStub{},
			AppStatusHandlerField:   &statusHandler.AppStatusHandlerStub{},
		}
		comp, err := CreateBootstrapComponents(args)
		require.Error(t, err)
		require.Nil(t, comp)
	})
}

func TestBootstrapComponentsHolder_IsInterfaceNil(t *testing.T) {
	t.Parallel()

	var comp *bootstrapComponentsHolder
	require.True(t, comp.IsInterfaceNil())

	comp, _ = CreateBootstrapComponents(createArgsBootstrapComponentsHolder())
	require.False(t, comp.IsInterfaceNil())
	require.Nil(t, comp.Close())
}

func TestBootstrapComponentsHolder_Getters(t *testing.T) {
	t.Parallel()

	comp, err := CreateBootstrapComponents(createArgsBootstrapComponentsHolder())
	require.NoError(t, err)

	require.NotNil(t, comp.EpochStartBootstrapper())
	require.NotNil(t, comp.EpochBootstrapParams())
	require.NotEmpty(t, comp.NodeType())
	require.NotNil(t, comp.ShardCoordinator())
	require.NotNil(t, comp.VersionedHeaderFactory())
	require.NotNil(t, comp.HeaderVersionHandler())
	require.NotNil(t, comp.HeaderIntegrityVerifier())
	require.NotNil(t, comp.GuardedAccountHandler())
	require.NotNil(t, comp.NodesCoordinatorRegistryFactory())
	require.Nil(t, comp.CheckSubcomponents())
	require.Empty(t, comp.String())
	require.Nil(t, comp.Close())
}
