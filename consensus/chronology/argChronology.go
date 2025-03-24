package chronology

import (
	"time"

	"github.com/TerraDharitri/drt-go-chain/consensus"
	"github.com/TerraDharitri/drt-go-chain/ntp"
	"github.com/TerraDharitri/drt-go-chain-core/core"
)

// ArgChronology holds all dependencies required by the chronology component
type ArgChronology struct {
	GenesisTime      time.Time
	RoundHandler     consensus.RoundHandler
	SyncTimer        ntp.SyncTimer
	Watchdog         core.WatchdogTimer
	AppStatusHandler core.AppStatusHandler
}
