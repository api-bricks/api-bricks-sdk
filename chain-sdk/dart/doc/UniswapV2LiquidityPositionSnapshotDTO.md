# openapi.model.UniswapV2LiquidityPositionSnapshotDTO

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
**id** | **String** | Identifier, format: (pair address)-(user address) | [optional] 
**liquidityPosition** | **String** | Reference to LP identifier. | [optional] 
**timestamp** | **int** | Creation time. | [optional] 
**block** | **int** | Number of block in which LP snapshot was recorded. | [optional] 
**user** | **String** | Reference to user. | [optional] 
**pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] 
**token0PriceUsd** | **String** | Snapshot of token0 price. | [optional] 
**token1PriceUsd** | **String** | Snapshot of token0 price. | [optional] 
**reserve0** | **String** | Snapshot of pair token0 reserves. | [optional] 
**reserve1** | **String** | Snapshot of pair token1 reserves. | [optional] 
**reserveUsd** | **String** | Snapshot of pair reserves in USD. | [optional] 
**liquidityTokenTotalSupply** | **String** | Snapshot of pool token supply. | [optional] 
**liquidityTokenBalance** | **String** | Snapshot of users pool token balance. | [optional] 
**vid** | **int** |  | [optional] 
**blockRange** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


