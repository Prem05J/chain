package mock

import (
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/process"
	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain-core/data/typeConverters"
	"github.com/TerraDharitri/drt-go-chain-core/hashing"
	"github.com/TerraDharitri/drt-go-chain-core/marshal"
)

// CoreComponentsMock -
type CoreComponentsMock struct {
	IntMarsh                 marshal.Marshalizer
	TxMarsh                  marshal.Marshalizer
	Hash                     hashing.Hasher
	TxSignHasherField        hashing.Hasher
	UInt64ByteSliceConv      typeConverters.Uint64ByteSliceConverter
	AddrPubKeyConv           core.PubkeyConverter
	Chain                    string
	MinTxVersion             uint32
	StatHandler              core.AppStatusHandler
	EnableEpochsHandlerField common.EnableEpochsHandler
	TxVersionCheck           process.TxVersionCheckerHandler
	EconomicsDataField       process.EconomicsDataHandler
}

// EconomicsData -
func (ccm *CoreComponentsMock) EconomicsData() process.EconomicsDataHandler {
	return ccm.EconomicsDataField
}

// InternalMarshalizer -
func (ccm *CoreComponentsMock) InternalMarshalizer() marshal.Marshalizer {
	return ccm.IntMarsh
}

// TxMarshalizer -
func (ccm *CoreComponentsMock) TxMarshalizer() marshal.Marshalizer {
	return ccm.TxMarsh
}

// Hasher -
func (ccm *CoreComponentsMock) Hasher() hashing.Hasher {
	return ccm.Hash
}

// TxSignHasher -
func (ccm *CoreComponentsMock) TxSignHasher() hashing.Hasher {
	return ccm.TxSignHasherField
}

// Uint64ByteSliceConverter -
func (ccm *CoreComponentsMock) Uint64ByteSliceConverter() typeConverters.Uint64ByteSliceConverter {
	return ccm.UInt64ByteSliceConv
}

// AddressPubKeyConverter -
func (ccm *CoreComponentsMock) AddressPubKeyConverter() core.PubkeyConverter {
	return ccm.AddrPubKeyConv
}

// ChainID -
func (ccm *CoreComponentsMock) ChainID() string {
	return ccm.Chain
}

// MinTransactionVersion -
func (ccm *CoreComponentsMock) MinTransactionVersion() uint32 {
	return ccm.MinTxVersion
}

// EnableEpochsHandler -
func (ccm *CoreComponentsMock) EnableEpochsHandler() common.EnableEpochsHandler {
	return ccm.EnableEpochsHandlerField
}

// TxVersionChecker -
func (ccm *CoreComponentsMock) TxVersionChecker() process.TxVersionCheckerHandler {
	return ccm.TxVersionCheck
}

// IsInterfaceNil -
func (ccm *CoreComponentsMock) IsInterfaceNil() bool {
	return ccm == nil
}
