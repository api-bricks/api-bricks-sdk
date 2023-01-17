

# UniswapV3PoolDayDataDTO

Data accumulated and condensed into day stats for each pool.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**entryTime** | **OffsetDateTime** |  |  [optional] |
|**recvTime** | **OffsetDateTime** |  |  [optional] |
|**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional] |
|**id** | **String** | Identifier, format: (pool address)-(day id). |  [optional] |
|**date** | **Integer** | Timestamp rounded to current day by dividing by 86400 |  [optional] |
|**pool** | **String** | Pointer to pool. |  [optional] |
|**liquidity** | **String** | In range liquidity at end of period. |  [optional] |
|**sqrtPrice** | **String** | Current price tracker at end of period. |  [optional] |
|**token0Price** | **String** | Price of token0 - derived from sqrtPrice. |  [optional] |
|**token1Price** | **String** | Price of token1 - derived from sqrtPrice. |  [optional] |
|**tick** | **String** | Current tick at end of period. |  [optional] |
|**feeGrowthGlobal0x128** | **String** | Tracker for global fee growth. |  [optional] |
|**feeGrowthGlobal1x128** | **String** | Tracker for global fee growth. |  [optional] |
|**tvlUsd** | **String** | Total value locked derived in USD at end of period. |  [optional] |
|**volumeToken0** | **String** | Volume in token0. |  [optional] |
|**volumeToken1** | **String** | Volume in token1. |  [optional] |
|**volumeUsd** | **String** | Volume in USD. |  [optional] |
|**feesUsd** | **String** | Fees in USD. |  [optional] |
|**txCount** | **String** | Number of transactions during period. |  [optional] |
|**open** | **String** | Opening price of token0. |  [optional] |
|**high** | **String** | High price of token0. |  [optional] |
|**low** | **String** | Low price of token0. |  [optional] |
|**close** | **String** | Close price of token0. |  [optional] |
|**vid** | **Long** |  |  [optional] |



