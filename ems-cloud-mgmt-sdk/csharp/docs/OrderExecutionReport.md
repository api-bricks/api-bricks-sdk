
# CoinAPI.EMS.REST.V1.Model.OrderExecutionReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange identifier used to identify the routing destination. | 
**ClientOrderId** | **string** | The unique identifier of the order assigned by the client. | 
**SymbolIdExchange** | **string** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**SymbolIdCoinapi** | **string** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**AmountOrder** | **decimal** | Order quantity. | 
**Price** | **decimal** | Order price. | 
**Side** | **OrdSide** |  | 
**OrderType** | **OrdType** |  | 
**TimeInForce** | **TimeInForce** |  | 
**ExpireTime** | **DateTime** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**ExecInst** | **List&lt;OrderExecutionReport.ExecInstEnum&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**AmountOpen** | **decimal** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**AmountFilled** | **decimal** | Total quantity filled. | 
**AvgPx** | **decimal** | Calculated average price of all fills on this order. | [optional] 
**Status** | **OrdStatus** |  | 
**StatusHistory** | **List&lt;List&lt;string&gt;&gt;** | Timestamped history of order status changes. | [optional] 
**ErrorMessage** | **string** | Error message. | [optional] 
**Fills** | [**List&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

