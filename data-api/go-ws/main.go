package main

import (
	"errors"
	"go-ws/api"
	t "go-ws/api/types"
	"log"
	"time"
)

const apiKey = "THIS-IS-A-SAMPLE-API-KEY-C2A7CB1EF"

//All integrations:
// https://www.coinapi.io/integration

func main() {
	println(" * NewSDK!")
	sdk := api.NewSDK(apiKey)
	// verbose switches on / off console printing of heartbeat & reconnect messages
	sys := getSysInvokes(true)

	println(" * SetErrorInvoke!")
	sdk.SetErrorInvoke(sys.ErrorInvoke)

	println(" * SetHeartBeatInvoke!")
	sdk.SetHeartBeatInvoke(sys.HeartBeatInvoke)

	println(" * SetReconnectInvoke!")
	sdk.SetReconnectInvoke(sys.ReconnectInvoke)

	println(" * SetOHLCVInvoke!")
	OHLCVInvoke := GetInvokeFunction(t.OHLCV)
	sdk.SetOHLCVInvoke(OHLCVInvoke)

	println(" * SetTradesInvoke!")
	tradeInvoke := GetInvokeFunction(t.TRADE)
	sdk.SetTradesInvoke(tradeInvoke)

	println(" * SetQuoteInvoke!")
	quoteInvoke := GetInvokeFunction(t.QUOTE)
	sdk.SetQuoteInvoke(quoteInvoke)

	println(" * SetExRateInvoke!")
	exRateInvoke := GetInvokeFunction(t.EXCHANGERATE)
	sdk.SetExRateInvoke(exRateInvoke)

	println(" * SetBookInvoke!")
	bookInvoke := GetInvokeFunction(t.BOOK_L2_FULL)
	sdk.SetBookInvoke(bookInvoke)

	println(" * GetHello: Single data type!")
	hello := getHello(false, false)

	println(" * SendHello: Single data type!")
	_ = sdk.SendHello(hello)

	println(" * Wait for messages!")
	time.Sleep(time.Second * 5)

	println(" * GetHello: Expanded data t!")
	hello = getHello(true, false)

	println(" * SendHello: Expanded data t!")
	_ = sdk.SendHello(hello)

	println(" * Wait for messages!")
	time.Sleep(time.Second * 5)

	println(" * GetHello: Heartbeat!")
	hello = getHello(false, true)

	println(" * SendHello: Heartbeat!")
	_ = sdk.SendHello(hello)

	println(" * Wait for messages!")
	time.Sleep(time.Second * 5)

	println(" * CloseConnection!")
	_ = sdk.CloseConnection()

	println("Goodbye!")
}

func getHello(expanded, heartbeat bool) (hello *t.Hello) {
	// After your WebSocket connection is established, you must send us a Hello message which contains:
	// * Stream preferences (Heartbeat and subscription details)
	// * API key for authorization
	// If your message will be incorrect, we will send you error message and disconnect connection afterwards.
	// Hello message can be repeated, each one will cause subscription scope override without interruption
	// of your WebSocket connection.
	// https://docs.coinapi.io/#hello-out

	var datat []string
	var symbolIds []string
	var periodIDs []string

	datat = append(datat, "ohlcv")
	if expanded {
		datat = append(datat, "trade")
		datat = append(datat, "quote")
		datat = append(datat, "exrate")
		datat = append(datat, "book5")

	}

	symbolIds = append(symbolIds, "COINBASE_SPOT_BTC_USD")
	periodIDs = append(periodIDs, "1MIN")

	hello = &t.Hello{
		Type:                       "hello",
		Api_key:                    apiKey,
		Heartbeat:                  heartbeat,
		Subscribe_data_type:        datat,
		Subscribe_filter_period_id: periodIDs,
		Subscribe_filter_symbol_id: symbolIds,
	}
	return hello
}

type SysInvokes struct {
	ErrorInvoke     t.InvokeFunction
	HeartBeatInvoke t.InvokeFunction
	ReconnectInvoke t.InvokeFunction
}

func getSysInvokes(verbose bool) SysInvokes {
	errorInvoke := GetErrorInvoke()
	heartBeatInvoke := GetHeartBeatInvoke(verbose)
	reconnectInvoke := GetReconnectInvoke(verbose)

	return SysInvokes{
		ErrorInvoke:     errorInvoke,
		HeartBeatInvoke: heartBeatInvoke,
		ReconnectInvoke: reconnectInvoke,
	}
}

func GetReconnectInvoke(verbose bool) t.InvokeFunction {
	// 	Reconnect message is sent by the server to all connected clients when the server will be restarted
	//	or shut down at the defined exact time included in the message content.
	//	After the period specified in message passes, the client must expect that the
	//	underlying WebSocket connection will be closed from the server-side.
	//	A new connection will automatically be established to a different server.
	// The correct way of handling this event depends on the specific requirements of the integration...
	// https://docs.coinapi.io/#reconnect-in
	return func(message *t.DataMessage) (err error) {

		//sec := message.Reconnect.Within_seconds
		//before := message.Reconnect.Before_time

		if verbose {
			log.Println()
			log.Println("!!!!!!!!!!!!!!!!!")
			log.Println("!!!!Reconnect!!!! ")
			log.Println("!!!!!!!!!!!!!!!!!")
			log.Println()
		}

		return nil
	}
}

func GetHeartBeatInvoke(verbose bool) t.InvokeFunction {
	// WebSocket working on TCP protocol which doesn’t have the feature indicating that the connection is broken without
	// trying exchange data over it. As you will not be actively sending messages to us,
	// with Heartbeat you can distinguish a situation where there are no market data updates
	// for you (Heartbeat is delivered but no market data updates)
	// or connection between us is broken (Heartbeat and market data updates are not delivered).
	// https://docs.coinapi.io/#reconnect-in
	return func(message *t.DataMessage) (err error) {
		if verbose {
			log.Println()
			log.Println("===============================")
			log.Println("= Tracking heartbeat message! =")
			log.Println("===============================")
			log.Println()
		}
		return nil
	}
}

func GetErrorInvoke() t.InvokeFunction {
	// You need to be prepared to receive an error message from us when you send something wrong;
	// all errors are permanent and you should expect that the underlying
	// WebSocket connection will be closed by us after sending an error message.
	// Good practice is to store all error messages somewhere for further manual review.
	// https://docs.coinapi.io/#error-handling
	return func(message *t.DataMessage) (err error) {
		mtd := "ErrorHandler: "
		println(mtd)
		msg := message.ErrorMessage.Message
		if msg != "" {
			log.Println(mtd+"ErrorMessage: ", msg)
			return errors.New(msg)
		}
		return nil
	}
}

func GetInvokeFunction(msgType t.MessageType) t.InvokeFunction {
	return func(message *t.DataMessage) (err error) {
		printMessage(msgType, message)
		return nil
	}
}

func printMessage(msgType t.MessageType, message *t.DataMessage) {
	switch msgType {
	case t.ERROR:
		msg := message.ErrorMessage
		log.Println(msg)
		println()
	case t.EXCHANGERATE:
		msg := message.ExchangeRate
		log.Println(msg)
		println()
	case t.BOOK_L2_TOP_5:
		printBook(message)
	case t.BOOK_L2_TOP_20:
		printBook(message)
	case t.BOOK_L2_TOP_50:
		printBook(message)
	case t.BOOK_L2_FULL:
		printBook(message)
	case t.BOOK_L3_FULL:
		printBook(message)
	case t.OHLCV:
		msg := message.Ohlcv
		log.Println(msg)
		println()
	case t.QUOTE:
		msg := message.Quote
		log.Println(msg)
		println()
	case t.TRADE:
		msg := message.Trade
		log.Println(msg)
		println()
	case t.VOLUME:
		msg := message.Quote
		log.Println(msg)
		println()

	}
}

func printBook(message *t.DataMessage) {
	msg := message.Orderbook
	log.Println(msg)
	println()
}
