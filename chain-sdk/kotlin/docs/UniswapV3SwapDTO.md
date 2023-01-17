
# UniswapV3SwapDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). |  [optional]
**transaction** | **kotlin.String** | Pointer to transaction. |  [optional]
**timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Timestamp of transaction. |  [optional]
**pool** | **kotlin.String** | Pool swap occured within. |  [optional]
**token0** | **kotlin.String** | Reference to token0 as stored in pair contract. |  [optional]
**token1** | **kotlin.String** | Reference to token1 as stored in pair contract. |  [optional]
**sender** | **kotlin.String** | Sender of the swap. |  [optional]
**recipient** | **kotlin.String** | Recipient of the swap. |  [optional]
**origin** | **kotlin.String** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction |  [optional]
**amount0** | **kotlin.String** | Delta of token0 swapped. |  [optional]
**amount1** | **kotlin.String** | Delta of token1 swapped. |  [optional]
**amountUsd** | **kotlin.String** | Derived amount of tokens sold in USD. |  [optional]
**sqrtPriceX96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**logIndex** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**evaluatedPrice** | **kotlin.Double** |  |  [optional] [readonly]
**evaluatedAmount** | **kotlin.Double** |  |  [optional] [readonly]
**evaluatedAggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  |  [optional]
**poolId** | **kotlin.String** |  |  [optional] [readonly]
**transactionId** | **kotlin.String** |  |  [optional] [readonly]



