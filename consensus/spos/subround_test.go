package spos_test

import (
	"context"
	"sync"
	"testing"
	"time"

	"github.com/TerraDharitri/drt-go-chain/consensus/mock"
	"github.com/TerraDharitri/drt-go-chain/consensus/spos"
	"github.com/TerraDharitri/drt-go-chain/consensus/spos/bls"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/TerraDharitri/drt-go-chain/testscommon/cryptoMocks"
	"github.com/TerraDharitri/drt-go-chain/testscommon/statusHandler"
	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/stretchr/testify/assert"
)

var chainID = []byte("chain ID")
var wrongChainID = []byte("wrong chain ID")

const currentPid = core.PeerID("pid")

// executeStoredMessages tries to execute all the messages received which are valid for execution
func executeStoredMessages() {
}

func createEligibleList(size int) []string {
	eligibleList := make([]string, 0)
	for i := 0; i < size; i++ {
		var value string
		for j := 0; j < PublicKeySize; j++ {
			value += string([]byte{byte(i + 65)})
		}

		eligibleList = append(eligibleList, value)
	}

	return eligibleList
}

func initConsensusState() *spos.ConsensusState {
	consensusGroupSize := 9
	eligibleList := createEligibleList(consensusGroupSize)

	eligibleNodesKeys := make(map[string]struct{}, len(eligibleList))
	for _, key := range eligibleList {
		eligibleNodesKeys[key] = struct{}{}
	}

	indexLeader := 1
	rcns, _ := spos.NewRoundConsensus(
		eligibleNodesKeys,
		consensusGroupSize,
		eligibleList[indexLeader],
		&testscommon.KeysHandlerStub{},
	)

	rcns.SetConsensusGroup(eligibleList)
	rcns.ResetRoundState()

	pBFTThreshold := consensusGroupSize*2/3 + 1
	pBFTFallbackThreshold := consensusGroupSize*1/2 + 1

	rthr := spos.NewRoundThreshold()
	rthr.SetThreshold(1, 1)
	rthr.SetThreshold(2, pBFTThreshold)
	rthr.SetThreshold(3, pBFTThreshold)
	rthr.SetThreshold(4, pBFTThreshold)
	rthr.SetThreshold(5, pBFTThreshold)
	rthr.SetFallbackThreshold(1, 1)
	rthr.SetFallbackThreshold(2, pBFTFallbackThreshold)
	rthr.SetFallbackThreshold(3, pBFTFallbackThreshold)
	rthr.SetFallbackThreshold(4, pBFTFallbackThreshold)
	rthr.SetFallbackThreshold(5, pBFTFallbackThreshold)

	rstatus := spos.NewRoundStatus()
	rstatus.ResetRoundStatus()

	cns := spos.NewConsensusState(
		rcns,
		rthr,
		rstatus,
	)

	cns.Data = []byte("X")
	cns.RoundIndex = 0
	return cns
}

func TestSubround_NewSubroundNilConsensusStateShouldFail(t *testing.T) {
	t.Parallel()

	container := mock.InitConsensusCore()
	ch := make(chan bool, 1)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		nil,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Equal(t, spos.ErrNilConsensusState, err)
	assert.Nil(t, sr)
}

func TestSubround_NewSubroundNilChannelShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	container := mock.InitConsensusCore()

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		nil,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Equal(t, spos.ErrNilChannel, err)
	assert.Nil(t, sr)
}

func TestSubround_NewSubroundNilExecuteStoredMessagesShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	container := mock.InitConsensusCore()
	ch := make(chan bool, 1)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		nil,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Equal(t, spos.ErrNilExecuteStoredMessages, err)
	assert.Nil(t, sr)
}

func TestSubround_NewSubroundNilContainerShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		nil,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Equal(t, spos.ErrNilConsensusCore, err)
	assert.Nil(t, sr)
}

func TestSubround_NilContainerBlockchainShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetBlockchain(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilBlockChain, err)
}

func TestSubround_NilContainerBlockprocessorShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetBlockProcessor(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilBlockProcessor, err)
}

func TestSubround_NilContainerBootstrapperShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetBootStrapper(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilBootstrapper, err)
}

func TestSubround_NilContainerChronologyShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetChronology(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilChronologyHandler, err)
}

func TestSubround_NilContainerHasherShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetHasher(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilHasher, err)
}

func TestSubround_NilContainerMarshalizerShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetMarshalizer(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilMarshalizer, err)
}

func TestSubround_NilContainerMultiSignerShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetMultiSignerContainer(cryptoMocks.NewMultiSignerContainerMock(nil))

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilMultiSigner, err)
}

func TestSubround_NilContainerRoundHandlerShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetRoundHandler(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilRoundHandler, err)
}

func TestSubround_NilContainerShardCoordinatorShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetShardCoordinator(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilShardCoordinator, err)
}

func TestSubround_NilContainerSyncTimerShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetSyncTimer(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilSyncTimer, err)
}

func TestSubround_NilContainerValidatorGroupSelectorShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetValidatorGroupSelector(nil)

	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, sr)
	assert.Equal(t, spos.ErrNilNodesCoordinator, err)
}

func TestSubround_EmptyChainIDShouldFail(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		nil,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Equal(t, spos.ErrInvalidChainID, err)
	assert.Nil(t, sr)
}

func TestSubround_NewSubroundShouldWork(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	sr, err := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	assert.Nil(t, err)

	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.NotNil(t, sr)
}

func TestSubround_DoWorkShouldReturnFalseWhenJobFunctionIsNotSet(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = nil
	sr.Check = func() bool {
		return true
	}

	maxTime := time.Now().Add(100 * time.Millisecond)
	roundHandlerMock := &mock.RoundHandlerMock{}
	roundHandlerMock.RemainingTimeCalled = func(time.Time, time.Duration) time.Duration {
		return time.Until(maxTime)
	}

	r := sr.DoWork(context.Background(), roundHandlerMock)

	assert.False(t, r)
}

func TestSubround_DoWorkShouldReturnFalseWhenCheckFunctionIsNotSet(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = nil

	maxTime := time.Now().Add(100 * time.Millisecond)
	roundHandlerMock := &mock.RoundHandlerMock{}
	roundHandlerMock.RemainingTimeCalled = func(time.Time, time.Duration) time.Duration {
		return time.Until(maxTime)
	}

	r := sr.DoWork(context.Background(), roundHandlerMock)
	assert.False(t, r)
}

func TestSubround_DoWorkShouldReturnFalseWhenConsensusIsNotDone(t *testing.T) {
	t.Parallel()

	testDoWork(t, false, false)
}

func TestSubround_DoWorkShouldReturnTrueWhenJobAndConsensusAreDone(t *testing.T) {
	t.Parallel()

	testDoWork(t, true, true)
}

func testDoWork(t *testing.T, checkDone bool, shouldWork bool) {
	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return checkDone
	}

	maxTime := time.Now().Add(100 * time.Millisecond)
	roundHandlerMock := &mock.RoundHandlerMock{}
	roundHandlerMock.RemainingTimeCalled = func(time.Time, time.Duration) time.Duration {
		return time.Until(maxTime)
	}

	r := sr.DoWork(context.Background(), roundHandlerMock)
	assert.Equal(t, shouldWork, r)
}

func TestSubround_DoWorkShouldReturnTrueWhenJobIsDoneAndConsensusIsDoneAfterAWhile(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		-1,
		bls.SrStartRound,
		bls.SrBlock,
		int64(0*roundTimeDuration/100),
		int64(5*roundTimeDuration/100),
		"(START_ROUND)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	var mut sync.RWMutex
	mut.Lock()
	checkSuccess := false
	mut.Unlock()

	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		mut.RLock()
		defer mut.RUnlock()
		return checkSuccess
	}

	maxTime := time.Now().Add(2000 * time.Millisecond)
	roundHandlerMock := &mock.RoundHandlerMock{}
	roundHandlerMock.RemainingTimeCalled = func(time.Time, time.Duration) time.Duration {
		return time.Until(maxTime)
	}

	go func() {
		time.Sleep(1000 * time.Millisecond)

		mut.Lock()
		checkSuccess = true
		mut.Unlock()

		ch <- true
	}()

	r := sr.DoWork(context.Background(), roundHandlerMock)

	assert.True(t, r)
}

func TestSubround_Previous(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		bls.SrStartRound,
		bls.SrBlock,
		bls.SrSignature,
		int64(5*roundTimeDuration/100),
		int64(25*roundTimeDuration/100),
		"(BLOCK)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.Equal(t, bls.SrStartRound, sr.Previous())
}

func TestSubround_Current(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		bls.SrStartRound,
		bls.SrBlock,
		bls.SrSignature,
		int64(5*roundTimeDuration/100),
		int64(25*roundTimeDuration/100),
		"(BLOCK)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.Equal(t, bls.SrBlock, sr.Current())
}

func TestSubround_Next(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		bls.SrStartRound,
		bls.SrBlock,
		bls.SrSignature,
		int64(5*roundTimeDuration/100),
		int64(25*roundTimeDuration/100),
		"(BLOCK)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.Equal(t, bls.SrSignature, sr.Next())
}

func TestSubround_StartTime(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetRoundHandler(initRoundHandlerMock())
	sr, _ := spos.NewSubround(
		bls.SrBlock,
		bls.SrSignature,
		bls.SrEndRound,
		int64(25*roundTimeDuration/100),
		int64(40*roundTimeDuration/100),
		"(SIGNATURE)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.Equal(t, int64(25*roundTimeDuration/100), sr.StartTime())
}

func TestSubround_EndTime(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()
	container.SetRoundHandler(initRoundHandlerMock())
	sr, _ := spos.NewSubround(
		bls.SrStartRound,
		bls.SrBlock,
		bls.SrSignature,
		int64(5*roundTimeDuration/100),
		int64(25*roundTimeDuration/100),
		"(BLOCK)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.Equal(t, int64(25*roundTimeDuration/100), sr.EndTime())
}

func TestSubround_Name(t *testing.T) {
	t.Parallel()

	consensusState := initConsensusState()
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	sr, _ := spos.NewSubround(
		bls.SrStartRound,
		bls.SrBlock,
		bls.SrSignature,
		int64(5*roundTimeDuration/100),
		int64(25*roundTimeDuration/100),
		"(BLOCK)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)
	sr.Job = func(_ context.Context) bool {
		return true
	}
	sr.Check = func() bool {
		return false
	}

	assert.Equal(t, "(BLOCK)", sr.Name())
}

func TestSubround_GetAssociatedPid(t *testing.T) {
	t.Parallel()

	keysHandler := &testscommon.KeysHandlerStub{}
	consensusState := internalInitConsensusStateWithKeysHandler(keysHandler)
	ch := make(chan bool, 1)
	container := mock.InitConsensusCore()

	subround, _ := spos.NewSubround(
		bls.SrStartRound,
		bls.SrBlock,
		bls.SrSignature,
		int64(5*roundTimeDuration/100),
		int64(25*roundTimeDuration/100),
		"(BLOCK)",
		consensusState,
		ch,
		executeStoredMessages,
		container,
		chainID,
		currentPid,
		&statusHandler.AppStatusHandlerStub{},
	)

	wasCalled := false
	pid := core.PeerID("a pid")
	providedPkBytes := []byte("pk bytes")
	keysHandler.GetAssociatedPidCalled = func(pkBytes []byte) core.PeerID {
		assert.Equal(t, providedPkBytes, pkBytes)
		wasCalled = true
		return pid
	}

	assert.Equal(t, pid, subround.GetAssociatedPid(providedPkBytes))
	assert.True(t, wasCalled)
}
