# UniswapV3SwapDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
**Transaction** | **String** | Pointer to transaction. | [optional] 
**Timestamp** | **System.DateTime** | Timestamp of transaction. | [optional] 
**Pool** | **String** | Pool swap occured within. | [optional] 
**Token0** | **String** | Reference to token0 as stored in pair contract. | [optional] 
**Token1** | **String** | Reference to token1 as stored in pair contract. | [optional] 
**VarSender** | **String** | Sender of the swap. | [optional] 
**Recipient** | **String** | Recipient of the swap. | [optional] 
**Origin** | **String** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] 
**Amount0** | **String** | Delta of token0 swapped. | [optional] 
**Amount1** | **String** | Delta of token1 swapped. | [optional] 
**AmountUsd** | **String** | Derived amount of tokens sold in USD. | [optional] 
**SqrtPriceX96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**Tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**LogIndex** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**EvaluatedPrice** | **Double** |  | [optional] [readonly] 
**EvaluatedAmount** | **Double** |  | [optional] [readonly] 
**EvaluatedAggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 
**PoolId** | **String** |  | [optional] [readonly] 
**TransactionId** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UniswapV3SwapDTO = Initialize-PSOpenAPIToolsUniswapV3SwapDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pool null `
 -Token0 null `
 -Token1 null `
 -VarSender null `
 -Recipient null `
 -Origin null `
 -Amount0 null `
 -Amount1 null `
 -AmountUsd null `
 -SqrtPriceX96 null `
 -Tick null `
 -LogIndex null `
 -EvaluatedPrice null `
 -EvaluatedAmount null `
 -EvaluatedAggressor null `
 -PoolId null `
 -TransactionId null
```

- Convert the resource to JSON
```powershell
$UniswapV3SwapDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

