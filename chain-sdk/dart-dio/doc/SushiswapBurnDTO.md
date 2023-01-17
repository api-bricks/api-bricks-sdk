# openapi.model.SushiswapBurnDTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**DateTime**](DateTime.md) |  | [optional] 
**recvTime** | [**DateTime**](DateTime.md) |  | [optional] 
**blockNumber** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**transaction** | **String** | Reference to the transaction Burn was included in. | [optional] 
**timestamp** | **String** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**pair** | **String** | Reference to pair. | [optional] 
**liquidity** | **String** | Amount of liquidity tokens burned. | [optional] 
**sender** | **String** | Address that initiated the liquidity removal. | [optional] 
**amount0** | **String** | Amount of token0 removed. | [optional] 
**amount1** | **String** | Amount of token1 removed. | [optional] 
**to** | **String** | Recipient of tokens. | [optional] 
**logIndex** | **String** | Index in the transaction event was emitted. | [optional] 
**amountUsd** | **String** | Derived amount based on available prices of tokens. | [optional] 
**complete** | **bool** |  | [optional] 
**feeTo** | **String** | Address of fee recipient (if fee is on). | [optional] 
**feeLiquidity** | **String** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


