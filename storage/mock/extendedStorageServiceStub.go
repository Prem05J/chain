package mock

import (
	"github.com/TerraDharitri/drt-go-chain/dataRetriever"
	"github.com/TerraDharitri/drt-go-chain/storage"
)

// StorageListProviderStub -
type StorageListProviderStub struct {
	GetAllStorersCalled func() map[dataRetriever.UnitType]storage.Storer
}

// GetAllStorers -
func (slps *StorageListProviderStub) GetAllStorers() map[dataRetriever.UnitType]storage.Storer {
	if slps.GetAllStorersCalled != nil {
		return slps.GetAllStorersCalled()
	}

	return nil
}

// IsInterfaceNil -
func (slps *StorageListProviderStub) IsInterfaceNil() bool {
	return slps == nil
}
