# openapi_client.model.order_new_single_request.OrderNewSingleRequest

The new order message.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The new order message. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**client_order_id** | str,  | str,  | The unique identifier of the order assigned by the client. | 
**exchange_id** | str,  | str,  | Exchange identifier used to identify the routing destination. | 
**side** | [**OrdSide**](OrdSide.md) | [**OrdSide**](OrdSide.md) |  | 
**time_in_force** | [**TimeInForce**](TimeInForce.md) | [**TimeInForce**](TimeInForce.md) |  | 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Order price. | 
**amount_order** | decimal.Decimal, int, float,  | decimal.Decimal,  | Order quantity. | 
**order_type** | [**OrdType**](OrdType.md) | [**OrdType**](OrdType.md) |  | 
**symbol_id_exchange** | str,  | str,  | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**symbol_id_coinapi** | str,  | str,  | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**expire_time** |  |  | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | [**ExecInst**](ExecInst.md) | [**ExecInst**](ExecInst.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

