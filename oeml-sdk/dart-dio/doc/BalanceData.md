# openapi.model.BalanceData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetIdExchange** | **String** | Exchange currency code. | [optional] 
**assetIdCoinapi** | **String** | CoinAPI currency code. | [optional] 
**balance** | **double** | Value of the current total currency balance on the exchange. | [optional] 
**available** | **double** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**locked** | **double** | Value of the current locked currency balance by the exchange. | [optional] 
**lastUpdatedBy** | **String** | Source of the last modification.  | [optional] 
**rateUsd** | **double** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**traded** | **double** | Value of the current total traded. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


