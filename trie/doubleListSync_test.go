package trie

import (
	"bytes"
	"context"
	"fmt"
	"sync"
	"testing"
	"time"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/core/check"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/common/holders"
	"github.com/TerraDharitri/drt-go-chain/storage"
	"github.com/TerraDharitri/drt-go-chain/storage/storageunit"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/enableEpochsHandlerMock"
	"github.com/TerraDharitri/drt-go-chain/testscommon/hashingMocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/marshallerMock"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

var marshalizer = &marshallerMock.MarshalizerMock{}
var hasherMock = &hashingMocks.HasherMock{}

// CreateTrieStorageManager creates the trie storage manager for the tests
func createTrieStorageManager(store storage.Storer) (common.StorageManager, storage.Storer) {
	args := GetDefaultTrieStorageManagerParameters()
	args.MainStorer = store
	tsm, _ := NewTrieStorageManager(args)

	return tsm, store
}

func createInMemoryTrie() (common.Trie, storage.Storer) {
	memUnit := testscommon.CreateMemUnit()
	tsm, _ := createTrieStorageManager(memUnit)
	tr, _ := NewTrie(tsm, marshalizer, hasherMock, &enableEpochsHandlerMock.EnableEpochsHandlerStub{}, 6)

	return tr, memUnit
}

func createInMemoryTrieFromDB(db storage.Persister) (common.Trie, storage.Storer) {
	capacity := uint32(10)
	shards := uint32(1)
	sizeInBytes := uint64(0)
	cache, _ := storageunit.NewCache(storageunit.CacheConfig{Type: storageunit.LRUCache, Capacity: capacity, Shards: shards, SizeInBytes: sizeInBytes})
	unit, _ := storageunit.NewStorageUnit(cache, db)

	tsm, _ := createTrieStorageManager(unit)
	tr, _ := NewTrie(tsm, marshalizer, hasherMock, &enableEpochsHandlerMock.EnableEpochsHandlerStub{}, 6)

	return tr, unit
}

func addDataToTrie(numKeysValues int, tr common.Trie) {
	for i := 0; i < numKeysValues; i++ {
		keyVal := hasherMock.Compute(fmt.Sprintf("%d", i))

		_ = tr.Update(keyVal, keyVal)
	}
}

func createRequesterResolver(completeTrie common.Trie, interceptedNodes storage.Cacher, exceptionHashes [][]byte) RequestHandler {
	return &testscommon.RequestHandlerStub{
		RequestTrieNodesCalled: func(destShardID uint32, hashes [][]byte, topic string) {
			for _, hash := range hashes {
				if hashInList(hash, exceptionHashes) {
					continue
				}

				buff, err := completeTrie.GetSerializedNode(hash)
				if err != nil {
					continue
				}

				var n *InterceptedTrieNode
				n, err = NewInterceptedTrieNode(buff, hasherMock)
				if err != nil {
					continue
				}

				interceptedNodes.Put(hash, n, 0)
			}
		},
	}
}

func hashInList(hash []byte, list [][]byte) bool {
	for _, h := range list {
		if bytes.Equal(h, hash) {
			return true
		}
	}

	return false
}

func TestNewDoubleListTrieSyncer_InvalidParametersShouldErr(t *testing.T) {
	t.Parallel()

	arg := createMockArgument(time.Minute)
	arg.RequestHandler = nil
	d, err := NewDoubleListTrieSyncer(arg)
	assert.True(t, check.IfNil(d))
	assert.Equal(t, ErrNilRequestHandler, err)
}

func TestNewDoubleListTrieSyncer(t *testing.T) {
	t.Parallel()

	arg := createMockArgument(time.Minute)
	d, err := NewDoubleListTrieSyncer(arg)
	assert.False(t, check.IfNil(d))
	assert.Nil(t, err)
}

func TestDoubleListTrieSyncer_StartSyncingNilRootHashShouldReturnNil(t *testing.T) {
	t.Parallel()

	arg := createMockArgument(time.Minute)
	d, _ := NewDoubleListTrieSyncer(arg)
	err := d.StartSyncing(nil, context.Background())

	assert.Nil(t, err)
}

func TestDoubleListTrieSyncer_StartSyncingEmptyRootHashShouldReturnNil(t *testing.T) {
	t.Parallel()

	arg := createMockArgument(time.Minute)
	d, _ := NewDoubleListTrieSyncer(arg)
	err := d.StartSyncing(common.EmptyTrieHash, context.Background())

	assert.Nil(t, err)
}

func TestDoubleListTrieSyncer_StartSyncingNilContextShouldErr(t *testing.T) {
	t.Parallel()

	arg := createMockArgument(time.Minute)
	d, _ := NewDoubleListTrieSyncer(arg)
	err := d.StartSyncing(bytes.Repeat([]byte{1}, len(common.EmptyTrieHash)), nil)

	assert.Equal(t, ErrNilContext, err)
}

func TestDoubleListTrieSyncer_StartSyncingCanTimeout(t *testing.T) {
	numKeysValues := 10
	trSource, _ := createInMemoryTrie()
	addDataToTrie(numKeysValues, trSource)
	_ = trSource.Commit()
	roothash, _ := trSource.RootHash()
	log.Info("source trie", "root hash", roothash)

	arg := createMockArgument(time.Minute)

	d, _ := NewDoubleListTrieSyncer(arg)
	ctx, cancelFunc := context.WithTimeout(context.Background(), time.Second*10)
	defer cancelFunc()

	err := d.StartSyncing(roothash, ctx)
	require.Equal(t, core.ErrContextClosing, err)
}

func TestDoubleListTrieSyncer_StartSyncingTimeoutNoNodesReceived(t *testing.T) {
	numKeysValues := 10
	trSource, _ := createInMemoryTrie()
	addDataToTrie(numKeysValues, trSource)
	_ = trSource.Commit()
	roothash, _ := trSource.RootHash()
	log.Info("source trie", "root hash", roothash)

	arg := createMockArgument(time.Second)

	d, _ := NewDoubleListTrieSyncer(arg)

	err := d.StartSyncing(roothash, context.Background())
	require.Equal(t, ErrTrieSyncTimeout, err)
}

func TestDoubleListTrieSyncer_StartSyncingNewTrieShouldWork(t *testing.T) {
	numKeysValues := 100
	trSource, _ := createInMemoryTrie()
	addDataToTrie(numKeysValues, trSource)
	_ = trSource.Commit()
	roothash, _ := trSource.RootHash()
	log.Info("source trie", "root hash", roothash)

	arg := createMockArgument(time.Minute)
	arg.RequestHandler = createRequesterResolver(trSource, arg.InterceptedNodes, nil)

	d, _ := NewDoubleListTrieSyncer(arg)
	ctx, cancelFunc := context.WithTimeout(context.Background(), time.Second*30)
	defer cancelFunc()

	err := d.StartSyncing(roothash, ctx)
	require.Nil(t, err)

	tsm, _ := arg.DB.(*trieStorageManager)
	db, _ := tsm.mainStorer.(storage.Persister)
	trie, _ := createInMemoryTrieFromDB(db)
	trie, _ = trie.Recreate(holders.NewDefaultRootHashesHolder(roothash))
	require.False(t, check.IfNil(trie))

	var val []byte
	for i := 0; i < numKeysValues; i++ {
		keyVal := hasherMock.Compute(fmt.Sprintf("%d", i))
		val, _, err = trie.Get(keyVal)
		require.Nil(t, err)
		require.Equal(t, keyVal, val)
	}

	assert.Equal(t, uint64(numKeysValues), d.NumLeaves())
	assert.True(t, d.NumTrieNodes() > d.NumLeaves())
	assert.True(t, d.NumBytes() > 0)
	assert.True(t, d.Duration() > 0)

	wg := &sync.WaitGroup{}
	wg.Add(numKeysValues)

	numLeavesOnChan := 0
	go func() {
		for range arg.LeavesChan {
			numLeavesOnChan++
			wg.Done()
		}
	}()

	wg.Wait()

	assert.Equal(t, numKeysValues, numLeavesOnChan)

	log.Info("synced trie",
		"num trie nodes", d.NumTrieNodes(),
		"num leaves", d.NumLeaves(),
		"data size", core.ConvertBytes(d.NumBytes()),
		"duration", d.Duration())
}

func TestDoubleListTrieSyncer_StartSyncingPartiallyFilledTrieShouldWork(t *testing.T) {
	t.Skip("todo: update this test to work with trie sync that only uses the cache and not the DB (get node from cache only)")

	numKeysValues := 100
	trSource, memUnitSource := createInMemoryTrie()
	addDataToTrie(numKeysValues, trSource)
	_ = trSource.Commit()
	roothash, _ := trSource.RootHash()
	log.Info("source trie", "root hash", roothash)

	arg := createMockArgument(time.Minute)

	exceptionHashes := make([][]byte, 0)
	// copy half of the nodes from source to destination, add them also to exception list and then try to sync the trie
	numKeysCopied := 0
	memUnitSource.RangeKeys(func(key []byte, val []byte) bool {
		if numKeysCopied >= numKeysValues/2 {
			return false
		}
		_ = arg.DB.Put(key, val)
		exceptionHashes = append(exceptionHashes, key)
		numKeysCopied++
		return true
	})

	log.Info("exception list has", "num elements", len(exceptionHashes))

	arg.RequestHandler = createRequesterResolver(trSource, arg.InterceptedNodes, exceptionHashes)

	d, _ := NewDoubleListTrieSyncer(arg)
	ctx, cancelFunc := context.WithTimeout(context.Background(), time.Second*30)
	defer cancelFunc()

	err := d.StartSyncing(roothash, ctx)
	require.Nil(t, err)

	tsm, _ := arg.DB.(*trieStorageManager)
	db, _ := tsm.mainStorer.(storage.Persister)
	trie, _ := createInMemoryTrieFromDB(db)
	trie, _ = trie.Recreate(holders.NewDefaultRootHashesHolder(roothash))
	require.False(t, check.IfNil(trie))

	var val []byte
	for i := 0; i < numKeysValues; i++ {
		keyVal := hasherMock.Compute(fmt.Sprintf("%d", i))
		val, _, err = trie.Get(keyVal)
		require.Nil(t, err)
		require.Equal(t, keyVal, val)
	}
}
