package scToProtocol

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"math"
	"math/big"
	"testing"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data"
	"github.com/TerraDharitri/drt-go-chain-core/data/block"
	"github.com/TerraDharitri/drt-go-chain-core/data/smartContractResult"
	"github.com/TerraDharitri/drt-go-chain-core/data/transaction"
	vmcommon "github.com/TerraDharitri/drt-go-chain-vm-common"
	"github.com/TerraDharitri/drt-go-chain/common"
	commonErrors "github.com/TerraDharitri/drt-go-chain/errors"
	"github.com/TerraDharitri/drt-go-chain/process"
	"github.com/TerraDharitri/drt-go-chain/process/mock"
	"github.com/TerraDharitri/drt-go-chain/state"
	"github.com/TerraDharitri/drt-go-chain/state/accounts"
	"github.com/TerraDharitri/drt-go-chain/state/trackableDataTrie"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/enableEpochsHandlerMock"
	"github.com/TerraDharitri/drt-go-chain/testscommon/hashingMocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/marshallerMock"
	stateMock "github.com/TerraDharitri/drt-go-chain/testscommon/state"
	"github.com/TerraDharitri/drt-go-chain/testscommon/trie"
	"github.com/TerraDharitri/drt-go-chain/vm"
	"github.com/TerraDharitri/drt-go-chain/vm/systemSmartContracts"
	"github.com/stretchr/testify/assert"
)

func createMockArgumentsNewStakingToPeer() ArgStakingToPeer {
	return ArgStakingToPeer{
		PubkeyConv:          testscommon.NewPubkeyConverterMock(32),
		Hasher:              &hashingMocks.HasherMock{},
		Marshalizer:         &mock.MarshalizerStub{},
		PeerState:           &stateMock.AccountsStub{},
		BaseState:           &stateMock.AccountsStub{},
		ArgParser:           &testscommon.ArgumentParserMock{},
		CurrTxs:             &mock.TxForCurrentBlockStub{},
		RatingsData:         &mock.RatingsInfoMock{},
		EnableEpochsHandler: enableEpochsHandlerMock.NewEnableEpochsHandlerStub(common.StakeFlag, common.ValidatorToDelegationFlag),
	}
}

func createBlockBody() *block.Body {
	return &block.Body{
		MiniBlocks: []*block.MiniBlock{
			{
				TxHashes:        [][]byte{[]byte("hash1"), []byte("hash2")},
				ReceiverShardID: core.MetachainShardId,
				SenderShardID:   core.MetachainShardId,
				Type:            block.SmartContractResultBlock,
			},
		},
	}
}

func createStakingScAccount() state.UserAccountHandler {
	dtt, _ := trackableDataTrie.NewTrackableDataTrie(vm.StakingSCAddress, &hashingMocks.HasherMock{}, &marshallerMock.MarshalizerMock{}, enableEpochsHandlerMock.NewEnableEpochsHandlerStub())

	userAcc, _ := accounts.NewUserAccount(vm.StakingSCAddress, dtt, &trie.TrieLeafParserStub{})
	return userAcc
}

func TestNewStakingToPeerNilAddrConverterShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.PubkeyConv = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilPubkeyConverter, err)
}

func TestNewStakingToPeerNilHasherShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.Hasher = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilHasher, err)
}

func TestNewStakingToPeerNilMarshalizerShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.Marshalizer = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilMarshalizer, err)
}

func TestNewStakingToPeerNilPeerAccountAdapterShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.PeerState = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilPeerAccountsAdapter, err)
}

func TestNewStakingToPeerNilBaseAccountAdapterShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.BaseState = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilAccountsAdapter, err)
}

func TestNewStakingToPeerNilArgumentParserShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.ArgParser = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilArgumentParser, err)
}

func TestNewStakingToPeerNilCurrentBlockHeaderShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.CurrTxs = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilTxForCurrentBlockHandler, err)
}

func TestNewStakingToPeerNilEnableEpochsHandlerShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.EnableEpochsHandler = nil

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.Equal(t, process.ErrNilEnableEpochsHandler, err)
}

func TestNewStakingToPeerInvalidEnableEpochsHandlerShouldErr(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.EnableEpochsHandler = enableEpochsHandlerMock.NewEnableEpochsHandlerStubWithNoFlagsDefined()

	stp, err := NewStakingToPeer(arguments)
	assert.Nil(t, stp)
	assert.True(t, errors.Is(err, core.ErrInvalidEnableEpochsHandler))
}

func TestNewStakingToPeer_ShouldWork(t *testing.T) {
	t.Parallel()

	arguments := createMockArgumentsNewStakingToPeer()

	stp, err := NewStakingToPeer(arguments)
	assert.NotNil(t, stp)
	assert.Nil(t, err)
}

func TestStakingToPeer_UpdateProtocolCannotGetTxShouldErr(t *testing.T) {
	t.Parallel()

	called := false
	testError := errors.New("error")
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		called = true
		return nil, testError
	}

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.CurrTxs = currTx
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Nil(t, err)
	assert.True(t, called)
}

func TestStakingToPeer_UpdateProtocolWrongTransactionTypeShouldErr(t *testing.T) {
	t.Parallel()

	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &transaction.Transaction{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.CurrTxs = currTx
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Equal(t, process.ErrWrongTypeAssertion, err)
}

func TestStakingToPeer_UpdateProtocolCannotGetStorageUpdatesShouldErr(t *testing.T) {
	t.Parallel()

	testError := errors.New("error")
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return nil, testError
	}

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Nil(t, err)
}

func TestStakingToPeer_UpdateProtocolRemoveAccountShouldReturnNil(t *testing.T) {
	t.Parallel()

	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: []byte("aabbcc"), Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{}
	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAcc, _ := accounts.NewPeerAccount(address)
		_ = peerAcc.SetRewardAddress([]byte("addr"))
		_ = peerAcc.SetBLSPublicKey([]byte("BlsAddr"))

		return peerAcc, nil
	}
	peerState.RemoveAccountCalled = func(address []byte) error {
		return nil
	}

	marshalizer := &mock.MarshalizerStub{}
	marshalizer.MarshalCalled = func(obj interface{}) (bytes []byte, e error) {
		return []byte("mashalizedData"), nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}

	arguments.BaseState = baseState
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = marshalizer
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Nil(t, err)
}

func TestStakingToPeer_UpdateProtocolCannotSetRewardAddressShouldErr(t *testing.T) {
	t.Parallel()

	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	offset := make([]byte, 0, arguments.PubkeyConv.Len())
	for i := 0; i < arguments.PubkeyConv.Len(); i++ {
		offset = append(offset, 99)
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: offset, Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{}
	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAcc, _ := accounts.NewPeerAccount(address)
		_ = peerAcc.SetRewardAddress([]byte("key"))

		return peerAcc, nil
	}

	stakingData := systemSmartContracts.StakedDataV2_0{
		StakeValue: big.NewInt(100),
	}
	marshalizer := &mock.MarshalizerMock{}

	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}
	retData, _ := json.Marshal(&stakingData)
	_ = userAcc.SaveKeyValue(offset, retData)

	arguments.BaseState = baseState
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = marshalizer
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Equal(t, commonErrors.ErrEmptyAddress, err)
}

func TestStakingToPeer_UpdateProtocolEmptyDataShouldNotAddToTrie(t *testing.T) {
	t.Parallel()

	rwdAddress := []byte("reward address")
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	offset := make([]byte, 0, arguments.PubkeyConv.Len())
	for i := 0; i < arguments.PubkeyConv.Len(); i++ {
		offset = append(offset, 99)
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: offset, Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{}
	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAcc, _ := accounts.NewPeerAccount(address)
		_ = peerAcc.SetRewardAddress(rwdAddress)

		return peerAcc, nil
	}
	peerState.SaveAccountCalled = func(account vmcommon.AccountHandler) error {
		assert.Fail(t, "should have not called save")
		return fmt.Errorf("error")
	}

	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}
	_ = userAcc.SaveKeyValue(offset, nil)

	arguments.BaseState = baseState
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = &mock.MarshalizerStub{
		UnmarshalCalled: func(obj interface{}, buff []byte) error {
			assert.Fail(t, "should have not called unmarshal")
			return fmt.Errorf("error")
		},
	}
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Nil(t, err)
}

func TestStakingToPeer_UpdateProtocolCannotSaveAccountShouldErr(t *testing.T) {
	t.Parallel()

	testError := errors.New("error")
	address := "address"
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	offset := make([]byte, 0, arguments.PubkeyConv.Len())
	for i := 0; i < arguments.PubkeyConv.Len(); i++ {
		offset = append(offset, 99)
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: offset, Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{
		SaveAccountCalled: func(accountHandler vmcommon.AccountHandler) error {
			return testError
		},
	}

	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAccount, _ := accounts.NewPeerAccount(address)
		peerAccount.RewardAddress = address
		return peerAccount, nil
	}

	stakingData := systemSmartContracts.StakedDataV2_0{
		StakeValue:    big.NewInt(100),
		RewardAddress: []byte(address),
	}
	marshalizer := &mock.MarshalizerMock{}

	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}
	retData, _ := json.Marshal(&stakingData)
	_ = userAcc.SaveKeyValue(offset, retData)

	arguments.BaseState = baseState
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = marshalizer
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Equal(t, testError, err)
}

func TestStakingToPeer_UpdateProtocolCannotSaveAccountNonceShouldErr(t *testing.T) {
	t.Parallel()

	testError := errors.New("error")
	address := "address"
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	offset := make([]byte, 0, arguments.PubkeyConv.Len())
	for i := 0; i < arguments.PubkeyConv.Len(); i++ {
		offset = append(offset, 99)
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: offset, Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{
		SaveAccountCalled: func(accountHandler vmcommon.AccountHandler) error {
			return testError
		},
	}
	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAccount, _ := accounts.NewPeerAccount([]byte("1234"))
		peerAccount.BLSPublicKey = address
		peerAccount.Nonce = 1
		return peerAccount, nil
	}

	stakingData := systemSmartContracts.StakedDataV2_0{
		StakeValue:    big.NewInt(100),
		RewardAddress: []byte(address),
	}
	marshalizer := &mock.MarshalizerMock{}

	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}
	retData, _ := json.Marshal(&stakingData)
	_ = userAcc.SaveKeyValue(offset, retData)

	arguments.BaseState = baseState
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = marshalizer
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Equal(t, testError, err)
}

func TestStakingToPeer_UpdateProtocol(t *testing.T) {
	t.Parallel()

	address := "address"
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	offset := make([]byte, 0, arguments.PubkeyConv.Len())
	for i := 0; i < arguments.PubkeyConv.Len(); i++ {
		offset = append(offset, 99)
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: offset, Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{
		SaveAccountCalled: func(accountHandler vmcommon.AccountHandler) error {
			return nil
		},
	}
	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAccount, _ := accounts.NewPeerAccount([]byte("1234"))
		peerAccount.BLSPublicKey = address
		peerAccount.Nonce = 1
		return peerAccount, nil
	}

	stakingData := systemSmartContracts.StakedDataV2_0{
		StakeValue:    big.NewInt(100),
		RewardAddress: []byte(address),
	}
	marshalizer := &mock.MarshalizerMock{}

	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = marshalizer
	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}
	retData, _ := json.Marshal(&stakingData)
	_ = userAcc.SaveKeyValue(offset, retData)

	arguments.BaseState = baseState
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Nil(t, err)
}

func TestStakingToPeer_UpdateProtocolCannotSaveUnStakedNonceShouldErr(t *testing.T) {
	t.Parallel()

	testError := errors.New("error")
	address := "address"
	currTx := &mock.TxForCurrentBlockStub{}
	currTx.GetTxCalled = func(txHash []byte) (handler data.TransactionHandler, e error) {
		return &smartContractResult.SmartContractResult{
			RcvAddr: vm.StakingSCAddress,
		}, nil
	}

	arguments := createMockArgumentsNewStakingToPeer()
	offset := make([]byte, 0, arguments.PubkeyConv.Len())
	for i := 0; i < arguments.PubkeyConv.Len(); i++ {
		offset = append(offset, 99)
	}

	argParser := &testscommon.ArgumentParserMock{}
	argParser.GetStorageUpdatesCalled = func(data string) (updates []*vmcommon.StorageUpdate, e error) {
		return []*vmcommon.StorageUpdate{
			{Offset: offset, Data: []byte("data1")},
		}, nil
	}

	peerState := &stateMock.AccountsStub{
		SaveAccountCalled: func(accountHandler vmcommon.AccountHandler) error {
			return testError
		},
	}
	peerState.LoadAccountCalled = func(address []byte) (handler vmcommon.AccountHandler, e error) {
		peerAccount, _ := accounts.NewPeerAccount([]byte("1234"))
		peerAccount.BLSPublicKey = address
		peerAccount.IndexInList = 1
		return peerAccount, nil
	}

	stakingData := systemSmartContracts.StakedDataV2_0{
		StakeValue:    big.NewInt(100),
		RewardAddress: []byte(address),
	}
	marshalizer := &mock.MarshalizerMock{}

	userAcc := createStakingScAccount()
	baseState := &stateMock.AccountsStub{}
	baseState.LoadAccountCalled = func(address []byte) (vmcommon.AccountHandler, error) {
		return userAcc, nil
	}
	retData, _ := json.Marshal(&stakingData)
	_ = userAcc.SaveKeyValue(offset, retData)

	arguments.BaseState = baseState
	arguments.ArgParser = argParser
	arguments.CurrTxs = currTx
	arguments.PeerState = peerState
	arguments.Marshalizer = marshalizer
	stp, _ := NewStakingToPeer(arguments)

	blockBody := createBlockBody()
	err := stp.UpdateProtocol(blockBody, 0)
	assert.Equal(t, testError, err)
}

func TestStakingToPeer_UpdatePeerState(t *testing.T) {
	t.Parallel()

	blsPubKey := []byte("key")
	peerAccount, _ := accounts.NewPeerAccount(blsPubKey)
	peerAccountsDB := &stateMock.AccountsStub{
		LoadAccountCalled: func(address []byte) (vmcommon.AccountHandler, error) {
			return peerAccount, nil
		},
	}

	enableEpochsHandler := enableEpochsHandlerMock.NewEnableEpochsHandlerStub(common.StakeFlag, common.ValidatorToDelegationFlag)
	arguments := createMockArgumentsNewStakingToPeer()
	arguments.PeerState = peerAccountsDB
	arguments.EnableEpochsHandler = enableEpochsHandler
	stp, _ := NewStakingToPeer(arguments)

	stakingData := systemSmartContracts.StakedDataV2_0{
		RegisterNonce: 0,
		Staked:        false,
		UnStakedNonce: 0,
		UnStakedEpoch: common.DefaultUnstakedEpoch,
		RewardAddress: []byte("rwd"),
		StakeValue:    big.NewInt(0),
		JailedRound:   0,
		JailedNonce:   0,
		UnJailedNonce: 0,
		StakedNonce:   math.MaxUint64,
	}

	nonce := uint64(1)
	err := stp.updatePeerState(stakingData, blsPubKey, nonce)
	assert.Nil(t, err)
	assert.Equal(t, 0, len(peerAccount.GetRewardAddress()))

	stakingData.Staked = true
	stakingData.StakedNonce = nonce
	err = stp.updatePeerState(stakingData, blsPubKey, nonce)
	assert.NoError(t, err)
	assert.True(t, bytes.Equal(blsPubKey, peerAccount.AddressBytes()))
	assert.True(t, bytes.Equal(stakingData.RewardAddress, peerAccount.GetRewardAddress()))
	assert.Equal(t, string(common.NewList), peerAccount.GetList())

	enableEpochsHandler.AddActiveFlags(common.StakingV4StartedFlag)
	err = stp.updatePeerState(stakingData, blsPubKey, nonce)
	assert.NoError(t, err)
	assert.True(t, bytes.Equal(blsPubKey, peerAccount.GetBLSPublicKey()))
	assert.True(t, bytes.Equal(stakingData.RewardAddress, peerAccount.GetRewardAddress()))
	assert.Equal(t, string(common.AuctionList), peerAccount.GetList())
	enableEpochsHandler.RemoveActiveFlags(common.StakingV4StartedFlag)

	stakingData.UnStakedNonce = 11
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnStakedNonce)
	assert.Equal(t, string(common.LeavingList), peerAccount.GetList())

	peerAccount.SetListAndIndex(0, string(common.EligibleList), 5, false)
	stakingData.JailedNonce = 12
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.JailedNonce)
	assert.Equal(t, string(common.LeavingList), peerAccount.GetList())

	// it is still jailed - no change allowed
	stakingData.UnStakedNonce = 13
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnStakedNonce)
	assert.Equal(t, string(common.LeavingList), peerAccount.GetList())

	stakingData.UnJailedNonce = 14
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnJailedNonce)
	assert.Equal(t, string(common.NewList), peerAccount.GetList())

	enableEpochsHandler.AddActiveFlags(common.StakingV4StartedFlag)
	err = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnJailedNonce)
	assert.NoError(t, err)
	assert.Equal(t, string(common.AuctionList), peerAccount.GetList())
	enableEpochsHandler.RemoveActiveFlags(common.StakingV4StartedFlag)

	stakingData.UnStakedNonce = 15
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnStakedNonce)
	assert.Equal(t, string(common.LeavingList), peerAccount.GetList())
}

func TestStakingToPeer_UnJailFromInactive(t *testing.T) {
	t.Parallel()

	blsPubKey := []byte("key")
	peerAccount, _ := accounts.NewPeerAccount(blsPubKey)
	peerAccountsDB := &stateMock.AccountsStub{
		LoadAccountCalled: func(address []byte) (vmcommon.AccountHandler, error) {
			return peerAccount, nil
		},
	}

	arguments := createMockArgumentsNewStakingToPeer()
	arguments.PeerState = peerAccountsDB
	stp, _ := NewStakingToPeer(arguments)
	stp.unJailRating = 500
	stp.jailRating = 10

	stakingData := systemSmartContracts.StakedDataV2_0{
		RegisterNonce: 0,
		Staked:        false,
		UnStakedNonce: 0,
		UnStakedEpoch: common.DefaultUnstakedEpoch,
		RewardAddress: []byte("rwd"),
		StakeValue:    big.NewInt(0),
		JailedRound:   0,
		JailedNonce:   0,
		UnJailedNonce: 0,
		StakedNonce:   math.MaxUint64,
	}

	stakingData.Staked = true
	stakingData.StakedNonce = 1
	err := stp.updatePeerState(stakingData, blsPubKey, stakingData.StakedNonce)
	assert.NoError(t, err)
	assert.True(t, bytes.Equal(blsPubKey, peerAccount.AddressBytes()))
	assert.True(t, bytes.Equal(stakingData.RewardAddress, peerAccount.GetRewardAddress()))
	assert.Equal(t, string(common.NewList), peerAccount.GetList())

	stakingData.UnStakedNonce = 11
	stakingData.Staked = false
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnStakedNonce)
	assert.Equal(t, string(common.LeavingList), peerAccount.GetList())

	peerAccount.SetListAndIndex(0, string(common.JailedList), 5, false)
	stakingData.UnJailedNonce = 14
	_ = stp.updatePeerState(stakingData, blsPubKey, stakingData.UnJailedNonce)
	assert.Equal(t, string(common.InactiveList), peerAccount.GetList())
	assert.Equal(t, stp.unJailRating, peerAccount.GetTempRating())
}
