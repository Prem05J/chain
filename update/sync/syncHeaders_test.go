package sync

import (
	"encoding/json"
	"errors"
	"testing"
	"time"

	"github.com/TerraDharitri/drt-go-chain-core/data/block"
	"github.com/TerraDharitri/drt-go-chain/config"
	"github.com/TerraDharitri/drt-go-chain/dataRetriever"
	"github.com/TerraDharitri/drt-go-chain/dataRetriever/dataPool/headersCache"
	"github.com/TerraDharitri/drt-go-chain/process"
	"github.com/TerraDharitri/drt-go-chain/storage"
	"github.com/TerraDharitri/drt-go-chain/storage/database"
	"github.com/TerraDharitri/drt-go-chain/storage/storageunit"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/hashingMocks"
	storageStubs "github.com/TerraDharitri/drt-go-chain/testscommon/storage"
	"github.com/TerraDharitri/drt-go-chain/update"
	"github.com/TerraDharitri/drt-go-chain/update/mock"
	"github.com/stretchr/testify/require"
)

func createMockHeadersSyncHandlerArgs() ArgsNewHeadersSyncHandler {
	return ArgsNewHeadersSyncHandler{
		StorageService:   &storageStubs.ChainStorerStub{},
		Cache:            &mock.HeadersCacherStub{},
		Marshalizer:      &mock.MarshalizerFake{},
		Hasher:           &hashingMocks.HasherMock{},
		EpochHandler:     &mock.EpochStartTriggerStub{},
		RequestHandler:   &testscommon.RequestHandlerStub{},
		Uint64Converter:  &mock.Uint64ByteSliceConverterStub{},
		ShardCoordinator: mock.NewOneShardCoordinatorMock(),
	}
}

func generateTestCache() storage.Cacher {
	cache, _ := storageunit.NewCache(storageunit.CacheConfig{Type: storageunit.LRUCache, Capacity: 1000, Shards: 1, SizeInBytes: 0})
	return cache
}

func generateTestUnit() storage.Storer {
	storer, _ := storageunit.NewStorageUnit(
		generateTestCache(),
		database.NewMemDB(),
	)

	return storer
}

func initStore() *dataRetriever.ChainStorer {
	store := dataRetriever.NewChainStorer()
	store.AddStorer(dataRetriever.TransactionUnit, generateTestUnit())
	store.AddStorer(dataRetriever.MiniBlockUnit, generateTestUnit())
	store.AddStorer(dataRetriever.MetaBlockUnit, generateTestUnit())
	store.AddStorer(dataRetriever.PeerChangesUnit, generateTestUnit())
	store.AddStorer(dataRetriever.BlockHeaderUnit, generateTestUnit())
	store.AddStorer(dataRetriever.ShardHdrNonceHashDataUnit, generateTestUnit())
	store.AddStorer(dataRetriever.MetaHdrNonceHashDataUnit, generateTestUnit())
	store.AddStorer(dataRetriever.ReceiptsUnit, generateTestUnit())
	store.AddStorer(dataRetriever.ScheduledSCRsUnit, generateTestUnit())
	return store
}

func TestHeadersSyncHandler(t *testing.T) {
	t.Parallel()

	args := createMockHeadersSyncHandlerArgs()

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.NotNil(t, headersSyncHandler)
	require.Nil(t, err)
	require.False(t, headersSyncHandler.IsInterfaceNil())
}

func TestHeadersSyncHandler_NilStorageErr(t *testing.T) {
	t.Parallel()

	args := createMockHeadersSyncHandlerArgs()
	args.StorageService = nil

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, headersSyncHandler)
	require.Equal(t, update.ErrNilStorage, err)
}

func TestHeadersSyncHandler_NilCacheErr(t *testing.T) {
	t.Parallel()

	args := createMockHeadersSyncHandlerArgs()
	args.Cache = nil

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, headersSyncHandler)
	require.Equal(t, update.ErrNilCacher, err)
}

func TestHeadersSyncHandler_NilEpochHandlerErr(t *testing.T) {
	t.Parallel()

	args := createMockHeadersSyncHandlerArgs()
	args.EpochHandler = nil

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, headersSyncHandler)
	require.Equal(t, dataRetriever.ErrNilEpochHandler, err)
}

func TestHeadersSyncHandler_NilMarshalizerEr(t *testing.T) {
	t.Parallel()

	args := createMockHeadersSyncHandlerArgs()
	args.Marshalizer = nil

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, headersSyncHandler)
	require.Equal(t, dataRetriever.ErrNilMarshalizer, err)
}

func TestHeadersSyncHandler_NilRequestHandlerEr(t *testing.T) {
	t.Parallel()

	args := createMockHeadersSyncHandlerArgs()
	args.RequestHandler = nil

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, headersSyncHandler)
	require.Equal(t, process.ErrNilRequestHandler, err)
}

func TestSyncEpochStartMetaHeader_MetaBlockInStorage(t *testing.T) {
	t.Parallel()

	meta := &block.MetaBlock{Epoch: 1,
		EpochStart: block.EpochStart{
			LastFinalizedHeaders: []block.EpochStartShardData{
				{ShardID: 0, RootHash: []byte("shardDataRootHash"),
					PendingMiniBlockHeaders: []block.MiniBlockHeader{
						{Hash: []byte("hash")},
					},
				},
			},
		}}
	args := createMockHeadersSyncHandlerArgs()
	args.StorageService = &storageStubs.ChainStorerStub{GetStorerCalled: func(unitType dataRetriever.UnitType) (storage.Storer, error) {
		return &storageStubs.StorerStub{
			GetCalled: func(key []byte) (bytes []byte, err error) {
				return json.Marshal(meta)
			},
		}, nil
	}}

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, err)

	err = headersSyncHandler.syncEpochStartMetaHeader(1, time.Second)
	require.Nil(t, err)

	metaBlock, err := headersSyncHandler.GetEpochStartMetaBlock()
	require.Nil(t, err)
	require.Equal(t, meta, metaBlock)
}

func TestSyncEpochStartMetaHeader_MissingHeaderTimeout(t *testing.T) {
	t.Parallel()

	localErr := errors.New("not found")
	args := createMockHeadersSyncHandlerArgs()
	args.StorageService = &storageStubs.ChainStorerStub{GetStorerCalled: func(unitType dataRetriever.UnitType) (storage.Storer, error) {
		return &storageStubs.StorerStub{
			GetCalled: func(key []byte) (bytes []byte, err error) {
				return nil, localErr
			},
			GetFromEpochCalled: func(key []byte, epoch uint32) (bytes []byte, err error) {
				return nil, localErr
			},
		}, nil
	}}

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, err)

	err = headersSyncHandler.syncEpochStartMetaHeader(1, time.Second)
	require.Equal(t, process.ErrTimeIsOut, err)
}

func TestSyncEpochStartMetaHeader_ReceiveWrongHeaderTimeout(t *testing.T) {
	t.Parallel()

	localErr := errors.New("not found")
	metaHash := []byte("metaHash")
	meta := &block.MetaBlock{Epoch: 1}
	args := createMockHeadersSyncHandlerArgs()
	args.Cache, _ = headersCache.NewHeadersPool(config.HeadersPoolConfig{
		MaxHeadersPerShard:            1000,
		NumElementsToRemoveOnEviction: 1,
	})
	args.EpochHandler = &mock.EpochStartTriggerStub{IsEpochStartCalled: func() bool {
		return true
	}}

	args.StorageService = &storageStubs.ChainStorerStub{GetStorerCalled: func(unitType dataRetriever.UnitType) (storage.Storer, error) {
		return &storageStubs.StorerStub{
			GetCalled: func(key []byte) (bytes []byte, err error) {
				return nil, localErr
			},
			GetFromEpochCalled: func(key []byte, epoch uint32) (bytes []byte, err error) {
				return nil, localErr
			},
		}, nil
	}}

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, err)

	go func() {
		time.Sleep(100 * time.Millisecond)
		headersSyncHandler.metaBlockPool.AddHeader(metaHash, meta)
	}()

	err = headersSyncHandler.syncEpochStartMetaHeader(1, time.Second)
	require.Equal(t, process.ErrTimeIsOut, err)
}

func TestSyncEpochStartMetaHeader_ReceiveHeaderOk(t *testing.T) {
	t.Parallel()

	metaHash := []byte("epochStartBlock_0")
	meta := &block.MetaBlock{Epoch: 1,
		EpochStart: block.EpochStart{
			LastFinalizedHeaders: []block.EpochStartShardData{
				{ShardID: 0, RootHash: []byte("shardDataRootHash"),
					PendingMiniBlockHeaders: []block.MiniBlockHeader{
						{Hash: []byte("hash")},
					},
				},
			},
		}}
	args := createMockHeadersSyncHandlerArgs()
	args.Cache, _ = headersCache.NewHeadersPool(config.HeadersPoolConfig{
		MaxHeadersPerShard:            1000,
		NumElementsToRemoveOnEviction: 1,
	})

	args.EpochHandler = &mock.EpochStartTriggerStub{
		IsEpochStartCalled: func() bool {
			return true
		},
		EpochStartMetaHdrHashCalled: func() []byte {
			return metaHash
		},
	}

	metaBytes, _ := args.Marshalizer.Marshal(meta)
	args.StorageService = &storageStubs.ChainStorerStub{GetStorerCalled: func(unitType dataRetriever.UnitType) (storage.Storer, error) {
		return &storageStubs.StorerStub{
			GetCalled: func(key []byte) (bytes []byte, err error) {
				return metaBytes, nil
			},
			GetFromEpochCalled: func(key []byte, epoch uint32) (bytes []byte, err error) {
				return metaBytes, nil
			},
		}, nil
	}}

	headersSyncHandler, err := NewHeadersSyncHandler(args)
	require.Nil(t, err)

	go func() {
		time.Sleep(100 * time.Millisecond)
		headersSyncHandler.metaBlockPool.AddHeader(metaHash, meta)
	}()

	err = headersSyncHandler.syncEpochStartMetaHeader(1, 2*time.Second)
	require.Nil(t, err)

	metaBlockSync, err := headersSyncHandler.GetEpochStartMetaBlock()
	require.Nil(t, err)
	require.Equal(t, meta, metaBlockSync)
}
