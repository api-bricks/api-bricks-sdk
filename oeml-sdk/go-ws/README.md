
## Requirements

* Valid coin API key. Note, the free key does NOT work with OEML.  
* Ensure OMEL [version 1.8789 or higher](http://coinapi-releases.s3-website-us-east-1.amazonaws.com/?prefix=oeml-api/) is used.
* Ensure OMEL is deployed to Kubernetes. See helm chart [instructions for details](https://github.com/coinapi/helm-charts)
* Ensure websocat is installed for local testing. See [instructions for details](https://github.com/vi/websocat)


## Installation


```shell
cd /path/to/workspace
go get github.com/CoinAPI/coinapi-sdk/oeml-sdk/go-ws
go mod download github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws
```

## Port-forward to Kubernetes

In a separate terminal, run: 

```bash
kubectl port-forward svc/oeml-api-composite 8080:80
```


## Run examples:

```bash
wget -v https://raw.githubusercontent.com/coinapi-sdk/master/oeml-sdk/go-ws/main.go

go run main.go
```

## Test outgoing messages:

Ensure Kubernetes forwarding has been disabled.
In a separate terminal, run:

```bash
websocat -s 8080
```

In the example main set the websocat to true. Set verbose only to true for very detailed loggin as it tends to flood the terminal with heartbeat messages issued every second from each connected exchange.

```go
const (
	url           = "ws://127.0.0.1:8080"
	websocat      = true
	verbose       = false
	... 
)


```

Runt the example again and watch the websocket terminal logging all messages it receives. 

## Development:


The SDK handles each message type from OEML through an individual InvokeFunction that processes the specific message. 
Therefore, an invoke function for all message types must be implemented and set during init.  For example, a component handling only 
account balances and positions would require an init process as outlined below: 

### Init 

```go
func NewAccountHandler(coinApi *coinapi.CoinApi) *AccountHandler {
    amx := &AccountHandler{coinApi: coinApi}
    amx.init()
    return amx
}

func (a *AccountHandler) init() {
    balanceSnapshotInvoke := a.getBalanceSnapshotInvoke()
    a.coinApi.OemlSDK.SetBalanceSnapshotInvoke(balanceSnapshotInvoke)
    balanceUpdateInvoke := a.getBalanceUpdateInvoke()
    a.coinApi.OemlSDK.SetBalanceUpdateInvoke(balanceUpdateInvoke)
    
    positionSnapshotInvoke := a.getPositionSnapshotInvoke()
    a.coinApi.OemlSDK.SetPositionSnapshotInvoke(positionSnapshotInvoke)
    positionUpdateInvoke := a.getPositionUpdateInvoke()
    a.coinApi.OemlSDK.SetPositionUpdateInvoke(positionUpdateInvoke)
}
```

### InvokeFunctions 

Let's suppose the AccountHandler only extracts certain information and then sends a response message forward to another service. 
Doing so requires two different Invoke functions, one for snapshots usually send following a connect or reconnect, and a second one for updates
that are received in real-time following a change. For example, the code below illustrates the InvokeFunctions required for
message forwarding: 

```go
func (a *AccountHandler) getBalanceSnapshotInvoke() t.InvokeFunction {
	return func(message *t.OemlMessage) (err error) {
		snapshot := message.BalanceSnapshot
		exchangeID := snapshot.GetExchangeId()
		rsp := a.getBalanceMessage(snapshot, false)

		if !active { // client has not been connected ... 
			a.addBufferEntry(rsp) // must be implemented in case snapshots arrive before a client has been connected. 
			return nil
		}

		replyChannel := a.getReplyChannel(exchangeID) // must be implemented to send to the right channel
		err = a.encConn.Publish(replyChannel, rsp) // must be implemented to send out the message 
		shared.LogError(err) // must be implemented to only log errors 
		return err
	}
}
```

The SDK receives snapshots immediately after connection and in case system or the connected client is not immediately ready, 
message buffering is required. 

### Lookup symbols  

The OEML SDK relies on two symbol identifiers. The exchange specific symbolID only applies to the connected exchange is invalid on any other exchange. 
The coinAPISymbolID essentially consists of the exchange ID and the symbol ID and, as such, is a unique identifier even though the symbol can only be used
on its specific exchange. If the integration requires exchange agnostic symbol handling, for example when routing the same order to different exchanges, 
then the SDK function LookupSymbolData() needs to be used to locate the actual symbol ID. The LookupSymbolData takes three arguments:

* Exchange ID - string
* SymbolBase  - string
* SymbolQuote - string

Usage is shown in the code below:

```go
	exchangeID := msg.SymbolData.Exchange
	baseID := msg.SymbolData.SymbolBase
	quoteID := msg.SymbolData.SymbolQuote
	
	symbolData, ok := sdk.LookupSymbolData(exchangeID, baseID, quoteID)
	if ok{
            symbolID := *symbolData.Symbol_id_coinapi
        }
```

The lookup method returns a SymbolData object containing both, the exchange and coinAPI symbol, and  some more details such as price and size precision.


### Place order

Placing an order consists of three steps:
1. Collect parameters 
2. Construct order request 
3. Place request 

Because the method to construct order request takes a fair amount of parameters, it is advised to wrap these into a struct, as shown below:

```go
type OrderConfig struct {
    ExchangeID      string
    SymbolIdCoinApi string
    ClientOrderID   string
    AmountOrder     float64
    Price           float64
    OrderSide       types.OrdSide
    OrderType       types.OrdType
    TimeInForce     types.TimeInForce
}
```

The SDK does not provide an order configuration object because it stays as close to the OEML message specification as possible. 
Furthermore, in many cases, order configuration depends on the actual integration and as such custom configuration objects usually 
help to encode default values or specific parameters required during order processing and routing. The method below illustrates placing and order by using 
constructing a custom order configuration: 


```go
func (h ExecutionHandler) reqSingleOrder(msg m.EmxRequest) error {

	// lookup symbol 
    exchangeID := msg.SymbolData.Exchange
    baseID := msg.SymbolData.SymbolBase
    quoteID := msg.SymbolData.SymbolQuote
    symbolData, _ := coinOeml.LookupSymbolData(exchangeID, baseID, quoteID)
    symbolID := *symbolData.Symbol_id_coinapi
    
    // generate order using an UUID https://pkg.go.dev/github.com/google/uuid#New
    id := uuid.New()
    orderID := exchangeID + "-" + id.String()
    cfg := h.GetCoinOrderConfig(exchangeID, symbolID, orderID,  msg.OrderConfig) // must be implemented to configure custom order
    return h.placeOrder(*cfg)
}
```

Once the order configuration is ready, then the system needs to create  a request message and sends it out as shown below.


```go
func (h ExecutionHandler) placeOrder(oc CoinOrder) (err error) {
    
    exchangeID := oc.ExchangeID
    symbolIdCoinApi := oc.SymbolIdCoinApi
    clientOrderID := oc.ClientOrderID
    amountOrder := oc.AmountOrder
    price := oc.Price
    orderSide := oc.OrderSide
    orderType := oc.OrderType
    timeInForce := oc.TimeInForce
    
    // build  request 
    reqOrder := sdk.NewSingleOrderRequest(exchangeID, symbolIdCoinApi, clientOrderID, amountOrder, price, orderSide, orderType, timeInForce)
    
    // send order request to OEML  
    err = coinOeml.PlaceSingleOrder(reqOrder)

    return err
}
```

### Cancel order

Canceling a single order requires only the order ID assigned in the initial request and the exchange id, as shown in the code example below.  

```go
func (h ExecutionHandler) reqCancelOrder(msg m.EmxRequest) {
    exchangeID := msg.SymbolData.Exchange
    clientOrderID := msg.OrderConfig.OrderRefTag
    
    // build request. 
    reqCancel := coinOeml.NewCancelSingleOrderRequest(exchangeID, clientOrderID)

    // send request 
    err := coinOeml.CancelSingleOrder(reqCancel)
}
```

When cancelling all orders, only the exchange id must be provided.  

```go
func (h ExecutionHandler) reqGlobalCancel(exchangeID string) {

    // build request.
    reqCancelAll := coinOeml.NewCancelAllOrdersRequest(exchangeID)

    // send request
    err := coinOeml.CancelAllOrders(reqCancelAll)
}
```

### Order Updates 

For processing updates on orders, two invoke functions must be implemented and set in the SDK. The Snapshot handler
and the update handler. Both must be set during init to prevent a panic caused by null dereferences. A typical execution handler 
would construct the invoke functions and assigned during init as shown below. 

```go
func NewEmxHandler(coinApi *coinapi.CoinApi,) (emx *ExecutionHandler) {
    emx = &ExecutionHandler{coinApi: coinApi}
    emx.init()
    return emx
}

func (h ExecutionHandler) init() {
    executionSnapshotInvoke = h.getExecutionSnapshotInvoke()
    h.coinApi.OemlSDK.SetExecSnapshotInvoke(executionSnapshotInvoke)
    
    executionUpdateInvoke = h.getExecutionUpdateInvoke()
    h.coinApi.OemlSDK.SetExecUpdateInvoke(executionUpdateInvoke)
}
```

As the snapshot message arrives relatively seldom and usually only during (re) connects, 
the order update invoke function really becomes the main handler to process order updates in real-time.

```go
func (h ExecutionHandler) getExecutionUpdateInvoke() t.InvokeFunction {
	return func(message *t.OemlMessage) (err error) {
            execReport := message.OrderExecutionReportSnapshot
           
            // extract fields 
            symbol := execReport.GetSymbolIdCoinapi()
            status : execReport.GetStatus()
            avgPrice := execReport.GetAvgPx()   
        
            // process order update 
            err = h.process(...)
            return err
        }
}
```

Because nearly fields in the message structs are pointers, it is important to use the corresponding Get...() methods
that derefence the pointers, and in case of a nil pointer, set a default value i.e. empty string to prevent crashes.  


### Error handling

In case an order gets rejected, a MessageReject will be issued and needs to be processed in the Error Invoke Function which, 
again, must be  set during SDK init. The reject_reason field contains an enum with one of the following values:

* EXCHANGE_UNREACHABLE 
* EXCHANGE_RESPONSE_TIMEOUT 
* ORDER_ID_NOT_FOUND 
* INVALID_TYPE
* METHOD_NOT_SUPPORTED 
* JSON_ERROR

The API doc specify the reject reasons and thus can be used for control flow, although converting them into a proper go / iota enum is advised. 

Also note the message that triggered the error is stored in the rejected_message field for further inspection.  

```go
func GetErrorInvoke() types.InvokeFunction {
	// You need to be prepared to receive an error message from us when you send something wrong;
	// Good practice is to store all error messages in a persistent log i.e. DB / Reddis for further manual review.
	// https://docs.coinapi.io/#error-handling
	return func(message *types.OemlMessage) (err error) {
		mtd := "ErrorHandler: "
		println(mtd)
		// RejectMessage is used to communicate rejection of user order request.
		// https://docs.coinapi.io/oeml.html#message_reject-in
		msg := message.MessageReject
        reason := msg.GetRejectReason()

        log.Println("RejectMessage")
        log.Println("Reject_reason: ", reason)
        log.Println("Exchange_id: ", msg.GetExchangeId())
		log.Println("Message: ", msg.GetMessage())
		log.Println("RejectedMessage: ", msg.GetRejectedMessage())

        
        if reason == "EXCHANGE_UNREACHABLE"{
        ...
        }
        
        if reason == "EXCHANGE_RESPONSE_TIMEOUT"{
        ...
        }
        
        return err
	}
}
```


## Contact

For questions, please contact: support@coinapi.io
