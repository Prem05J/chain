package containers

import "github.com/TerraDharitri/drt-go-chain-core/core/container"

// Insert -
func (rc *resolversContainer) Insert(key string, value interface{}) bool {
	return rc.objects.Insert(key, value)
}

// Objects -
func (rc *resolversContainer) Objects() *container.MutexMap {
	return rc.objects
}

// Insert -
func (rc *requestersContainer) Insert(key string, value interface{}) bool {
	return rc.objects.Insert(key, value)
}

// Objects -
func (rc *requestersContainer) Objects() *container.MutexMap {
	return rc.objects
}
