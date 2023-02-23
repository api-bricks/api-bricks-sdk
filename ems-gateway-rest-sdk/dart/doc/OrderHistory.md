# openapi.model.OrderHistory

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apikey** | **String** | Apikey | [optional] 
**exchangeId** | **String** | Exchange id | [optional] 
**clientOrderId** | **String** | Client order id | [optional] 
**symbolIdExchange** | **String** | Symbol id exchange | [optional] 
**symbolIdCoinapi** | **String** | Symbol id in coinapi | [optional] 
**amountOrder** | **num** | Amount | [optional] 
**price** | **num** | Price | [optional] 
**side** | **num** | 1-buy, 2-sell | [optional] 
**orderType** | **String** | Order type | [optional] 
**timeInForce** | **String** | Time in force | [optional] 
**expireTime** | [**DateTime**](DateTime.md) | Expire time | [optional] 
**execInst** | **List<String>** | Exec inst | [optional] [default to const []]
**clientOrderIdFormatExchange** | **String** | Client order id format | [optional] 
**exchangeOrderId** | **String** | Exchange order id | [optional] 
**amountOpen** | **num** | Amount open | [optional] 
**amountFilled** | **num** | Amount filled | [optional] 
**avgPx** | **num** | Average price | [optional] 
**status** | **String** | Status | [optional] 
**statusHistoryStatus** | **List<String>** | History status | [optional] [default to const []]
**statusHistoryTime** | [**List<DateTime>**](DateTime.md) | History status time | [optional] [default to const []]
**errorMessageResult** | **String** | Error message | [optional] 
**errorMessageReason** | **String** | Error message reason | [optional] 
**errorMessageMessage** | **String** | Error message | [optional] 
**fillsTime** | [**List<DateTime>**](DateTime.md) | Fills time | [optional] [default to const []]
**fillsPrice** | **List<num>** | Fills price | [optional] [default to const []]
**fillsAmount** | **List<num>** | Fills amount | [optional] [default to const []]
**createdTime** | [**DateTime**](DateTime.md) | Created time | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


