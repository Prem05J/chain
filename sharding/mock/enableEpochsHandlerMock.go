package mock

import (
	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain/common"
)

// EnableEpochsHandlerMock -
type EnableEpochsHandlerMock struct {
	RefactorPeersMiniBlocksEnableEpochField   uint32
	IsRefactorPeersMiniBlocksFlagEnabledField bool
	CurrentEpoch                              uint32
}

// GetActivationEpoch -
func (mock *EnableEpochsHandlerMock) GetActivationEpoch(flag core.EnableEpochFlag) uint32 {
	switch flag {
	case common.RefactorPeersMiniBlocksFlag:
		return mock.RefactorPeersMiniBlocksEnableEpochField

	default:
		return 0
	}
}

// IsFlagDefined returns true
func (mock *EnableEpochsHandlerMock) IsFlagDefined(_ core.EnableEpochFlag) bool {
	return true
}

// IsFlagEnabled returns true
func (mock *EnableEpochsHandlerMock) IsFlagEnabled(_ core.EnableEpochFlag) bool {
	return true
}

// IsFlagEnabledInEpoch returns true
func (mock *EnableEpochsHandlerMock) IsFlagEnabledInEpoch(_ core.EnableEpochFlag, _ uint32) bool {
	return true
}

// GetCurrentEpoch -
func (mock *EnableEpochsHandlerMock) GetCurrentEpoch() uint32 {
	return mock.CurrentEpoch
}

// IsInterfaceNil returns true if there is no value under the interface
func (mock *EnableEpochsHandlerMock) IsInterfaceNil() bool {
	return mock == nil
}
