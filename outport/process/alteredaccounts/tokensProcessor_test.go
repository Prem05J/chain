package alteredaccounts

import (
	"math/big"
	"testing"

	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data/transaction"
	vmcommon "github.com/TerraDharitri/drt-go-chain-vm-common"
	"github.com/TerraDharitri/drt-go-chain/process/mock"
	"github.com/stretchr/testify/require"
)

func TestTokenProcessorProcessEventWrongNumberOfTopics(t *testing.T) {
	t.Parallel()

	tp := newTokensProcessor(&mock.ShardCoordinatorStub{})

	markedAccounts := make(map[string]*markedAlteredAccount)
	tp.processEvent(&transaction.Event{
		Identifier: []byte(core.BuiltInFunctionMultiDCDTNFTTransfer),
		Address:    []byte("addr"),
		Topics:     [][]byte{[]byte("0"), []byte("1"), []byte("2")},
	}, markedAccounts)

	require.Equal(t, 0, len(markedAccounts))

	tp.processEvent(&transaction.Event{
		Identifier: []byte(core.BuiltInFunctionMultiDCDTNFTTransfer),
		Address:    []byte("addr"),
		Topics:     [][]byte{[]byte("0"), []byte("1"), []byte("2"), []byte("0"), []byte("1")},
	}, markedAccounts)

	require.Equal(t, 0, len(markedAccounts))
}

func TestTokenProcessorProcessEventMultiTransferV2(t *testing.T) {
	t.Parallel()

	tp := newTokensProcessor(&mock.ShardCoordinatorStub{})

	markedAccounts := make(map[string]*markedAlteredAccount)
	tp.processEvent(&transaction.Event{
		Identifier: []byte(core.BuiltInFunctionMultiDCDTNFTTransfer),
		Address:    []byte("addr"),
		Topics:     [][]byte{[]byte("token1"), big.NewInt(0).Bytes(), []byte("2"), []byte("token2"), big.NewInt(1).Bytes(), []byte("3"), []byte("receiver")},
	}, markedAccounts)

	require.Equal(t, 2, len(markedAccounts))
	markedAccount := &markedAlteredAccount{
		tokens: map[string]*markedAlteredAccountToken{
			"token1": {
				identifier: "token1",
				nonce:      0,
			},
			"token2" + string(big.NewInt(1).Bytes()): {
				identifier: "token2",
				nonce:      1,
			},
		},
	}
	require.Equal(t, markedAccount, markedAccounts["addr"])
	require.Equal(t, markedAccount, markedAccounts["receiver"])
}

func TestTokenProcessorProcessEventMultiTransferV2WithREWA(t *testing.T) {
	t.Parallel()

	tp := newTokensProcessor(&mock.ShardCoordinatorStub{})

	markedAccounts := make(map[string]*markedAlteredAccount)
	tp.processEvent(&transaction.Event{
		Identifier: []byte(core.BuiltInFunctionMultiDCDTNFTTransfer),
		Address:    []byte("addr"),
		Topics:     [][]byte{[]byte("token1"), big.NewInt(0).Bytes(), []byte("2"), []byte(vmcommon.REWAIdentifier), big.NewInt(0).Bytes(), []byte("3"), []byte("receiver")},
	}, markedAccounts)

	require.Equal(t, 2, len(markedAccounts))
	markedAccount1 := &markedAlteredAccount{
		tokens: map[string]*markedAlteredAccountToken{
			"token1": {
				identifier: "token1",
				nonce:      0,
			},
		},
	}
	require.Equal(t, markedAccount1, markedAccounts["addr"])

	markedAccount2 := &markedAlteredAccount{
		balanceChanged: true,
		tokens: map[string]*markedAlteredAccountToken{
			"token1": {
				identifier: "token1",
				nonce:      0,
			},
		},
	}
	require.Equal(t, markedAccount2, markedAccounts["receiver"])
}

func TestTokenProcessorProcessEventMultiTransferV2WithREWAAndMoreTokens(t *testing.T) {
	t.Parallel()

	tp := newTokensProcessor(&mock.ShardCoordinatorStub{})

	markedAccounts := make(map[string]*markedAlteredAccount)
	tp.processEvent(&transaction.Event{
		Identifier: []byte(core.BuiltInFunctionMultiDCDTNFTTransfer),
		Address:    []byte("addr"),
		Topics:     [][]byte{[]byte("token1"), big.NewInt(0).Bytes(), []byte("2"), []byte(vmcommon.REWAIdentifier), big.NewInt(0).Bytes(), []byte("3"), []byte("token2"), big.NewInt(0).Bytes(), []byte("2"), []byte("receiver")},
	}, markedAccounts)

	require.Equal(t, 2, len(markedAccounts))
	markedAccount1 := &markedAlteredAccount{
		tokens: map[string]*markedAlteredAccountToken{
			"token1": {
				identifier: "token1",
				nonce:      0,
			},
			"token2": {
				identifier: "token2",
				nonce:      0,
			},
		},
	}
	require.Equal(t, markedAccount1, markedAccounts["addr"])

	markedAccount2 := &markedAlteredAccount{
		balanceChanged: true,
		tokens: map[string]*markedAlteredAccountToken{
			"token1": {
				identifier: "token1",
				nonce:      0,
			},
			"token2": {
				identifier: "token2",
				nonce:      0,
			},
		},
	}
	require.Equal(t, markedAccount2, markedAccounts["receiver"])
}
