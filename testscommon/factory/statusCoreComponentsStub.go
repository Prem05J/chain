package factory

import (
	"github.com/TerraDharitri/drt-go-chain-core/core"
	"github.com/TerraDharitri/drt-go-chain/common"
	"github.com/TerraDharitri/drt-go-chain/factory"
	"github.com/TerraDharitri/drt-go-chain/node/external"
)

// StatusCoreComponentsStub -
type StatusCoreComponentsStub struct {
	ResourceMonitorField         factory.ResourceMonitor
	NetworkStatisticsField       factory.NetworkStatisticsProvider
	TrieSyncStatisticsField      factory.TrieSyncStatisticsProvider
	AppStatusHandlerField        core.AppStatusHandler
	AppStatusHandlerCalled       func() core.AppStatusHandler
	StatusMetricsField           external.StatusMetricsHandler
	PersistentStatusHandlerField factory.PersistentStatusHandler
	StateStatsHandlerField       common.StateStatisticsHandler
}

// Create -
func (stub *StatusCoreComponentsStub) Create() error {
	return nil
}

// Close -
func (stub *StatusCoreComponentsStub) Close() error {
	return nil
}

// CheckSubcomponents -
func (stub *StatusCoreComponentsStub) CheckSubcomponents() error {
	return nil
}

// String -
func (stub *StatusCoreComponentsStub) String() string {
	return ""
}

// ResourceMonitor -
func (stub *StatusCoreComponentsStub) ResourceMonitor() factory.ResourceMonitor {
	return stub.ResourceMonitorField
}

// NetworkStatistics -
func (stub *StatusCoreComponentsStub) NetworkStatistics() factory.NetworkStatisticsProvider {
	return stub.NetworkStatisticsField
}

// TrieSyncStatistics -
func (stub *StatusCoreComponentsStub) TrieSyncStatistics() factory.TrieSyncStatisticsProvider {
	return stub.TrieSyncStatisticsField
}

// AppStatusHandler -
func (stub *StatusCoreComponentsStub) AppStatusHandler() core.AppStatusHandler {
	if stub.AppStatusHandlerCalled != nil {
		return stub.AppStatusHandlerCalled()
	}
	return stub.AppStatusHandlerField
}

// StatusMetrics -
func (stub *StatusCoreComponentsStub) StatusMetrics() external.StatusMetricsHandler {
	return stub.StatusMetricsField
}

// PersistentStatusHandler -
func (stub *StatusCoreComponentsStub) PersistentStatusHandler() factory.PersistentStatusHandler {
	return stub.PersistentStatusHandlerField
}

// StateStatsHandler -
func (stub *StatusCoreComponentsStub) StateStatsHandler() common.StateStatisticsHandler {
	return stub.StateStatsHandlerField
}

// IsInterfaceNil -
func (stub *StatusCoreComponentsStub) IsInterfaceNil() bool {
	return stub == nil
}
