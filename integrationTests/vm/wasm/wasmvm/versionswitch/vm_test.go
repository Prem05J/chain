package versionswitch

import (
	"testing"

	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/config"
	"github.com/TerraDharitri/drt-go-chain/integrationTests"
	"github.com/TerraDharitri/drt-go-chain/integrationTests/vm"
	"github.com/TerraDharitri/drt-go-chain/integrationTests/vm/wasm/wasmvm"
	"github.com/stretchr/testify/require"
)

func TestSCExecutionWithVMVersionSwitching(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	vmConfig := &config.VirtualMachineConfig{
		WasmVMVersions: []config.WasmVMVersionByEpoch{
			{StartEpoch: 0, Version: "v1.2"},
			{StartEpoch: 1, Version: "v1.2"},
			{StartEpoch: 2, Version: "v1.2"},
			{StartEpoch: 3, Version: "v1.2"},
			{StartEpoch: 4, Version: "v1.2"},
			{StartEpoch: 5, Version: "v1.2"},
			{StartEpoch: 6, Version: "v1.3"},
			{StartEpoch: 7, Version: "v1.2"},
			{StartEpoch: 8, Version: "v1.2"},
			{StartEpoch: 9, Version: "v1.2"},
			{StartEpoch: 10, Version: "v1.3"},
			{StartEpoch: 11, Version: "v1.2"},
			{StartEpoch: 12, Version: "v1.4"},
			{StartEpoch: 13, Version: "v1.3"},
			{StartEpoch: 14, Version: "v1.4"},
			{StartEpoch: 15, Version: "v1.2"},
			{StartEpoch: 16, Version: "v1.4"},
		},
		TransferAndExecuteByUserAddresses: []string{"3132333435363738393031323334353637383930313233343536373839303234"},
	}

	gasSchedule, _ := common.LoadGasScheduleConfig(integrationTests.GasSchedulePath)
	testContext, err := vm.CreateTxProcessorWasmVMWithVMConfig(
		config.EnableEpochs{},
		vmConfig,
		gasSchedule,
	)
	require.Nil(t, err)
	defer testContext.Close()

	_ = wasmvm.SetupERC20Test(testContext, "../../testdata/erc20-c-03/wrc20_wasm.wasm")

	err = wasmvm.RunERC20TransactionSet(testContext)
	require.Nil(t, err)

	for _, versionConfig := range vmConfig.WasmVMVersions {
		testContext.EpochNotifier.CheckEpoch(wasmvm.MakeHeaderHandlerStub(versionConfig.StartEpoch))
		err = wasmvm.RunERC20TransactionSet(testContext)
		require.Nil(t, err)
	}

	err = wasmvm.RunERC20TransactionSet(testContext)
	require.Nil(t, err)
}
