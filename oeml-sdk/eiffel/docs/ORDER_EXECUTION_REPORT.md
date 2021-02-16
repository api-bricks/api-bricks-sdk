# ORDER_EXECUTION_REPORT

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | [**STRING_32**](STRING_32.md) | Exchange identifier used to identify the routing destination. | [default to null]
**client_order_id** | [**STRING_32**](STRING_32.md) | The unique identifier of the order assigned by the client. | [default to null]
**symbol_id_exchange** | [**STRING_32**](STRING_32.md) | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**symbol_id_coinapi** | [**STRING_32**](STRING_32.md) | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**amount_order** | **REAL_32** | Order quantity. | [default to null]
**price** | **REAL_32** | Order price. | [default to null]
**side** | [**ORD_SIDE**](OrdSide.md) |  | [default to null]
**order_type** | [**ORD_TYPE**](OrdType.md) |  | [default to null]
**time_in_force** | [**TIME_IN_FORCE**](TimeInForce.md) |  | [default to null]
**expire_time** | [**DATE**](DATE.md) | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] [default to null]
**exec_inst** | [**LIST [STRING_32]**](STRING_32.md) | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] [default to null]
**client_order_id_format_exchange** | [**STRING_32**](STRING_32.md) | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | [default to null]
**exchange_order_id** | [**STRING_32**](STRING_32.md) | Unique identifier of the order assigned by the exchange or executing system. | [optional] [default to null]
**amount_open** | **REAL_32** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | [default to null]
**amount_filled** | **REAL_32** | Total quantity filled. | [default to null]
**avg_px** | **REAL_32** | Calculated average price of all fills on this order. | [optional] [default to null]
**status** | [**ORD_STATUS**](OrdStatus.md) |  | [default to null]
**status_history** | [**LIST [LIST [STRING_32]]**](LIST.md) | Timestamped history of order status changes. | [optional] [default to null]
**error_message** | [**STRING_32**](STRING_32.md) | Error message. | [optional] [default to null]
**fills** | [**LIST [FILLS]**](Fills.md) | Relay fill information on working orders. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


