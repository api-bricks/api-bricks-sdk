
# DexOrderDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (owner address)-(order id) |  [optional]
**owner** | **kotlin.String** | Reference to owner. |  [optional]
**orderId** | **kotlin.Int** | Order id. |  [optional]
**fromBatchId** | **kotlin.String** | Batch id from which order became valid. |  [optional]
**fromEpoch** | **kotlin.String** | Start of epoch in which order was placed and became valid. |  [optional]
**untilBatchId** | **kotlin.String** | Batch id until which trade was still valid. |  [optional]
**untilEpoch** | **kotlin.String** | End of epoch in which order was placed. |  [optional]
**buyToken** | **kotlin.String** | Identifier of token that was bought. |  [optional]
**sellToken** | **kotlin.String** | Identifier of token that was sold. |  [optional]
**priceNumerator** | **kotlin.String** | Price enumerator. |  [optional]
**priceDenominator** | **kotlin.String** | Price denominator. |  [optional]
**maxSellAmount** | **kotlin.String** | Maximum sell amount. |  [optional]
**minReceiveAmount** | **kotlin.String** | Minimum receive amount. |  [optional]
**soldVolume** | **kotlin.String** | Sold volume. |  [optional]
**boughtVolume** | **kotlin.String** | Bought volume. |  [optional]
**createEpoch** | **kotlin.String** | Epoch in which order was created. |  [optional]
**cancelEpoch** | **kotlin.String** | Epoch in which order was cancelled. |  [optional]
**deleteEpoch** | **kotlin.String** | Epoch in which order was deleted. |  [optional]
**txHash** | **kotlin.String** | Transaction hash. |  [optional]
**txLogIndex** | **kotlin.String** | Event index within transaction. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



