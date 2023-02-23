# openapi_client.model.order_execution_report.OrderExecutionReport

The order execution report object.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | The order execution report object. | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[OrderNewSingleRequest](OrderNewSingleRequest.md) | [**OrderNewSingleRequest**](OrderNewSingleRequest.md) | [**OrderNewSingleRequest**](OrderNewSingleRequest.md) |  | 
[all_of_1](#all_of_1) | dict, frozendict.frozendict,  | frozendict.frozendict,  | The order execution report message. | 

# all_of_1

The order execution report message.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The order execution report message. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**amount_open** | decimal.Decimal, int, float,  | decimal.Decimal,  | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**time_order** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | 
**client_order_id_format_exchange** | str,  | str,  | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amount_filled** | decimal.Decimal, int, float,  | decimal.Decimal,  | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) | [**OrdStatus**](OrdStatus.md) |  | 
**exchange_order_id** | str,  | str,  | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**avg_px** | decimal.Decimal, int, float,  | decimal.Decimal,  | Calculated average price of all fills on this order. | [optional] 
**[status_history](#status_history)** | list, tuple,  | tuple,  | Timestamped history of order status changes. | [optional] 
**error_message** | str,  | str,  | Error message. | [optional] 
**[fills](#fills)** | list, tuple,  | tuple,  | Relay fill information on working orders. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# status_history

Timestamped history of order status changes.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Timestamped history of order status changes. | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | list, tuple,  | tuple,  |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# fills

Relay fill information on working orders.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Relay fill information on working orders. | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Fills**](Fills.md) | [**Fills**](Fills.md) | [**Fills**](Fills.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

