package sync

import (
	"time"

	"github.com/TerraDharitri/drt-go-chain-core/core/check"
	"github.com/TerraDharitri/drt-go-chain/process"
	"github.com/TerraDharitri/drt-go-chain/update"
)

// GetDataFromStorage searches for data from storage
func GetDataFromStorage(hash []byte, storer update.HistoryStorer) ([]byte, error) {
	if check.IfNil(storer) {
		return nil, update.ErrNilStorage
	}

	currData, err := storer.Get(hash)

	return currData, err
}

// WaitFor waits for the channel to be set or for timeout
func WaitFor(channel chan bool, waitTime time.Duration) error {
	select {
	case <-channel:
		return nil
	case <-time.After(waitTime):
		return process.ErrTimeIsOut
	}
}
