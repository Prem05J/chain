package mock

import "github.com/TerraDharitri/drt-go-chain/process"

// InterceptedDataFactoryStub -
type InterceptedDataFactoryStub struct {
	CreateCalled func(buff []byte) (process.InterceptedData, error)
}

// Create -
func (idfs *InterceptedDataFactoryStub) Create(buff []byte) (process.InterceptedData, error) {
	return idfs.CreateCalled(buff)
}

// IsInterfaceNil -
func (idfs *InterceptedDataFactoryStub) IsInterfaceNil() bool {
	return idfs == nil
}
