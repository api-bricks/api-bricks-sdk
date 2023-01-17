
# UniswapV3PoolHourDataDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (pool address)-(day id) |  [optional]
**periodStartUnix** | **kotlin.Int** | Unix timestamp for start of hour. |  [optional]
**pool** | **kotlin.String** | Pointer to pool. |  [optional]
**liquidity** | **kotlin.String** | In range liquidity at end of period. |  [optional]
**sqrtPrice** | **kotlin.String** | Current price tracker at end of period. |  [optional]
**token0Price** | **kotlin.String** | Price of token0 - derived from sqrtPrice. |  [optional]
**token1Price** | **kotlin.String** | Price of token1 - derived from sqrtPrice. |  [optional]
**tick** | **kotlin.String** | Current tick at end of period. |  [optional]
**feeGrowthGlobal0x128** | **kotlin.String** | Tracker for global fee growth. |  [optional]
**feeGrowthGlobal1x128** | **kotlin.String** | Tracker for global fee growth. |  [optional]
**tvlUsd** | **kotlin.String** | Total value locked derived in USD at end of period. |  [optional]
**volumeToken0** | **kotlin.String** | Volume in token0. |  [optional]
**volumeToken1** | **kotlin.String** | Volume in token1. |  [optional]
**volumeUsd** | **kotlin.String** | Volume in USD. |  [optional]
**feesUsd** | **kotlin.String** | Fees in USD. |  [optional]
**txCount** | **kotlin.String** | Number of transactions during period. |  [optional]
**&#x60;open&#x60;** | **kotlin.String** | Opening price of token0. |  [optional]
**high** | **kotlin.String** | High price of token0. |  [optional]
**low** | **kotlin.String** | Low price of token0. |  [optional]
**close** | **kotlin.String** | Close price of token0. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



