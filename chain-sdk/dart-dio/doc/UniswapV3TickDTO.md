# openapi.model.UniswapV3TickDTO

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
**vid** | **int** |  | [optional] 
**id** | **String** | Identifier, format: (pool address)#(tick index) | [optional] 
**poolAddress** | **String** | Pool address. | [optional] 
**tickIdx** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**pool** | **String** | Pool address. | [optional] 
**liquidityGross** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**liquidityNet** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**price0** | **String** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**price1** | **String** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**volumeToken0** | **String** | Lifetime volume of token0 with this tick in range. | [optional] 
**volumeToken1** | **String** | Lifetime volume of token1 with this tick in range. | [optional] 
**volumeUsd** | **String** | Lifetime volume in derived USD with this tick in range. | [optional] 
**untrackedVolumeUsd** | **String** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**feesUsd** | **String** | Fees in USD. | [optional] 
**collectedFeesToken0** | **String** | All time collected fees in token0. | [optional] 
**collectedFeesToken1** | **String** | All time collected fees in token1. | [optional] 
**collectedFeesUsd** | **String** | All time collected fees in USD. | [optional] 
**createdAtTimestamp** | [**DateTime**](DateTime.md) | Created time. | [optional] 
**liquidityProviderCount** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**feeGrowthOutside0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**feeGrowthOutside1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


