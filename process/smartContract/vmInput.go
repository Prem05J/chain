package smartContract

import (
	"math/big"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data"
	"github.com/TerraDharitri/drt-go-chain-core/data/smartContractResult"
	"github.com/TerraDharitri/drt-go-chain-core/data/vm"
	vmcommon "github.com/TerraDharitri/drt-go-chain-vm-common"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/process"
)

func (sc *scProcessor) createVMDeployInput(tx data.TransactionHandler) (*vmcommon.ContractCreateInput, []byte, error) {
	deployData, err := sc.argsParser.ParseDeployData(string(tx.GetData()))
	if err != nil {
		return nil, nil, err
	}

	vmCreateInput := &vmcommon.ContractCreateInput{}
	vmCreateInput.ContractCode = deployData.Code
	// when executing SC deploys we should always apply the flags
	codeMetadata := sc.blockChainHook.ApplyFiltersOnSCCodeMetadata(deployData.CodeMetadata)
	vmCreateInput.ContractCodeMetadata = codeMetadata.ToBytes()
	vmCreateInput.VMInput = vmcommon.VMInput{}
	err = sc.initializeVMInputFromTx(&vmCreateInput.VMInput, tx)
	if err != nil {
		return nil, nil, err
	}

	vmCreateInput.VMInput.Arguments = deployData.Arguments

	return vmCreateInput, deployData.VMType, nil
}

func (sc *scProcessor) initializeVMInputFromTx(vmInput *vmcommon.VMInput, tx data.TransactionHandler) error {
	var err error

	vmInput.CallerAddr = tx.GetSndAddr()
	vmInput.CallValue = new(big.Int).Set(tx.GetValue())
	vmInput.GasPrice = tx.GetGasPrice()
	vmInput.GasProvided, err = sc.prepareGasProvided(tx)
	if err != nil {
		return err
	}

	return nil
}

func isSmartContractResult(tx data.TransactionHandler) bool {
	_, isScr := tx.(*smartContractResult.SmartContractResult)
	return isScr
}

func (sc *scProcessor) prepareGasProvided(tx data.TransactionHandler) (uint64, error) {
	if sc.enableEpochsHandler.IsFlagEnabled(common.SCDeployFlag) && isSmartContractResult(tx) {
		return tx.GetGasLimit(), nil
	}

	if sc.shardCoordinator.ComputeId(tx.GetSndAddr()) == core.MetachainShardId {
		return tx.GetGasLimit(), nil
	}

	gasForTxData := sc.economicsFee.ComputeGasLimit(tx)
	if tx.GetGasLimit() < gasForTxData {
		return 0, process.ErrNotEnoughGas
	}

	return tx.GetGasLimit() - gasForTxData, nil
}

func (sc *scProcessor) createVMCallInput(
	tx data.TransactionHandler,
	txHash []byte,
	builtInFuncCall bool,
) (*vmcommon.ContractCallInput, error) {
	callType := determineCallType(tx)
	txData := string(tx.GetData())
	if !builtInFuncCall {
		txData = string(prependLegacyCallbackFunctionNameToTxDataIfAsyncCallBack(tx.GetData(), callType))
	}

	function, arguments, err := sc.argsParser.ParseCallData(txData)
	if err != nil {
		return nil, err
	}

	finalArguments, gasLocked := sc.getAsyncCallGasLockFromTxData(callType, arguments)

	vmCallInput := &vmcommon.ContractCallInput{}
	vmCallInput.VMInput = vmcommon.VMInput{}
	vmCallInput.CallType = callType
	vmCallInput.RecipientAddr = tx.GetRcvAddr()
	vmCallInput.Function = function
	vmCallInput.CurrentTxHash = txHash
	vmCallInput.GasLocked = gasLocked

	gtx, ok := tx.(data.GuardedTransactionHandler)
	if ok {
		vmCallInput.TxGuardian = gtx.GetGuardianAddr()
	}

	scr, isSCR := tx.(*smartContractResult.SmartContractResult)
	if isSCR {
		vmCallInput.OriginalTxHash = scr.GetOriginalTxHash()
		vmCallInput.PrevTxHash = scr.PrevTxHash
	} else {
		vmCallInput.OriginalTxHash = txHash
		vmCallInput.PrevTxHash = txHash
	}

	vmCallInput.ReturnCallAfterError = isSCR && len(scr.ReturnMessage) > 0

	err = sc.initializeVMInputFromTx(&vmCallInput.VMInput, tx)
	if err != nil {
		return nil, err
	}

	vmCallInput.VMInput.Arguments = finalArguments
	if vmCallInput.GasProvided > tx.GetGasLimit() {
		return nil, process.ErrInvalidVMInputGasComputation
	}

	vmCallInput.GasProvided, err = core.SafeSubUint64(vmCallInput.GasProvided, gasLocked)
	if err != nil {
		return nil, err
	}

	return vmCallInput, nil
}

func (sc *scProcessor) getAsyncCallGasLockFromTxData(callType vm.CallType, arguments [][]byte) ([][]byte, uint64) {
	if callType != vm.AsynchronousCall {
		return arguments, 0
	}
	lenArgs := len(arguments)
	if lenArgs == 0 {
		return arguments, 0
	}

	lastArg := arguments[lenArgs-1]
	gasLocked := big.NewInt(0).SetBytes(lastArg).Uint64()

	argsWithoutGasLocked := make([][]byte, lenArgs-1)
	copy(argsWithoutGasLocked, arguments[:lenArgs-1])

	return argsWithoutGasLocked, gasLocked
}

func determineCallType(tx data.TransactionHandler) vm.CallType {
	scr, isSCR := tx.(*smartContractResult.SmartContractResult)
	if isSCR {
		return scr.CallType
	}

	return vm.DirectCall
}

func prependLegacyCallbackFunctionNameToTxDataIfAsyncCallBack(txData []byte, callType vm.CallType) []byte {
	if callType == vm.AsynchronousCallBack {
		return append([]byte("callBack"), txData...)
	}

	return txData
}
