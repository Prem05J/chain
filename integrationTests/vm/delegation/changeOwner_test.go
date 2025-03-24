package delegation

import (
	"math/big"
	"testing"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data/block"
	vmcommon "github.com/TerraDharitri/drt-go-chain-vm-common"
	"github.com/TerraDharitri/drt-go-chain/integrationTests"
	"github.com/TerraDharitri/drt-go-chain/state"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

var (
	firstOwner    = []byte("first-owner-01234567890123456789")
	newOwner      = []byte("changed-owner-012345678901234567")
	randomAddress = []byte("random-0123456789012345678901234")
)

func TestDelegationChangeOwnerOnAccountHandler(t *testing.T) {
	if testing.Short() {
		t.Skip("this is not a short test")
	}

	t.Run("fix flag not activated, should not save - backwards compatibility", func(t *testing.T) {
		_, _, userAccount := testDelegationChangeOwnerOnAccountHandler(t, 1)

		assert.Equal(t, string(firstOwner), string(userAccount.GetOwnerAddress()))
	})
	t.Run("fix flag activated, should save", func(t *testing.T) {
		_, _, userAccount := testDelegationChangeOwnerOnAccountHandler(t, 2)

		assert.Equal(t, string(newOwner), string(userAccount.GetOwnerAddress()))
	})
	t.Run("fix flag activated, should repair a previously faulty call", func(t *testing.T) {
		tpn, scAddress, userAccount := testDelegationChangeOwnerOnAccountHandler(t, 1)

		// test that the address is wrong
		assert.Equal(t, string(firstOwner), string(userAccount.GetOwnerAddress()))

		// activate the fix
		tpn.EpochNotifier.CheckEpoch(&testscommon.HeaderHandlerStub{
			EpochField: 2,
		})

		// call the fix function
		txData := "synchronizeOwner"
		returnedCode, err := processTransaction(tpn, randomAddress, scAddress, txData, big.NewInt(0))
		assert.Nil(t, err)
		assert.Equal(t, vmcommon.Ok, returnedCode)

		// verify the new owner is still the delegator
		verifyDelegatorsStake(t, tpn, "getUserActiveStake", [][]byte{newOwner}, userAccount.AddressBytes(), big.NewInt(2000))

		//get the SC delegation account
		account, err := tpn.AccntState.LoadAccount(scAddress)
		require.Nil(t, err)

		userAccount, ok := account.(state.UserAccountHandler)
		require.True(t, ok)

		// we now have the owner the correct one
		assert.Equal(t, string(newOwner), string(userAccount.GetOwnerAddress()))
	})
}

func testDelegationChangeOwnerOnAccountHandler(t *testing.T, epochToTest uint32) (*integrationTests.TestProcessorNode, []byte, state.UserAccountHandler) {
	cfg := integrationTests.GetDefaultEnableEpochsConfig()
	cfg.FixDelegationChangeOwnerOnAccountEnableEpoch = 2
	tpn := integrationTests.NewTestProcessorNode(
		integrationTests.ArgTestProcessorNode{
			MaxShards:            1,
			NodeShardId:          core.MetachainShardId,
			TxSignPrivKeyShardId: 0,
			EpochsConfig:         cfg,
		})
	tpn.InitDelegationManager()
	maxDelegationCap := big.NewInt(5000)
	serviceFee := big.NewInt(10000) // 10%
	tpn.EpochNotifier.CheckEpoch(&testscommon.HeaderHandlerStub{
		EpochField: epochToTest,
	})
	tpn.BlockchainHook.SetCurrentHeader(&block.MetaBlock{Nonce: 1})

	delegationScAddress := deployNewSc(t, tpn, maxDelegationCap, serviceFee, big.NewInt(2000), firstOwner)
	verifyDelegatorsStake(t, tpn, "getUserActiveStake", [][]byte{firstOwner}, delegationScAddress, big.NewInt(2000))

	changeOwner(t, tpn, firstOwner, newOwner, delegationScAddress)
	verifyDelegatorsStake(t, tpn, "getUserActiveStake", [][]byte{newOwner}, delegationScAddress, big.NewInt(2000))

	//get the SC delegation account
	account, err := tpn.AccntState.LoadAccount(delegationScAddress)
	require.Nil(t, err)

	userAccount, ok := account.(state.UserAccountHandler)
	require.True(t, ok)

	return tpn, delegationScAddress, userAccount
}
