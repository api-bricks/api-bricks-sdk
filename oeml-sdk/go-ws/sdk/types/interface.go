package types

type SDK interface {
	OpenConnection() (err error)
	CloseConnection() (err error)
	ResetConnection() (err error)
	//
	LookupSymbolData(exchangeID, baseSymbolCoinApi, quoteSymbolCoinApi string) (symbolData SymbolData, ok bool)
	NewSingleOrderRequest(exchangeId, SymbolIdCoinapi string, clientOrderId string, amountOrder float64, price float64, side OrdSide, orderType OrdType, timeInForce TimeInForce) (req *OrderNewSingleRequest)
	NewCancelSingleOrderRequest(exchangeId, clientOrderId string) (req *OrderCancelSingleRequest)
	NewCancelAllOrdersRequest(exchangeId string) (req *OrderCancelAllRequest)
	//
	PlaceSingleOrder(req *OrderNewSingleRequest) (err error)
	CancelSingleOrder(req *OrderCancelSingleRequest) (err error)
	CancelAllOrders(req *OrderCancelAllRequest) (err error)
	//
	SetSystemInvoke(function SystemInvoke)
	SetSnapshotInvoke(function SnapshotInvoke)
	SetUpdateInvoke(function UpdateInvoke)
	//
	SetExecUpdateInvoke(function InvokeFunction)
	SetExecSnapshotInvoke(function InvokeFunction)
	SetBalanceUpdateInvoke(function InvokeFunction)
	SetBalanceSnapshotInvoke(function InvokeFunction)
	SetPositionUpdateInvoke(function InvokeFunction)
	SetPositionSnapshotInvoke(function InvokeFunction)
}
