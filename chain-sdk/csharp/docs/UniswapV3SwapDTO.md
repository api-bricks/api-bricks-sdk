
# CoinAPI.EMS.REST.V1.Model.UniswapV3SwapDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Vid** | **long** |  | [optional] 
**Id** | **string** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
**Transaction** | **string** | Pointer to transaction. | [optional] 
**Timestamp** | **DateTime** | Timestamp of transaction. | [optional] 
**Pool** | **string** | Pool swap occured within. | [optional] 
**Token0** | **string** | Reference to token0 as stored in pair contract. | [optional] 
**Token1** | **string** | Reference to token1 as stored in pair contract. | [optional] 
**Sender** | **string** | Sender of the swap. | [optional] 
**Recipient** | **string** | Recipient of the swap. | [optional] 
**Origin** | **string** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] 
**Amount0** | **string** | Delta of token0 swapped. | [optional] 
**Amount1** | **string** | Delta of token1 swapped. | [optional] 
**AmountUsd** | **string** | Derived amount of tokens sold in USD. | [optional] 
**SqrtPriceX96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**Tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**LogIndex** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**EvaluatedPrice** | **double** |  | [optional] [readonly] 
**EvaluatedAmount** | **double** |  | [optional] [readonly] 
**EvaluatedAggressor** | **TransactionsETradeAggressiveSide** |  | [optional] 
**PoolId** | **string** |  | [optional] [readonly] 
**TransactionId** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

