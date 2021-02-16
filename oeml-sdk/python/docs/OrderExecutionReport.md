# OrderExecutionReport

The order execution report object.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** | Exchange identifier used to identify the routing destination. | 
**client_order_id** | **str** | The unique identifier of the order assigned by the client. | 
**amount_order** | **float** | Order quantity. | 
**price** | **float** | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**order_type** | [**OrdType**](OrdType.md) |  | 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | 
**client_order_id_format_exchange** | **str** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amount_open** | **float** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **float** | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**symbol_id_exchange** | **str** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**symbol_id_coinapi** | **str** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**expire_time** | **date** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | [**ExecInst**](ExecInst.md) |  | [optional] 
**exchange_order_id** | **str** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**avg_px** | **float** | Calculated average price of all fills on this order. | [optional] 
**status_history** | **[[str]]** | Timestamped history of order status changes. | [optional] 
**error_message** | **str** | Error message. | [optional] 
**fills** | [**[Fills]**](Fills.md) | Relay fill information on working orders. | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


