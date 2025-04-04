package mock

import (
	"github.com/TerraDharitri/drt-go-chain/dataRetriever"
	"github.com/TerraDharitri/drt-go-chain-core/data"
)

// DataComponentsMock -
type DataComponentsMock struct {
	Storage    dataRetriever.StorageService
	DataPool   dataRetriever.PoolsHolder
	BlockChain data.ChainHandler
}

// StorageService -
func (dcm *DataComponentsMock) StorageService() dataRetriever.StorageService {
	return dcm.Storage
}

// Datapool -
func (dcm *DataComponentsMock) Datapool() dataRetriever.PoolsHolder {
	return dcm.DataPool
}

// Blockchain -
func (dcm *DataComponentsMock) Blockchain() data.ChainHandler {
	return dcm.BlockChain
}

// Clone -
func (dcm *DataComponentsMock) Clone() interface{} {
	return &DataComponentsMock{
		Storage:    dcm.StorageService(),
		DataPool:   dcm.Datapool(),
		BlockChain: dcm.Blockchain(),
	}
}

// IsInterfaceNil -
func (dcm *DataComponentsMock) IsInterfaceNil() bool {
	return dcm == nil
}
