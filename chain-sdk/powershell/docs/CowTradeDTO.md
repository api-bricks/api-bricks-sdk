# CowTradeDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**Timestamp** | **String** | Block&#39;s timestamp. | [optional] 
**GasPrice** | **String** | Transaction&#39;s gas price. | [optional] 
**GasLimit** | **String** | Transaction&#39;s gas limit. | [optional] 
**FeeAmount** | **String** | Trade&#39;s fee amount. | [optional] 
**TxHash** | **String** | Trade event transaction hash. | [optional] 
**Settlement** | **String** | Reference to settlement. | [optional] 
**BuyAmount** | **String** | Buy amount. | [optional] 
**SellAmount** | **String** | Sell amount. | [optional] 
**SellToken** | **String** | Address of token that is sold. | [optional] 
**BuyToken** | **String** | Address of token that is bought. | [optional] 
**Order** | **String** | Reference to order. | [optional] 
**Vid** | **Int64** |  | [optional] 
**PoolId** | **String** |  | [optional] [readonly] 
**TransactionId** | **String** |  | [optional] [readonly] 
**EvaluatedPrice** | **Double** |  | [optional] [readonly] 
**EvaluatedAmount** | **Double** |  | [optional] [readonly] 
**EvaluatedAggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CowTradeDTO = Initialize-PSOpenAPIToolsCowTradeDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Timestamp null `
 -GasPrice null `
 -GasLimit null `
 -FeeAmount null `
 -TxHash null `
 -Settlement null `
 -BuyAmount null `
 -SellAmount null `
 -SellToken null `
 -BuyToken null `
 -Order null `
 -Vid null `
 -PoolId null `
 -TransactionId null `
 -EvaluatedPrice null `
 -EvaluatedAmount null `
 -EvaluatedAggressor null
```

- Convert the resource to JSON
```powershell
$CowTradeDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

