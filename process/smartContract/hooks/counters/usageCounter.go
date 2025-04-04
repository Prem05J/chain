package counters

import (
	"fmt"
	"sync"

	"github.com/TerraDharitri/drt-go-chain-core/core/check"
	logger "github.com/TerraDharitri/drt-go-chain-logger"
	vmcommon "github.com/TerraDharitri/drt-go-chain-vm-common"
	"github.com/TerraDharitri/drt-go-chain/process"
)

var log = logger.GetOrCreate("process/smartcontract/blockchainhook/counters")

const (
	maxBuiltinCalls = "MaxBuiltInCallsPerTx"
	maxTransfers    = "MaxNumberOfTransfersPerTx"
	maxTrieReads    = "MaxNumberOfTrieReadsPerTx"
	crtBuiltinCalls = "CrtBuiltInCallsPerTx"
	crtTransfers    = "CrtNumberOfTransfersPerTx"
	crtTrieReads    = "CrtNumberOfTrieReadsPerTx"
)

type usageCounter struct {
	mutCounters                     sync.RWMutex
	maxBuiltInCallsPerTx            uint64
	maxNumberOfTransfersPerTx       uint64
	maxNumberOfTrieReadsPerTx       uint64
	crtNumberOfBuiltInFunctionCalls uint64
	crtNumberOfTransfers            uint64
	crtNumberOfTrieReads            uint64

	dcdtTransferParser vmcommon.DCDTTransferParser
}

// NewUsageCounter will create a new instance of type usageCounter
func NewUsageCounter(dcdtTransferParser vmcommon.DCDTTransferParser) (*usageCounter, error) {
	if check.IfNil(dcdtTransferParser) {
		return nil, process.ErrNilDCDTTransferParser
	}

	return &usageCounter{
		dcdtTransferParser: dcdtTransferParser,
	}, nil
}

// ProcessCrtNumberOfTrieReadsCounter will process the counter for the trie reads
// returns error if the reached counter exceeds the maximum provided
func (counter *usageCounter) ProcessCrtNumberOfTrieReadsCounter() error {
	counter.mutCounters.Lock()
	defer counter.mutCounters.Unlock()

	counter.crtNumberOfTrieReads++
	if counter.crtNumberOfTrieReads > counter.maxNumberOfTrieReadsPerTx {
		return fmt.Errorf("%w: too many reads from trie", process.ErrMaxCallsReached)
	}

	return nil
}

// ProcessMaxBuiltInCounters will process the counters for the number of builtin function calls and the number of transfers
// returns error if any of the 2 counters exceed the maximum provided
func (counter *usageCounter) ProcessMaxBuiltInCounters(input *vmcommon.ContractCallInput) error {
	counter.mutCounters.Lock()
	defer counter.mutCounters.Unlock()

	counter.crtNumberOfBuiltInFunctionCalls++
	if counter.crtNumberOfBuiltInFunctionCalls > counter.maxBuiltInCallsPerTx {
		return fmt.Errorf("%w: too many built-in functions calls", process.ErrMaxCallsReached)
	}

	parsedTransfer, errDCDTTransfer := counter.dcdtTransferParser.ParseDCDTTransfers(input.CallerAddr, input.RecipientAddr, input.Function, input.Arguments)
	if errDCDTTransfer != nil {
		// not a transfer - no need to count max transfers
		return nil
	}

	counter.crtNumberOfTransfers += uint64(len(parsedTransfer.DCDTTransfers))
	if counter.crtNumberOfTransfers > counter.maxNumberOfTransfersPerTx {
		return fmt.Errorf("%w: too many DCDT transfers", process.ErrMaxCallsReached)
	}

	return nil
}

// ResetCounters resets the state counters for the blockchain hook
func (counter *usageCounter) ResetCounters() {
	counter.mutCounters.Lock()
	defer counter.mutCounters.Unlock()

	counter.crtNumberOfBuiltInFunctionCalls = 0
	counter.crtNumberOfTransfers = 0
	counter.crtNumberOfTrieReads = 0
}

// SetMaximumValues will set the maximum values that the counters can achieve before errors will be signaled
func (counter *usageCounter) SetMaximumValues(mapsOfValues map[string]uint64) {
	counter.mutCounters.Lock()
	defer counter.mutCounters.Unlock()

	counter.maxBuiltInCallsPerTx = readValue(mapsOfValues, maxBuiltinCalls)
	counter.maxNumberOfTransfersPerTx = readValue(mapsOfValues, maxTransfers)
	counter.maxNumberOfTrieReadsPerTx = readValue(mapsOfValues, maxTrieReads)
}

func readValue(mapsOfValues map[string]uint64, identifier string) uint64 {
	value := mapsOfValues[identifier]
	if value == 0 {
		log.Error("usageCounter found a 0 value in provided mapsOfValues", "identifier", identifier)
	}

	return value
}

// GetCounterValues returns the current counter values
func (counter *usageCounter) GetCounterValues() map[string]uint64 {
	counter.mutCounters.RLock()
	defer counter.mutCounters.RUnlock()

	values := map[string]uint64{
		crtBuiltinCalls: counter.crtNumberOfBuiltInFunctionCalls,
		crtTransfers:    counter.crtNumberOfTransfers,
		crtTrieReads:    counter.crtNumberOfTrieReads,
	}

	return values
}

// IsInterfaceNil returns true if there is no value under the interface
func (counter *usageCounter) IsInterfaceNil() bool {
	return counter == nil
}
