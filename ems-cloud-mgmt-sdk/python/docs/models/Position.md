# openapi_client.model.position.Position

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**exchange_id** | str,  | str,  | Exchange identifier used to identify the routing destination. | [optional] 
**[data](#data)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# data

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict,  | frozendict.frozendict,  | The Position object. | 

# items

The Position object.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The Position object. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol_id_exchange** | str,  | str,  | Exchange symbol. | [optional] 
**symbol_id_coinapi** | str,  | str,  | CoinAPI symbol. | [optional] 
**avg_entry_price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Calculated average price of all fills on this position. | [optional] 
**quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  | The current position quantity. | [optional] 
**side** | [**OrdSide**](OrdSide.md) | [**OrdSide**](OrdSide.md) |  | [optional] 
**unrealized_pnl** | decimal.Decimal, int, float,  | decimal.Decimal,  | Unrealised profit or loss (PNL) of this position. | [optional] 
**leverage** | decimal.Decimal, int, float,  | decimal.Decimal,  | Leverage for this position reported by the exchange. | [optional] 
**cross_margin** | bool,  | BoolClass,  | Is cross margin mode enable for this position? | [optional] 
**liquidation_price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**[raw_data](#raw_data)** | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# raw_data

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

