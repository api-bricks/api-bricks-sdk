# openapi_client.model.order_history.OrderHistory

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**apikey** | str,  | str,  | Apikey | [optional] 
**exchangeId** | str,  | str,  | Exchange id | [optional] 
**clientOrderId** | str,  | str,  | Client order id | [optional] 
**symbolIdExchange** | str,  | str,  | Symbol id exchange | [optional] 
**symbolIdCoinapi** | str,  | str,  | Symbol id in coinapi | [optional] 
**amountOrder** | decimal.Decimal, int, float,  | decimal.Decimal,  | Amount | [optional] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Price | [optional] 
**side** | decimal.Decimal, int, float,  | decimal.Decimal,  | 1-buy, 2-sell | [optional] 
**orderType** | str,  | str,  | Order type | [optional] 
**timeInForce** | str,  | str,  | Time in force | [optional] 
**expireTime** |  |  | Expire time | [optional] 
**[execInst](#execInst)** | list, tuple,  | tuple,  | Exec inst | [optional] 
**clientOrderIdFormatExchange** | str,  | str,  | Client order id format | [optional] 
**exchangeOrderId** | str,  | str,  | Exchange order id | [optional] 
**amountOpen** | decimal.Decimal, int, float,  | decimal.Decimal,  | Amount open | [optional] 
**amountFilled** | decimal.Decimal, int, float,  | decimal.Decimal,  | Amount filled | [optional] 
**avgPx** | decimal.Decimal, int, float,  | decimal.Decimal,  | Average price | [optional] 
**status** | str,  | str,  | Status | [optional] 
**[statusHistoryStatus](#statusHistoryStatus)** | list, tuple,  | tuple,  | History status | [optional] 
**[statusHistoryTime](#statusHistoryTime)** | list, tuple,  | tuple,  | History status time | [optional] 
**errorMessageResult** | str,  | str,  | Error message | [optional] 
**errorMessageReason** | str,  | str,  | Error message reason | [optional] 
**errorMessageMessage** | str,  | str,  | Error message | [optional] 
**[fillsTime](#fillsTime)** | list, tuple,  | tuple,  | Fills time | [optional] 
**[fillsPrice](#fillsPrice)** | list, tuple,  | tuple,  | Fills price | [optional] 
**[fillsAmount](#fillsAmount)** | list, tuple,  | tuple,  | Fills amount | [optional] 
**createdTime** |  |  | Created time | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# execInst

Exec inst

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Exec inst | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# statusHistoryStatus

History status

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | History status | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# statusHistoryTime

History status time

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | History status time | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items |  |  |  | 

# fillsTime

Fills time

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Fills time | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items |  |  |  | 

# fillsPrice

Fills price

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Fills price | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | decimal.Decimal, int, float,  | decimal.Decimal,  |  | 

# fillsAmount

Fills amount

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Fills amount | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | decimal.Decimal, int, float,  | decimal.Decimal,  |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

