# DexOrderDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (owner address)-(order id) | [optional] 
**Owner** | **String** | Reference to owner. | [optional] 
**OrderId** | **Int32** | Order id. | [optional] 
**FromBatchId** | **String** | Batch id from which order became valid. | [optional] 
**FromEpoch** | **String** | Start of epoch in which order was placed and became valid. | [optional] 
**UntilBatchId** | **String** | Batch id until which trade was still valid. | [optional] 
**UntilEpoch** | **String** | End of epoch in which order was placed. | [optional] 
**BuyToken** | **String** | Identifier of token that was bought. | [optional] 
**SellToken** | **String** | Identifier of token that was sold. | [optional] 
**PriceNumerator** | **String** | Price enumerator. | [optional] 
**PriceDenominator** | **String** | Price denominator. | [optional] 
**MaxSellAmount** | **String** | Maximum sell amount. | [optional] 
**MinReceiveAmount** | **String** | Minimum receive amount. | [optional] 
**SoldVolume** | **String** | Sold volume. | [optional] 
**BoughtVolume** | **String** | Bought volume. | [optional] 
**CreateEpoch** | **String** | Epoch in which order was created. | [optional] 
**CancelEpoch** | **String** | Epoch in which order was cancelled. | [optional] 
**DeleteEpoch** | **String** | Epoch in which order was deleted. | [optional] 
**TxHash** | **String** | Transaction hash. | [optional] 
**TxLogIndex** | **String** | Event index within transaction. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DexOrderDTO = Initialize-PSOpenAPIToolsDexOrderDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Owner null `
 -OrderId null `
 -FromBatchId null `
 -FromEpoch null `
 -UntilBatchId null `
 -UntilEpoch null `
 -BuyToken null `
 -SellToken null `
 -PriceNumerator null `
 -PriceDenominator null `
 -MaxSellAmount null `
 -MinReceiveAmount null `
 -SoldVolume null `
 -BoughtVolume null `
 -CreateEpoch null `
 -CancelEpoch null `
 -DeleteEpoch null `
 -TxHash null `
 -TxLogIndex null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$DexOrderDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

