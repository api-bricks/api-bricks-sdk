package main

import (
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk"
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/types"
	"log"
	"time"
)

// kubectl port-forward svc/oeml-api-composite 8080:80
// websocat -s 8080
const (
	url           = "ws://127.0.0.1:8080"
	wait          = 5
	websocat      = false
	verbose       = false
	exchangeID    = "BINANCE"
	clientOrderID = "BINANCE-7d8a-4888"
)

func main() {
	sdk := getSDK(url)
	TestSymbolLookup(sdk)

	TestPlaceSingleOrder(sdk)
	time.Sleep(wait * time.Second)

	TestCancelSingleOrder(sdk)
	time.Sleep(wait * time.Second)

	TestCancelAll(sdk)
	time.Sleep(wait * time.Second)

	TestCancelSingleOrderError(sdk)
	time.Sleep(wait * time.Second)

	TestCancelAllError(sdk)
	time.Sleep(wait * time.Second)

	CloseSocket(sdk)
}

func getSDK(url string) (oemlSDK types.SDK) {
	println(" * NewSDK!")
	oemlSDK = sdk.NewOemlSDK(url, types.Version(1))

	println(" * SetSysInvoke!")
	sysInvoke := GetSysInvoke()
	oemlSDK.SetSystemInvoke(sysInvoke)

	println(" * SetSysSnapshotInvoke!")
	snapInvoke := GetSnapshotInvoke()
	oemlSDK.SetSnapshotInvoke(snapInvoke)

	println(" * SetSysSnapshotInvoke!")
	updInvoke := GetUpdateInvoke()
	oemlSDK.SetUpdateInvoke(updInvoke)

	return oemlSDK
}

func TestSymbolLookup(sdk types.SDK) {

	if websocat {
		return // cannot test symbol lookup against mock socket
	}
	time.Sleep(1 * time.Second)

	printHeader(" * Lookup symbol!")
	// https://www.binance.com/en/trade/ATOM_BUSD?theme=dark&type=spot
	baseID := "ATOM"
	quoteID := "BUSD"
	printSymbol(sdk, exchangeID, baseID, quoteID)
	time.Sleep(1 * time.Second)

	// https://www.binance.com/en/trade/BTC_USDT?theme=dark&type=spot
	baseID = "BTC"
	quoteID = "USDT"
	printSymbol(sdk, exchangeID, baseID, quoteID)

	time.Sleep(1 * time.Second)
}

func TestPlaceSingleOrder(sdk types.SDK) {

	printHeader(" * Lookup order symbol!")

	var symbolIdCoinApi string
	if websocat {
		// cannot lookup symbol on mock web socket
		symbolIdCoinApi = "BINANCE_SPOT_BTC_USDT"
	} else {
		baseID := "BTC"
		quoteID := "USDT"
		symbolData, _ := sdk.LookupSymbolData(exchangeID, baseID, quoteID)
		symbolIdCoinApi = *symbolData.Symbol_id_coinapi
	}

	printHeader(" Symbol: " + symbolIdCoinApi)

	printHeader(" * Construct order request!")
	amountOrder := 0.045
	price := 0.0783
	orderSide := types.BUY
	orderType := types.LIMIT
	timeInForce := types.GOOD_TILL_CANCEL
	reqOrder := sdk.NewSingleOrderRequest(exchangeID, symbolIdCoinApi, clientOrderID, amountOrder, price, orderSide, orderType, timeInForce)
	b, _ := reqOrder.MarshalJSON()
	println(string(b))

	printHeader("Place single order!")
	err := sdk.PlaceSingleOrder(reqOrder)
	logError(err)
	time.Sleep(wait * time.Second)
}

func TestCancelSingleOrder(sdk types.SDK) {
	printHeader(" * Construct cancel request!")
	reqCancel := sdk.NewCancelSingleOrderRequest(exchangeID, clientOrderID)
	b, _ := reqCancel.MarshalJSON()
	println(string(b))

	printHeader(" * Cancel order!")
	err := sdk.CancelSingleOrder(reqCancel)
	logError(err)
	time.Sleep(wait * time.Second)
}

func TestCancelAll(sdk types.SDK) {
	time.Sleep(1 * time.Second)

	printHeader(" * Construct cancel all request!")
	reqCancelAll := sdk.NewCancelAllOrdersRequest(exchangeID)
	b, _ := reqCancelAll.MarshalJSON()
	println(string(b))

	printHeader("Cancel all orders!")
	err := sdk.CancelAllOrders(reqCancelAll)
	logError(err)
	time.Sleep(wait * time.Second)
}

func TestCancelSingleOrderError(sdk types.SDK) {
	printHeader(" * Construct cancel request!")
	reqCancel := sdk.NewCancelSingleOrderRequest(exchangeID, "Not-An-Order-ID")
	b, _ := reqCancel.MarshalJSON()
	println(string(b))

	printHeader(" * Cancel order!")
	err := sdk.CancelSingleOrder(reqCancel)
	logError(err)
	time.Sleep(wait * time.Second)
}

func TestCancelAllError(sdk types.SDK) {
	time.Sleep(1 * time.Second)

	printHeader(" * Construct broken cancel request to trigger  MESSAGE_REJECT!")
	reqCancelAll := sdk.NewCancelAllOrdersRequest("Not-An-Exchange")
	b, _ := reqCancelAll.MarshalJSON()
	println(string(b))

	printHeader("Send broken broken cancel requests!")
	err := sdk.CancelAllOrders(reqCancelAll)
	logError(err)
	time.Sleep(wait * time.Second)
}

func CloseSocket(sdk types.SDK) {
	println(" * Close websocket!")
	if websocat {
		return // Don't  close connection of a local mock socket
	}
	println()
	println(" * CloseConnection!")
	_ = sdk.CloseConnection()
	println("Goodbye!")
}

func logError(err error) {
	if err != nil {
		log.Println(err)
	}
}

func printHeader(msg string) {
	println()
	println("=====================")
	println(msg)
	println("=====================")
	println()
}

func printSymbol(sdk types.SDK, exchangeID, baseID, quoteID string) {
	println("")
	println("Lookup symbol for: " + baseID + "/" + quoteID)
	symbol, ok := sdk.LookupSymbolData(exchangeID, baseID, quoteID)
	if ok {
		println(symbol.String())
	}
	println("")

}

func GetSnapshotInvoke() (snapInv types.SnapshotInvoke) {
	snapInv = types.SnapshotInvoke{
		ExecutionSnapshotInvoke: GetInvokeFunction(types.ORDER_EXEC_REPORT_SNAPSHOT),
		BalanceSnapshotInvoke:   GetInvokeFunction(types.BALANCE_SNAPSHOT),
		PositionSnapshotInvoke:  GetInvokeFunction(types.POSITION_SNAPSHOT),
		SymbolSnapshotInvoke:    GetInvokeFunction(types.SYMBOLS_SNAPSHOT),
	}
	return snapInv
}

func GetUpdateInvoke() (updInv types.UpdateInvoke) {
	updInv = types.UpdateInvoke{
		ExecutionUpdateInvoke: GetInvokeFunction(types.ORDER_EXEC_REPORT_UPDATE),
		BalanceUpdateInvoke:   GetInvokeFunction(types.BALANCE_UPDATE),
		PositionUpdateInvoke:  GetInvokeFunction(types.POSITION_UPDATE),
	}
	return updInv
}

func GetSysInvoke() (sysInv types.SystemInvoke) {
	sysInv = types.SystemInvoke{
		ErrorMessageInvoke: GetErrorInvoke(),
		ServerInfoInvoke:   GetInvokeFunction(types.SERVER_INFO),
	}
	return sysInv
}

func GetErrorInvoke() types.InvokeFunction {
	// You need to be prepared to receive an error message from us when you send something wrong;
	// all errors are permanent and you should expect that the underlying
	// WebSocket connection will be closed by us after sending an error message.
	// Good practice is to store all error messages somewhere for further manual review.
	// https://docs.coinapi.io/#error-handling
	return func(message *types.OemlMessage) (err error) {
		mtd := "ErrorHandler: "
		println(mtd)
		// RejectMessage is used to communicate rejection of user order request.
		// https://docs.coinapi.io/oeml.html#message_reject-in
		msg := message.MessageReject
		log.Println("RejectMessage")
		log.Println("Reject_reason: ", msg.GetRejectReason())
		log.Println("Exchange_id: ", msg.GetExchangeId())
		log.Println("Message: ", msg.GetMessage())
		log.Println("RejectedMessage: ", msg.GetRejectedMessage())

		return nil
	}
}

func GetInvokeFunction(msgType types.MessageType) types.InvokeFunction {
	return func(message *types.OemlMessage) (err error) {
		printMessage(msgType, message)
		return nil
	}
}

func printMessage(msgType types.MessageType, message *types.OemlMessage) {
	switch msgType {
	case types.SERVER_INFO:
		//log.Println("ServerInfo/Heartbeat: " + *message.ServerInfo.ExchangeId)
		if verbose {
			msg := message
			log.Println(msg.ServerInfo)
			println()
		}

	case types.ORDER_EXEC_REPORT_SNAPSHOT:
		log.Println("OrderExecutionReportSnapshot: " + message.OrderExecutionReportSnapshot.ExchangeId)
		if verbose {
			msg := message
			log.Println(msg.OrderExecutionReportSnapshot)
			println()
		}

	case types.ORDER_EXEC_REPORT_UPDATE:
		log.Println("OrderExecutionReportUpdate")
		msg := message
		log.Println(msg.OrderExecutionReportUpdate)
		println()
	case types.BALANCE_SNAPSHOT:
		msg := message
		if verbose {
			log.Println("BalanceSnapshot" + *message.BalanceSnapshot.ExchangeId)
			log.Println(msg.BalanceSnapshot)
			println()
		}
	case types.BALANCE_UPDATE:
		msg := message
		log.Println("BalanceUpdate")
		log.Println(msg.BalanceUpdate.String())
		println()

	case types.POSITION_SNAPSHOT:
		log.Println("PositionSnapshot: " + *message.PositionSnapshot.ExchangeId)
		if verbose {
			msg := message
			log.Println(msg.PositionSnapshot)
			println()
		}
	case types.POSITION_UPDATE:
		log.Println("PositionUpdate")
		msg := message
		log.Println(msg.PositionUpdate)
		println()
	case types.SYMBOLS_SNAPSHOT:
		log.Println("SymbolSnapshot: " + *message.SymbolSnapshot.ExchangeId)
		if verbose {
			msg := message
			log.Println(msg.SymbolSnapshot)
			println()
		}
	case types.MESSAGE_REJECT:
		log.Println("Message")
		msg := message.MessageReject
		log.Println("RejectMessage")
		log.Println("Reject_reason: ", msg.GetRejectReason())
		log.Println("Exchange_id: ", msg.GetExchangeId())
		log.Println("Message: ", msg.GetMessage())
		log.Println("RejectedMessage: ", msg.GetRejectedMessage())

		println()
	}
}
