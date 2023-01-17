# openapi.model.UniswapV3TickDayDataDTO

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
**id** | **String** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**date** | **int** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**pool** | **String** | Pointer to pool. | [optional] 
**tick** | **String** | Pointer to tick. | [optional] 
**liquidityGross** | **String** | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**liquidityNet** | **String** | How much liquidity changes when tick crossed at end of period. | [optional] 
**volumeToken0** | **String** | Hourly volume of token0 with this tick in range. | [optional] 
**volumeToken1** | **String** | Hourly volume of token1 with this tick in range. | [optional] 
**volumeUsd** | **String** | Hourly volume in derived USD with this tick in range. | [optional] 
**feesUsd** | **String** | Fees in USD. | [optional] 
**feeGrowthOutside0x128** | **String** | Variable needed for fee computation. | [optional] 
**feeGrowthOutside1x128** | **String** | Variable needed for fee computation. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


