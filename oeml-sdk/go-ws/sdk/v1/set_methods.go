package v1

import (
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/types"
)

func (s SDKImpl) SetSystemInvoke(function types.SystemInvoke) {
	errorMessageInvoke = function.ErrorMessageInvoke
	serverInfoInvoke = function.ServerInfoInvoke
}

func (s SDKImpl) SetSnapshotInvoke(function types.SnapshotInvoke) {
	executionSnapshotInvoke = function.ExecutionSnapshotInvoke
	balanceSnapshotInvoke = function.BalanceSnapshotInvoke
	positionSnapshotInvoke = function.PositionSnapshotInvoke
	symbolSnapshotInvoke = function.SymbolSnapshotInvoke
}

func (s SDKImpl) SetUpdateInvoke(function types.UpdateInvoke) {
	executionUpdateInvoke = function.ExecutionUpdateInvoke
	balanceUpdateInvoke = function.BalanceUpdateInvoke
	positionUpdateInvoke = function.PositionUpdateInvoke
}

func (s SDKImpl) SetExecUpdateInvoke(function types.InvokeFunction) {
	executionUpdateInvoke = function
}

func (s SDKImpl) SetExecSnapshotInvoke(function types.InvokeFunction) {
	executionSnapshotInvoke = function
}

func (s SDKImpl) SetBalanceUpdateInvoke(function types.InvokeFunction) {
	balanceUpdateInvoke = function
}

func (s SDKImpl) SetBalanceSnapshotInvoke(function types.InvokeFunction) {
	balanceSnapshotInvoke = function
}

func (s SDKImpl) SetPositionUpdateInvoke(function types.InvokeFunction) {
	positionUpdateInvoke = function
}

func (s SDKImpl) SetPositionSnapshotInvoke(function types.InvokeFunction) {
	positionSnapshotInvoke = function
}
