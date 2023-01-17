# openapi.model.DexOrderDTO

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
**id** | **String** | Identifier, format: (owner address)-(order id) | [optional] 
**owner** | **String** | Reference to owner. | [optional] 
**orderId** | **int** | Order id. | [optional] 
**fromBatchId** | **String** | Batch id from which order became valid. | [optional] 
**fromEpoch** | **String** | Start of epoch in which order was placed and became valid. | [optional] 
**untilBatchId** | **String** | Batch id until which trade was still valid. | [optional] 
**untilEpoch** | **String** | End of epoch in which order was placed. | [optional] 
**buyToken** | **String** | Identifier of token that was bought. | [optional] 
**sellToken** | **String** | Identifier of token that was sold. | [optional] 
**priceNumerator** | **String** | Price enumerator. | [optional] 
**priceDenominator** | **String** | Price denominator. | [optional] 
**maxSellAmount** | **String** | Maximum sell amount. | [optional] 
**minReceiveAmount** | **String** | Minimum receive amount. | [optional] 
**soldVolume** | **String** | Sold volume. | [optional] 
**boughtVolume** | **String** | Bought volume. | [optional] 
**createEpoch** | **String** | Epoch in which order was created. | [optional] 
**cancelEpoch** | **String** | Epoch in which order was cancelled. | [optional] 
**deleteEpoch** | **String** | Epoch in which order was deleted. | [optional] 
**txHash** | **String** | Transaction hash. | [optional] 
**txLogIndex** | **String** | Event index within transaction. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


