# # OrderExecutionReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **string** | Exchange identifier used to identify the routing destination. |
**client_order_id** | **string** | The unique identifier of the order assigned by the client. |
**symbol_id_exchange** | **string** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional]
**symbol_id_coinapi** | **string** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional]
**amount_order** | **float** | Order quantity. |
**price** | **float** | Order price. |
**side** | [**\OpenAPI\Client\Model\OrdSide**](OrdSide.md) |  |
**order_type** | [**\OpenAPI\Client\Model\OrdType**](OrdType.md) |  |
**time_in_force** | [**\OpenAPI\Client\Model\TimeInForce**](TimeInForce.md) |  |
**expire_time** | **\DateTime** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional]
**exec_inst** | **string[]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; | [optional]
**client_order_id_format_exchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. |
**exchange_order_id** | **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional]
**amount_open** | **float** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; |
**amount_filled** | **float** | Total quantity filled. |
**avg_px** | **float** | Calculated average price of all fills on this order. | [optional]
**status** | [**\OpenAPI\Client\Model\OrdStatus**](OrdStatus.md) |  |
**status_history** | **string[][]** | Timestamped history of order status changes. | [optional]
**error_message** | **string** | Error message. | [optional]
**fills** | [**\OpenAPI\Client\Model\Fills[]**](Fills.md) | Relay fill information on working orders. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
