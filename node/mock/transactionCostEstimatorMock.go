package mock

import (
	"github.com/TerraDharitri/drt-go-chain-core/data/transaction"
	txSimData "github.com/TerraDharitri/drt-go-chain/process/transactionEvaluator/data"
)

// TransactionCostEstimatorMock  -
type TransactionCostEstimatorMock struct {
	ComputeTransactionGasLimitCalled   func(tx *transaction.Transaction) (*transaction.CostResponse, error)
	SimulateTransactionExecutionCalled func(tx *transaction.Transaction) (*txSimData.SimulationResultsWithVMOutput, error)
}

// ComputeTransactionGasLimit -
func (tcem *TransactionCostEstimatorMock) ComputeTransactionGasLimit(tx *transaction.Transaction) (*transaction.CostResponse, error) {
	if tcem.ComputeTransactionGasLimitCalled != nil {
		return tcem.ComputeTransactionGasLimitCalled(tx)
	}
	return &transaction.CostResponse{}, nil
}

// SimulateTransactionExecution -
func (tcem *TransactionCostEstimatorMock) SimulateTransactionExecution(tx *transaction.Transaction) (*txSimData.SimulationResultsWithVMOutput, error) {
	if tcem.SimulateTransactionExecutionCalled != nil {
		return tcem.SimulateTransactionExecutionCalled(tx)
	}

	return &txSimData.SimulationResultsWithVMOutput{}, nil
}

// IsInterfaceNil -
func (tcem *TransactionCostEstimatorMock) IsInterfaceNil() bool {
	return tcem == nil
}
