package factory

import (
	"fmt"
	"sync"
	"testing"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain/node/mock"
	"github.com/TerraDharitri/drt-go-chain/node/trieIterators"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	stateMock "github.com/TerraDharitri/drt-go-chain/testscommon/state"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestCreateTotalStakedValueHandler_Disabled(t *testing.T) {
	t.Parallel()

	args := trieIterators.ArgTrieIteratorProcessor{
		ShardID: 0,
	}

	totalStakedValueHandler, err := CreateTotalStakedValueHandler(args)
	require.Nil(t, err)
	assert.Equal(t, "*disabled.stakeValuesProcessor", fmt.Sprintf("%T", totalStakedValueHandler))
}

func TestCreateTotalStakedValueHandler_TotalStakedValueProcessor(t *testing.T) {
	t.Parallel()

	args := trieIterators.ArgTrieIteratorProcessor{
		ShardID: core.MetachainShardId,
		Accounts: &trieIterators.AccountsWrapper{
			Mutex:           &sync.Mutex{},
			AccountsAdapter: &stateMock.AccountsStub{},
		},
		PublicKeyConverter: &testscommon.PubkeyConverterMock{},
		QueryService:       &mock.SCQueryServiceStub{},
	}

	totalStakedValueHandler, err := CreateTotalStakedValueHandler(args)
	require.Nil(t, err)
	assert.Equal(t, "*trieIterators.stakedValuesProcessor", fmt.Sprintf("%T", totalStakedValueHandler))
}
