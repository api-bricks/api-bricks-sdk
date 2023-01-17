

# UniswapV3SwapDTO

Swap are created for each token swap within a pair.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**entryTime** | **OffsetDateTime** |  |  [optional] |
|**recvTime** | **OffsetDateTime** |  |  [optional] |
|**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional] |
|**vid** | **Long** |  |  [optional] |
|**id** | **String** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). |  [optional] |
|**transaction** | **String** | Pointer to transaction. |  [optional] |
|**timestamp** | **OffsetDateTime** | Timestamp of transaction. |  [optional] |
|**pool** | **String** | Pool swap occured within. |  [optional] |
|**token0** | **String** | Reference to token0 as stored in pair contract. |  [optional] |
|**token1** | **String** | Reference to token1 as stored in pair contract. |  [optional] |
|**sender** | **String** | Sender of the swap. |  [optional] |
|**recipient** | **String** | Recipient of the swap. |  [optional] |
|**origin** | **String** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction |  [optional] |
|**amount0** | **String** | Delta of token0 swapped. |  [optional] |
|**amount1** | **String** | Delta of token1 swapped. |  [optional] |
|**amountUsd** | **String** | Derived amount of tokens sold in USD. |  [optional] |
|**sqrtPriceX96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional] |
|**tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional] |
|**logIndex** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional] |
|**evaluatedPrice** | **Double** |  |  [optional] [readonly] |
|**evaluatedAmount** | **Double** |  |  [optional] [readonly] |
|**evaluatedAggressor** | **TransactionsETradeAggressiveSide** |  |  [optional] |
|**poolId** | **String** |  |  [optional] [readonly] |
|**transactionId** | **String** |  |  [optional] [readonly] |



