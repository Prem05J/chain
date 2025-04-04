package txsFee

import (
	"bytes"
	"encoding/hex"
	"math/big"
	"testing"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data/block"
	vmcommon "github.com/TerraDharitri/drt-go-chain-vm-common"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/config"
	"github.com/TerraDharitri/drt-go-chain/integrationTests"
	"github.com/TerraDharitri/drt-go-chain/integrationTests/vm"
	"github.com/TerraDharitri/drt-go-chain/integrationTests/vm/txsFee/utils"
	"github.com/TerraDharitri/drt-go-chain/process"
	"github.com/TerraDharitri/drt-go-chain/sharding"
	"github.com/TerraDharitri/drt-go-chain/state"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/integrationtests"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestBuildInFunctionChangeOwnerCallShouldWorkV1(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	testContext, err := vm.CreatePreparedTxProcessorWithVMs(
		config.EnableEpochs{
			PenalizedTooMuchGasEnableEpoch: integrationTests.UnreachableEpoch,
			SCProcessorV2EnableEpoch:       integrationTests.UnreachableEpoch,
		}, 1)
	require.Nil(t, err)
	defer testContext.Close()

	scAddress, owner := utils.DoDeploy(t, testContext, "../wasm/testdata/counter/output/counter.wasm", 9988100, 11900, 399)
	testContext.TxFeeHandler.CreateBlockStarted(getZeroGasAndFees())
	utils.CleanAccumulatedIntermediateTransactions(t, testContext)

	newOwner := []byte("12345678901234567890123456789112")
	gasLimit := uint64(1000)

	txData := []byte(core.BuiltInFunctionChangeOwnerAddress + "@" + hex.EncodeToString(newOwner))
	tx := vm.CreateTransaction(1, big.NewInt(0), owner, scAddress, gasPrice, gasLimit, txData)
	returnCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Nil(t, err)
	require.Equal(t, vmcommon.Ok, returnCode)

	_, err = testContext.Accounts.Commit()
	require.Nil(t, err)

	utils.CheckOwnerAddr(t, testContext, scAddress, newOwner)

	expectedBalance := big.NewInt(9987250)
	vm.TestAccount(t, testContext.Accounts, owner, 2, expectedBalance)

	// check accumulated fees
	accumulatedFees := testContext.TxFeeHandler.GetAccumulatedFees()
	require.Equal(t, big.NewInt(850), accumulatedFees)

	developerFees := testContext.TxFeeHandler.GetDeveloperFees()
	require.Equal(t, big.NewInt(0), developerFees)
}

func TestBuildInFunctionChangeOwnerCallShouldWork(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	testContext, err := vm.CreatePreparedTxProcessorWithVMs(
		config.EnableEpochs{
			PenalizedTooMuchGasEnableEpoch: integrationTests.UnreachableEpoch,
		}, 1)
	require.Nil(t, err)
	defer testContext.Close()

	scAddress, owner := utils.DoDeploy(t, testContext, "../wasm/testdata/counter/output/counter.wasm", 9988100, 11900, 399)
	testContext.TxFeeHandler.CreateBlockStarted(getZeroGasAndFees())
	utils.CleanAccumulatedIntermediateTransactions(t, testContext)

	newOwner := []byte("12345678901234567890123456789112")
	gasLimit := uint64(1000)

	txData := []byte(core.BuiltInFunctionChangeOwnerAddress + "@" + hex.EncodeToString(newOwner))
	tx := vm.CreateTransaction(1, big.NewInt(0), owner, scAddress, gasPrice, gasLimit, txData)
	returnCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Nil(t, err)
	require.Equal(t, vmcommon.Ok, returnCode)

	_, err = testContext.Accounts.Commit()
	require.Nil(t, err)

	utils.CheckOwnerAddr(t, testContext, scAddress, newOwner)

	expectedBalance := big.NewInt(9978100)
	vm.TestAccount(t, testContext.Accounts, owner, 2, expectedBalance)

	// check accumulated fees
	accumulatedFees := testContext.TxFeeHandler.GetAccumulatedFees()
	require.Equal(t, big.NewInt(10000), accumulatedFees)

	developerFees := testContext.TxFeeHandler.GetDeveloperFees()
	require.Equal(t, big.NewInt(915), developerFees)
}

func TestBuildInFunctionChangeOwnerCallWrongOwnerShouldConsumeGas(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	testContext, err := vm.CreatePreparedTxProcessorWithVMs(config.EnableEpochs{}, 1)
	require.Nil(t, err)
	defer testContext.Close()

	scAddress, initialOwner := utils.DoDeploy(t, testContext, "../wasm/testdata/counter/output/counter.wasm", 9988100, 11900, 399)
	utils.CleanAccumulatedIntermediateTransactions(t, testContext)
	testContext.TxFeeHandler.CreateBlockStarted(getZeroGasAndFees())

	sndAddr := []byte("12345678901234567890123456789113")
	newOwner := []byte("12345678901234567890123456789112")
	gasLimit := uint64(1000)

	_, _ = vm.CreateAccount(testContext.Accounts, sndAddr, 0, big.NewInt(100000))

	txData := []byte(core.BuiltInFunctionChangeOwnerAddress + "@" + hex.EncodeToString(newOwner))
	tx := vm.CreateTransaction(0, big.NewInt(0), sndAddr, scAddress, gasPrice, gasLimit, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Equal(t, vmcommon.UserError, retCode)
	require.Equal(t, process.ErrFailedTransaction, err)

	_, err = testContext.Accounts.Commit()
	require.Nil(t, err)

	utils.CheckOwnerAddr(t, testContext, scAddress, initialOwner)

	expectedBalance := big.NewInt(90000)
	vm.TestAccount(t, testContext.Accounts, sndAddr, 1, expectedBalance)

	// check accumulated fees
	accumulatedFees := testContext.TxFeeHandler.GetAccumulatedFees()
	require.Equal(t, big.NewInt(10000), accumulatedFees)

	developerFees := testContext.TxFeeHandler.GetDeveloperFees()
	require.Equal(t, big.NewInt(0), developerFees)
}

func TestBuildInFunctionChangeOwnerInvalidAddressShouldConsumeGas(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	testContext, err := vm.CreatePreparedTxProcessorWithVMs(config.EnableEpochs{}, 1)
	require.Nil(t, err)
	defer testContext.Close()

	scAddress, owner := utils.DoDeploy(t, testContext, "../wasm/testdata/counter/output/counter.wasm", 9988100, 11900, 399)
	utils.CleanAccumulatedIntermediateTransactions(t, testContext)
	testContext.TxFeeHandler.CreateBlockStarted(getZeroGasAndFees())

	newOwner := []byte("invalidAddress")
	gasLimit := uint64(1000)

	txData := []byte(core.BuiltInFunctionChangeOwnerAddress + "@" + hex.EncodeToString(newOwner))
	tx := vm.CreateTransaction(1, big.NewInt(0), owner, scAddress, gasPrice, gasLimit, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Equal(t, vmcommon.UserError, retCode)
	require.Equal(t, process.ErrFailedTransaction, err)

	_, err = testContext.Accounts.Commit()
	require.Nil(t, err)

	utils.CheckOwnerAddr(t, testContext, scAddress, owner)

	expectedBalance := big.NewInt(9978100)
	vm.TestAccount(t, testContext.Accounts, owner, 2, expectedBalance)

	// check accumulated fees
	accumulatedFees := testContext.TxFeeHandler.GetAccumulatedFees()
	require.Equal(t, big.NewInt(10000), accumulatedFees)

	developerFees := testContext.TxFeeHandler.GetDeveloperFees()
	require.Equal(t, big.NewInt(0), developerFees)
}

func TestBuildInFunctionChangeOwnerCallInsufficientGasLimitShouldNotConsumeGas(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	testContext, err := vm.CreatePreparedTxProcessorWithVMs(config.EnableEpochs{}, 1)
	require.Nil(t, err)
	defer testContext.Close()

	scAddress, owner := utils.DoDeploy(t, testContext, "../wasm/testdata/counter/output/counter.wasm", 9988100, 11900, 399)
	testContext.TxFeeHandler.CreateBlockStarted(getZeroGasAndFees())

	newOwner := []byte("12345678901234567890123456789112")

	_, _ = vm.CreateAccount(testContext.Accounts, owner, 1, big.NewInt(10970))

	txData := []byte(core.BuiltInFunctionChangeOwnerAddress + "@" + hex.EncodeToString(newOwner))
	gasLimit := uint64(len(txData) - 1)

	tx := vm.CreateTransaction(2, big.NewInt(0), owner, scAddress, gasPrice, gasLimit, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Equal(t, vmcommon.UserError, retCode)
	require.Equal(t, process.ErrInsufficientGasLimitInTx, err)

	_, err = testContext.Accounts.Commit()
	require.Nil(t, err)

	utils.CheckOwnerAddr(t, testContext, scAddress, owner)

	expectedBalance := big.NewInt(9999070)
	vm.TestAccount(t, testContext.Accounts, owner, 2, expectedBalance)

	// check accumulated fees
	accumulatedFees := testContext.TxFeeHandler.GetAccumulatedFees()
	require.Equal(t, big.NewInt(0), accumulatedFees)

	developerFees := testContext.TxFeeHandler.GetDeveloperFees()
	require.Equal(t, big.NewInt(0), developerFees)
}

func TestBuildInFunctionChangeOwnerOutOfGasShouldConsumeGas(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	testContext, err := vm.CreatePreparedTxProcessorWithVMs(config.EnableEpochs{}, 1)
	require.Nil(t, err)
	defer testContext.Close()

	scAddress, owner := utils.DoDeploy(t, testContext, "../wasm/testdata/counter/output/counter.wasm", 9988100, 11900, 399)
	utils.CleanAccumulatedIntermediateTransactions(t, testContext)
	testContext.TxFeeHandler.CreateBlockStarted(getZeroGasAndFees())

	newOwner := []byte("12345678901234567890123456789112")

	txData := []byte(core.BuiltInFunctionChangeOwnerAddress + "@" + hex.EncodeToString(newOwner))
	gasLimit := uint64(len(txData) + 1)

	tx := vm.CreateTransaction(1, big.NewInt(0), owner, scAddress, gasPrice, gasLimit, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Equal(t, vmcommon.UserError, retCode)
	require.Equal(t, process.ErrFailedTransaction, err)

	_, err = testContext.Accounts.Commit()
	require.Nil(t, err)

	utils.CheckOwnerAddr(t, testContext, scAddress, owner)

	expectedBalance := big.NewInt(9987260)
	vm.TestAccount(t, testContext.Accounts, owner, 2, expectedBalance)

	// check accumulated fees
	accumulatedFees := testContext.TxFeeHandler.GetAccumulatedFees()
	require.Equal(t, big.NewInt(840), accumulatedFees)

	developerFees := testContext.TxFeeHandler.GetDeveloperFees()
	require.Equal(t, big.NewInt(0), developerFees)
}

func TestBuildInFunctionSaveKeyValue_WrongDestination(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	shardCoord, _ := sharding.NewMultiShardCoordinator(2, 0)

	testContext, err := vm.CreatePreparedTxProcessorWithVMsWithShardCoordinator(
		config.EnableEpochs{
			CleanUpInformativeSCRsEnableEpoch: integrationTests.UnreachableEpoch,
			SCProcessorV2EnableEpoch:          integrationTests.UnreachableEpoch,
		}, shardCoord, 1)
	require.Nil(t, err)
	defer testContext.Close()

	sndAddr := []byte("12345678901234567890123456789112")  // shard 0
	destAddr := []byte("12345678901234567890123456789111") // shard 1
	require.False(t, shardCoord.SameShard(sndAddr, destAddr))

	senderBalance := big.NewInt(100000)
	_, _ = vm.CreateAccount(testContext.Accounts, sndAddr, 0, senderBalance)

	txData := []byte(core.BuiltInFunctionSaveKeyValue + "@01@02")
	gasLimit := uint64(len(txData) + 1)

	tx := vm.CreateTransaction(0, big.NewInt(0), sndAddr, destAddr, gasPrice, gasLimit, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Equal(t, vmcommon.UserError, retCode)
	require.Equal(t, process.ErrFailedTransaction, err)

	intermediateTxs := testContext.GetIntermediateTransactions(t)
	require.True(t, len(intermediateTxs) > 1)

	// defined here for backwards compatibility reasons.
	// Should not reference builtInFunctions.ErrNilSCDestAccount as that might change and this test will still pass.
	requiredData := hex.EncodeToString([]byte("nil destination SC account"))
	require.Equal(t, "@"+requiredData, string(intermediateTxs[0].GetData()))
}

func TestBuildInFunctionSaveKeyValue_NotEnoughGasFor3rdSave(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	shardCoord, _ := sharding.NewMultiShardCoordinator(2, 0)

	testContext, err := vm.CreatePreparedTxProcessorWithVMsWithShardCoordinator(
		config.EnableEpochs{
			BackwardCompSaveKeyValueEnableEpoch: 5,
		}, shardCoord, 1)
	require.Nil(t, err)
	defer testContext.Close()

	sndAddr := []byte("12345678901234567890123456789112")

	senderBalance := big.NewInt(100000)
	_, _ = vm.CreateAccount(testContext.Accounts, sndAddr, 0, senderBalance)

	txData := []byte(core.BuiltInFunctionSaveKeyValue + "@01000000@02000000@03000000@04000000@05000000@06000000")
	gasLimit := uint64(len(txData) + 20)

	tx := vm.CreateTransaction(0, big.NewInt(0), sndAddr, sndAddr, gasPrice, gasLimit, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	require.Equal(t, vmcommon.UserError, retCode)
	require.Equal(t, process.ErrFailedTransaction, err)

	account, _ := testContext.Accounts.LoadAccount(sndAddr)
	userAcc, _ := account.(state.UserAccountHandler)
	require.True(t, bytes.Equal(make([]byte, 32), userAcc.GetRootHash()))
}

func TestBuildInFunctionSaveKeyValue_NotEnoughGasForTheSameKeyValue(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	shardCoord, _ := sharding.NewMultiShardCoordinator(2, 0)

	gasScheduleNotifier := vm.CreateMockGasScheduleNotifier()
	gasScheduleNotifier.GasSchedule[common.BuiltInCost]["SaveKeyValue"] = 100000
	gasScheduleNotifier.GasSchedule[common.BaseOperationCost]["PersistPerByte"] = 1000
	gasScheduleNotifier.GasSchedule[common.BaseOperationCost]["StorePerByte"] = 10000

	testContext, err := vm.CreatePreparedTxProcessorWithVMConfigWithShardCoordinatorDBAndGasAndRoundConfig(
		config.EnableEpochs{
			FixGasRemainingForSaveKeyValueBuiltinFunctionEnableEpoch: 1,
		},
		shardCoord,
		integrationtests.CreateMemUnit(),
		gasScheduleNotifier,
		testscommon.GetDefaultRoundsConfig(),
		vm.CreateVMConfigWithVersion("v1.5"),
		1,
	)
	require.Nil(t, err)
	defer testContext.Close()

	sndAddr := []byte("12345678901234567890123456789112")

	senderBalance := big.NewInt(1000000000)
	_, _ = vm.CreateAccount(testContext.Accounts, sndAddr, 0, senderBalance)

	hexKey := "aa"
	key, err := hex.DecodeString(hexKey)
	require.Nil(t, err)

	hexValue := "bb"
	val, err := hex.DecodeString(hexValue)
	require.Nil(t, err)

	txData := []byte(core.BuiltInFunctionSaveKeyValue + "@" + hexKey + "@" + hexValue)

	minGasLimit := uint64(1)
	txDataGasLimit := uint64(len(txData))
	baseGasLimit := gasScheduleNotifier.GasSchedule[common.BuiltInCost]["SaveKeyValue"]
	persistGasLimit := gasScheduleNotifier.GasSchedule[common.BaseOperationCost]["PersistPerByte"] * uint64(len(key)+len(val))
	saveGasLimitWhenNew := gasScheduleNotifier.GasSchedule[common.BaseOperationCost]["StorePerByte"] * uint64(len(val))
	saveGasLimitWhenExisting := uint64(0)

	nonce := uint64(0)
	gasLimitWhenNew := minGasLimit + txDataGasLimit + baseGasLimit + persistGasLimit + saveGasLimitWhenNew
	tx := vm.CreateTransaction(nonce, big.NewInt(0), sndAddr, sndAddr, gasPrice, gasLimitWhenNew, txData)
	retCode, err := testContext.TxProcessor.ProcessTransaction(tx)
	assert.Nil(t, err)
	assert.Equal(t, vmcommon.Ok, retCode)

	_, _ = testContext.Accounts.Commit()

	account, _ := testContext.Accounts.LoadAccount(sndAddr)
	userAcc, _ := account.(state.UserAccountHandler)
	recoveredValue, _, err := userAcc.RetrieveValue(key)
	assert.Nil(t, err)
	assert.Equal(t, hexValue, hex.EncodeToString(recoveredValue))

	// try to re-execute the same transaction with enough gas, saving is not actually done
	nonce++
	gasLimitWhenExisting := minGasLimit + txDataGasLimit + baseGasLimit + persistGasLimit + saveGasLimitWhenExisting
	tx = vm.CreateTransaction(nonce, big.NewInt(0), sndAddr, sndAddr, gasPrice, gasLimitWhenExisting, txData)
	retCode, err = testContext.TxProcessor.ProcessTransaction(tx)
	assert.Nil(t, err)
	assert.Equal(t, vmcommon.Ok, retCode)

	_, _ = testContext.Accounts.Commit()

	account, _ = testContext.Accounts.LoadAccount(sndAddr)
	userAcc, _ = account.(state.UserAccountHandler)
	recoveredValue, _, err = userAcc.RetrieveValue(key)
	assert.Nil(t, err)
	assert.Equal(t, hexValue, hex.EncodeToString(recoveredValue))

	// try to re-execute the same transaction with insufficient gas, should hard error because the fix is not enabled
	nonce++
	insufficientGas := minGasLimit + txDataGasLimit
	tx = vm.CreateTransaction(nonce, big.NewInt(0), sndAddr, sndAddr, gasPrice, insufficientGas, txData)
	retCode, err = testContext.TxProcessor.ProcessTransaction(tx)
	assert.Nil(t, err)
	assert.Equal(t, vmcommon.ExecutionFailed, retCode)

	testContext.EpochNotifier.CheckEpoch(&block.Header{Epoch: 1})

	// try to re-execute the same transaction with insufficient gas, should error because the fix is enabled
	nonce++
	tx = vm.CreateTransaction(nonce, big.NewInt(0), sndAddr, sndAddr, gasPrice, insufficientGas, txData)
	retCode, err = testContext.TxProcessor.ProcessTransaction(tx)
	assert.Equal(t, process.ErrFailedTransaction, err)
	assert.Equal(t, vmcommon.UserError, retCode)

	// try to re-execute the same transaction with enough gas, saving is not actually done when fix is enabled
	nonce++
	tx = vm.CreateTransaction(nonce, big.NewInt(0), sndAddr, sndAddr, gasPrice, gasLimitWhenExisting, txData)
	retCode, err = testContext.TxProcessor.ProcessTransaction(tx)
	assert.Nil(t, err)
	assert.Equal(t, vmcommon.Ok, retCode)
}
