# openapi::OrderExecutionReport

The order execution report object.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **character** | Exchange identifier used to identify the routing destination. | 
**client_order_id** | **character** | The unique identifier of the order assigned by the client. | 
**symbol_id_exchange** | **character** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**symbol_id_coinapi** | **character** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**amount_order** | **numeric** | Order quantity. | 
**price** | **numeric** | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**order_type** | [**OrdType**](OrdType.md) |  | 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | 
**expire_time** | **character** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | **array[character]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
**client_order_id_format_exchange** | **character** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **character** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amount_open** | **numeric** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **numeric** | Total quantity filled. | 
**avg_px** | **numeric** | Calculated average price of all fills on this order. | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**status_history** | [**array[array[character]]**](array.md) | Timestamped history of order status changes. | [optional] 
**error_message** | **character** | Error message. | [optional] 
**fills** | [**array[Fills]**](Fills.md) | Relay fill information on working orders. | [optional] 


