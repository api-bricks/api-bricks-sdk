package types

type UpdateInvoke struct {
	ExecutionUpdateInvoke InvokeFunction
	BalanceUpdateInvoke   InvokeFunction
	PositionUpdateInvoke  InvokeFunction
}

type SnapshotInvoke struct {
	ExecutionSnapshotInvoke InvokeFunction
	BalanceSnapshotInvoke   InvokeFunction
	PositionSnapshotInvoke  InvokeFunction
	SymbolSnapshotInvoke    InvokeFunction
}

// SystemInvoke just bundles all system invoke functions
type SystemInvoke struct {
	ErrorMessageInvoke InvokeFunction
	ServerInfoInvoke   InvokeFunction
}

// InvokeFunction is a unified function type for all event handlers.
// https://yourbasic.org/golang/function-pointer-type-declaration/
type InvokeFunction func(message *OemlMessage) (err error)
