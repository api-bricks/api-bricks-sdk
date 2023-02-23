# openapi_client.model.balance.Balance

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
[items](#items) | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**asset_id_exchange** | str,  | str,  | Exchange currency code. | [optional] 
**asset_id_coinapi** | str,  | str,  | CoinAPI currency code. | [optional] 
**balance** | decimal.Decimal, int, float,  | decimal.Decimal,  | Value of the current total currency balance on the exchange. | [optional] value must be a 64 bit float
**available** | decimal.Decimal, int, float,  | decimal.Decimal,  | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] value must be a 64 bit float
**locked** | decimal.Decimal, int, float,  | decimal.Decimal,  | Value of the current locked currency balance by the exchange. | [optional] value must be a 64 bit float
**last_updated_by** | str,  | str,  | Source of the last modification.  | [optional] must be one of ["INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE", ] 
**rate_usd** | decimal.Decimal, int, float,  | decimal.Decimal,  | Current exchange rate to the USD for the single unit of the currency.  | [optional] value must be a 64 bit float
**traded** | decimal.Decimal, int, float,  | decimal.Decimal,  | Value of the current total traded. | [optional] value must be a 64 bit float
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

