package disabled

import "github.com/TerraDharitri/drt-go-chain/state"

type auctionListSelector struct {
}

// NewDisabledAuctionListSelector returns a new instance of a disabled auction list selector
func NewDisabledAuctionListSelector() *auctionListSelector {
	return &auctionListSelector{}
}

// SelectNodesFromAuctionList returns nil
func (als *auctionListSelector) SelectNodesFromAuctionList(state.ShardValidatorsInfoMapHandler, []byte) error {
	return nil
}

// IsInterfaceNil returns true if the underlying pointer is nil
func (als *auctionListSelector) IsInterfaceNil() bool {
	return als == nil
}
