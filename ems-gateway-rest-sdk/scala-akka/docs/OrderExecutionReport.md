

# OrderExecutionReport

The order execution report object.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange identifier used to identify the routing destination. | 
**clientOrderId** | **String** | The unique identifier of the order assigned by the client. | 
**symbolIdExchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. |  [optional]
**symbolIdCoinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. |  [optional]
**amountOrder** | **BigDecimal** | Order quantity. | 
**price** | **BigDecimal** | Order price. | 
**side** | **OrdSide** |  | 
**orderType** | **OrdType** |  | 
**timeInForce** | **TimeInForce** |  | 
**expireTime** | **LocalDate** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. |  [optional]
**execInst** | [**Seq[ExecInst]**](#Seq[ExecInst]) | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  |  [optional]
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. |  [optional]
**amountOpen** | **BigDecimal** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amountFilled** | **BigDecimal** | Total quantity filled. | 
**avgPx** | **BigDecimal** | Calculated average price of all fills on this order. |  [optional]
**status** | **OrdStatus** |  | 
**statusHistory** | **Seq&lt;Seq[String]&gt;** | Timestamped history of order status changes. |  [optional]
**errorMessage** | **String** | Error message. |  [optional]
**fills** | [**Seq&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. |  [optional]


## Enum: Seq[ExecInst]
Allowed values: [MAKER_OR_CANCEL, AUCTION_ONLY, INDICATION_OF_INTEREST]




