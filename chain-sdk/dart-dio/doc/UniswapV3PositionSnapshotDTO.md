# openapi.model.UniswapV3PositionSnapshotDTO

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
**id** | **String** | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**owner** | **String** | Owner of the NFT. | [optional] 
**pool** | **String** | Pool the position is within. | [optional] 
**position** | **String** | Position of which the snap was taken of. | [optional] 
**timestamp** | **String** | Timestamp of block in which the snap was created. | [optional] 
**liquidity** | **String** | Total position liquidity. | [optional] 
**depositedToken0** | **String** | Amount of token 0 ever deposited to position. | [optional] 
**depositedToken1** | **String** | Amount of token 1 ever deposited to position. | [optional] 
**withdrawnToken0** | **String** | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**withdrawnToken1** | **String** | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**collectedFeesToken0** | **String** | All time collected fees in token0. | [optional] 
**collectedFeesToken1** | **String** | All time collected fees in token1. | [optional] 
**transaction** | **String** | Transaction in which the snapshot was initialized. | [optional] 
**feeGrowthInside0LastX128** | **String** | Variable needed for fee computation. | [optional] 
**feeGrowthInside1LastX128** | **String** | Variable needed for fee computation. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


