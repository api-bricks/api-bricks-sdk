
# CoinAPI.EMS.REST.V1.Model.DexOrderDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (owner address)-(order id) | [optional] 
**Owner** | **string** | Reference to owner. | [optional] 
**OrderId** | **int** | Order id. | [optional] 
**FromBatchId** | **string** | Batch id from which order became valid. | [optional] 
**FromEpoch** | **string** | Start of epoch in which order was placed and became valid. | [optional] 
**UntilBatchId** | **string** | Batch id until which trade was still valid. | [optional] 
**UntilEpoch** | **string** | End of epoch in which order was placed. | [optional] 
**BuyToken** | **string** | Identifier of token that was bought. | [optional] 
**SellToken** | **string** | Identifier of token that was sold. | [optional] 
**PriceNumerator** | **string** | Price enumerator. | [optional] 
**PriceDenominator** | **string** | Price denominator. | [optional] 
**MaxSellAmount** | **string** | Maximum sell amount. | [optional] 
**MinReceiveAmount** | **string** | Minimum receive amount. | [optional] 
**SoldVolume** | **string** | Sold volume. | [optional] 
**BoughtVolume** | **string** | Bought volume. | [optional] 
**CreateEpoch** | **string** | Epoch in which order was created. | [optional] 
**CancelEpoch** | **string** | Epoch in which order was cancelled. | [optional] 
**DeleteEpoch** | **string** | Epoch in which order was deleted. | [optional] 
**TxHash** | **string** | Transaction hash. | [optional] 
**TxLogIndex** | **string** | Event index within transaction. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

