package trie

import (
	"time"

	"github.com/TerraDharitri/drt-go-chain-core/marshal"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/common/statistics"
	"github.com/TerraDharitri/drt-go-chain/config"
	"github.com/TerraDharitri/drt-go-chain/dataRetriever"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/storageManager"
)

func (ts *trieSyncer) trieNodeIntercepted(hash []byte, val interface{}) {
	ts.mutOperation.Lock()
	defer ts.mutOperation.Unlock()

	log.Trace("trie node intercepted", "hash", hash)

	n, ok := ts.nodesForTrie[string(hash)]
	if !ok || n.received {
		return
	}

	interceptedNode, err := trieNode(val, marshalizer, hasherMock)
	if err != nil {
		return
	}

	ts.nodesForTrie[string(hash)] = trieNodeInfo{
		trieNode: interceptedNode,
		received: true,
	}
}

// WaitForOperationToComplete -
func WaitForOperationToComplete(tsm common.StorageManager) {
	for tsm.IsPruningBlocked() {
		time.Sleep(10 * time.Millisecond)
	}
}

// CreateSmallTestTrieAndStorageManager -
func CreateSmallTestTrieAndStorageManager() (*patriciaMerkleTrie, *trieStorageManager) {
	tr, trieStorage := newEmptyTrie()
	_ = tr.Update([]byte("doe"), []byte("reindeer"))
	_ = tr.Update([]byte("dog"), []byte("puppy"))
	_ = tr.Update([]byte("dogglesworth"), []byte("cat"))

	_ = tr.Commit()

	return tr, trieStorage
}

// GetDirtyHashes -
func GetDirtyHashes(tr common.Trie) common.ModifiedHashes {
	hashes, _ := tr.GetAllHashes()
	dirtyHashes := make(common.ModifiedHashes)
	for _, hash := range hashes {
		dirtyHashes[string(hash)] = struct{}{}
	}

	return dirtyHashes
}

// WriteInChanNonBlocking -
func WriteInChanNonBlocking(errChan chan error, err error) {
	select {
	case errChan <- err:
	default:
	}
}

type StorageManagerExtensionStub struct {
	*storageManager.StorageManagerStub
}

// IsBaseTrieStorageManager -
func IsBaseTrieStorageManager(tsm common.StorageManager) bool {
	_, ok := tsm.(*trieStorageManager)
	return ok
}

// IsInEpochTrieStorageManager -
func IsTrieStorageManagerInEpoch(tsm common.StorageManager) bool {
	_, ok := tsm.(*trieStorageManagerInEpoch)
	return ok
}

// NewBaseIterator -
func NewBaseIterator(trie common.Trie) (*baseIterator, error) {
	return newBaseIterator(trie)
}

// GetDefaultTrieStorageManagerParameters -
func GetDefaultTrieStorageManagerParameters() NewTrieStorageManagerArgs {
	generalCfg := config.TrieStorageManagerConfig{
		PruningBufferLen:      1000,
		SnapshotsBufferLen:    10,
		SnapshotsGoroutineNum: 1,
	}

	return NewTrieStorageManagerArgs{
		MainStorer:     testscommon.NewSnapshotPruningStorerMock(),
		Marshalizer:    &marshal.GogoProtoMarshalizer{},
		Hasher:         &testscommon.KeccakMock{},
		GeneralConfig:  generalCfg,
		IdleProvider:   &testscommon.ProcessStatusHandlerStub{},
		Identifier:     dataRetriever.UserAccountsUnit.String(),
		StatsCollector: statistics.NewStateStatistics(),
	}
}
