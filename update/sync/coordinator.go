package sync

import (
	"context"
	"fmt"
	"sync"
	"time"

	"github.com/TerraDharitri/drt-go-chain-core/core/check"
	"github.com/TerraDharitri/drt-go-chain-core/data"
	"github.com/TerraDharitri/drt-go-chain-core/data/block"
	logger "github.com/TerraDharitri/drt-go-chain-logger"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/state"
	"github.com/TerraDharitri/drt-go-chain/update"
)

var _ update.StateSyncer = (*syncState)(nil)
var log = logger.GetOrCreate("update/genesis")
var defaultIntervalToPrintStatus = time.Second * 20

type syncState struct {
	syncingEpoch uint32

	headers      update.HeaderSyncHandler
	tries        update.EpochStartTriesSyncHandler
	miniBlocks   update.EpochStartPendingMiniBlocksSyncHandler
	transactions update.TransactionsSyncHandler
}

// ArgsNewSyncState defines the arguments for the new sync state
type ArgsNewSyncState struct {
	Headers      update.HeaderSyncHandler
	Tries        update.EpochStartTriesSyncHandler
	MiniBlocks   update.EpochStartPendingMiniBlocksSyncHandler
	Transactions update.TransactionsSyncHandler
}

// NewSyncState creates a complete syncer which saves the state of the blockchain with pending values as well
func NewSyncState(args ArgsNewSyncState) (*syncState, error) {
	if check.IfNil(args.Headers) {
		return nil, update.ErrNilHeaderSyncHandler
	}
	if check.IfNil(args.Tries) {
		return nil, update.ErrNilTrieSyncers
	}
	if check.IfNil(args.MiniBlocks) {
		return nil, update.ErrNilMiniBlocksSyncHandler
	}
	if check.IfNil(args.Transactions) {
		return nil, update.ErrNilTransactionsSyncHandler
	}

	ss := &syncState{
		tries:        args.Tries,
		miniBlocks:   args.MiniBlocks,
		transactions: args.Transactions,
		headers:      args.Headers,
		syncingEpoch: 0,
	}

	return ss, nil
}

// SyncAllState gets an epoch number and will sync the complete data for that epoch start metablock
func (ss *syncState) SyncAllState(epoch uint32) error {
	ctxDisplay, cancelDisplay := context.WithCancel(context.Background())
	go displayStatusMessage(fmt.Sprintf("syncing un-finished meta headers for epoch %d", epoch), ctxDisplay)
	ss.syncingEpoch = epoch
	err := ss.headers.SyncUnFinishedMetaHeaders(epoch)
	cancelDisplay()
	if err != nil {
		return fmt.Errorf("%w in syncState.SyncAllState - SyncUnFinishedMetaHeaders", err)
	}

	ctxDisplay, cancelDisplay = context.WithCancel(context.Background())
	go displayStatusMessage("getting epoch start metablock", ctxDisplay)
	meta, err := ss.headers.GetEpochStartMetaBlock()
	cancelDisplay()
	if err != nil {
		return fmt.Errorf("%w in syncState.SyncAllState - GetEpochStartMetaBlock for epoch %d", err, epoch)
	}

	ss.printMetablockInfo(meta)

	ctxDisplay, cancelDisplay = context.WithCancel(context.Background())
	go displayStatusMessage("getting un-finished metablocks", ctxDisplay)
	unFinished, err := ss.headers.GetUnFinishedMetaBlocks()
	cancelDisplay()
	if err != nil {
		return fmt.Errorf("%w in syncState.SyncAllState - GetUnFinishedMetaBlocks", err)
	}

	ss.syncingEpoch = meta.GetEpoch()

	wg := sync.WaitGroup{}
	wg.Add(2)

	var errFound error
	mutErr := sync.Mutex{}

	go func() {
		errSync := ss.tries.SyncTriesFrom(meta)
		if errSync != nil {
			mutErr.Lock()
			errFound = fmt.Errorf("%w in syncState.SyncAllState - SyncTriesFrom", errSync)
			mutErr.Unlock()
		}
		wg.Done()
	}()

	go func() {
		defer wg.Done()

		ctxDisplay, cancelDisplay = context.WithCancel(context.Background())
		go displayStatusMessage(fmt.Sprintf("syncing pending miniblocks for epoch %d", epoch), ctxDisplay)
		ctx, cancel := context.WithTimeout(context.Background(), time.Hour)
		errSync := ss.miniBlocks.SyncPendingMiniBlocksFromMeta(meta, unFinished, ctx)
		cancelDisplay()
		cancel()
		if errSync != nil {
			mutErr.Lock()
			errFound = fmt.Errorf("%w in syncState.SyncAllState - SyncPendingMiniBlocksFromMeta", errSync)
			mutErr.Unlock()
			return
		}

		ctxDisplay, cancelDisplay = context.WithCancel(context.Background())
		go displayStatusMessage("getting miniblocks", ctxDisplay)
		syncedMiniBlocks, errGet := ss.miniBlocks.GetMiniBlocks()
		cancelDisplay()
		if errGet != nil {
			mutErr.Lock()
			errFound = fmt.Errorf("%w in syncState.SyncAllState - GetMiniBlocks", errGet)
			mutErr.Unlock()
			return
		}

		ctxDisplay, cancelDisplay = context.WithCancel(context.Background())
		go displayStatusMessage(fmt.Sprintf("syncing pending transactions for epoch %d", epoch), ctxDisplay)
		ctx, cancel = context.WithTimeout(context.Background(), time.Hour)
		errSync = ss.transactions.SyncTransactionsFor(syncedMiniBlocks, ss.syncingEpoch, ctx)
		cancelDisplay()
		cancel()
		if errSync != nil {
			mutErr.Lock()
			errFound = fmt.Errorf("%w in syncState.SyncAllState - SyncTransactionsFor", errSync)
			mutErr.Unlock()
			return
		}
	}()

	// TODO: might think of a way to stop waiting at a signal
	wg.Wait()

	if errFound != nil {
		log.Error("sync data process finished with error", "error", errFound)
	} else {
		log.Info("sync data process finished successfully")
	}

	return errFound
}

func displayStatusMessage(message string, ctx context.Context) {
	log.Info(message, "status", "syncing...please wait")
	for {
		select {
		case <-time.After(defaultIntervalToPrintStatus):
			log.Info(message, "status", "syncing...please wait")

		case <-ctx.Done():
			log.Info(message, "status", "done")
			return
		}
	}
}

func (ss *syncState) printMetablockInfo(metaBlock data.MetaHeaderHandler) {
	log.Info("epoch start meta block",
		"nonce", metaBlock.GetNonce(),
		"round", metaBlock.GetRound(),
		"root hash", metaBlock.GetRootHash(),
		"epoch", metaBlock.GetEpoch(),
	)
	for _, shardInfo := range metaBlock.GetShardInfoHandlers() {
		log.Info("epoch start meta block -> shard info",
			"header hash", shardInfo.GetHeaderHash(),
			"shard ID", shardInfo.GetShardID(),
			"nonce", shardInfo.GetNonce(),
			"round", shardInfo.GetRound(),
		)
	}
}

// GetEpochStartMetaBlock returns the synced metablock
func (ss *syncState) GetEpochStartMetaBlock() (data.MetaHeaderHandler, error) {
	return ss.headers.GetEpochStartMetaBlock()
}

// GetUnFinishedMetaBlocks returns the synced unFinished metablocks
func (ss *syncState) GetUnFinishedMetaBlocks() (map[string]data.MetaHeaderHandler, error) {
	return ss.headers.GetUnFinishedMetaBlocks()
}

// GetAllTries returns the synced tries
func (ss *syncState) GetAllTries() (map[string]common.Trie, error) {
	return ss.tries.GetTries()
}

// GetAllTransactions returns the synced transactions
func (ss *syncState) GetAllTransactions() (map[string]data.TransactionHandler, error) {
	return ss.transactions.GetTransactions()
}

// GetAllValidatorsInfo returns the synced validators info
func (ss *syncState) GetAllValidatorsInfo() (map[string]*state.ShardValidatorInfo, error) {
	return ss.transactions.GetValidatorsInfo()
}

// GetAllMiniBlocks returns the synced miniblocks
func (ss *syncState) GetAllMiniBlocks() (map[string]*block.MiniBlock, error) {
	return ss.miniBlocks.GetMiniBlocks()
}

// IsInterfaceNil returns if underlying objects in nil
func (ss *syncState) IsInterfaceNil() bool {
	return ss == nil
}
