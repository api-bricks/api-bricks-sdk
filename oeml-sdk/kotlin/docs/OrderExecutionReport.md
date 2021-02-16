
# OrderExecutionReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **kotlin.String** | Exchange identifier used to identify the routing destination. | 
**clientOrderId** | **kotlin.String** | The unique identifier of the order assigned by the client. | 
**amountOrder** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Order quantity. | 
**price** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**orderType** | [**OrdType**](OrdType.md) |  | 
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**clientOrderIdFormatExchange** | **kotlin.String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amountOpen** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amountFilled** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**symbolIdExchange** | **kotlin.String** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. |  [optional]
**symbolIdCoinapi** | **kotlin.String** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. |  [optional]
**expireTime** | [**java.time.LocalDate**](java.time.LocalDate.md) | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. |  [optional]
**execInst** | [**inline**](#kotlin.collections.List&lt;ExecInstEnum&gt;) | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  |  [optional]
**exchangeOrderId** | **kotlin.String** | Unique identifier of the order assigned by the exchange or executing system. |  [optional]
**avgPx** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Calculated average price of all fills on this order. |  [optional]
**statusHistory** | **kotlin.collections.List&lt;kotlin.collections.List&lt;kotlin.String&gt;&gt;** | Timestamped history of order status changes. |  [optional]
**errorMessage** | **kotlin.String** | Error message. |  [optional]
**fills** | [**kotlin.collections.List&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. |  [optional]


<a name="kotlin.collections.List<ExecInstEnum>"></a>
## Enum: exec_inst
Name | Value
---- | -----
execInst | MAKER_OR_CANCEL, AUCTION_ONLY, INDICATION_OF_INTEREST



