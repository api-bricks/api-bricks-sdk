# openapi.model.SushiswapPairHourDataDTO

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
**id** | **String** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**date** | **int** | Hour start timestamp. | [optional] 
**pair** | **String** | Reference to pair. | [optional] 
**reserve0** | **String** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve1** | **String** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**reserveUsd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volumeToken0** | **String** | Total amount of token0 swapped throughout hour. | [optional] 
**volumeToken1** | **String** | Total amount of token1 swapped throughout hour. | [optional] 
**volumeUsd** | **String** | Total volume within pair throughout hour. | [optional] 
**txCount** | **String** | Amount of transactions on pair throughout hour. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


