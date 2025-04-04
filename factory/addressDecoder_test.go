package factory_test

import (
	"errors"
	"testing"

	chainError "github.com/TerraDharitri/drt-go-chain/errors"
	"github.com/TerraDharitri/drt-go-chain/factory"
	"github.com/TerraDharitri/drt-go-chain/testscommon"
	"github.com/stretchr/testify/assert"
)

func Test_DecodeAddressesError(t *testing.T) {
	t.Parallel()

	t.Run("nil pkConverter", func(t *testing.T) {
		t.Parallel()

		addresses, err := factory.DecodeAddresses(nil, make([]string, 0))
		assert.Nil(t, addresses)
		assert.Equal(t, chainError.ErrNilPubKeyConverter, err)
	})
	t.Run("decode error", func(t *testing.T) {
		t.Parallel()
		pkError := errors.New("pkerror")
		pkConverter := &testscommon.PubkeyConverterStub{
			DecodeCalled: func(humanReadable string) ([]byte, error) {
				return nil, pkError
			}}

		stringAddresses := []string{"addr1"}
		addresses, err := factory.DecodeAddresses(pkConverter, stringAddresses)
		assert.Nil(t, addresses)
		assert.Equal(t, pkError, err)
	})
}

func Test_DecodeAddressesShouldWork(t *testing.T) {
	t.Parallel()

	decodedAddr1 := []byte("decodedAddr1")
	decodedAddr2 := []byte("decodedAddr2")

	decodeMap := make(map[string][]byte)
	decodeMap["addr1"] = decodedAddr1
	decodeMap["addr2"] = decodedAddr2

	pkConverter := &testscommon.PubkeyConverterStub{
		DecodeCalled: func(humanReadable string) ([]byte, error) {
			return decodeMap[humanReadable], nil
		}}

	stringAddresses := []string{"addr1", "addr2"}
	addresses, err := factory.DecodeAddresses(pkConverter, stringAddresses)
	assert.Nil(t, err)
	assert.Equal(t, 2, len(addresses))
	assert.Equal(t, decodedAddr1, addresses[0])
	assert.Equal(t, decodedAddr2, addresses[1])
}
