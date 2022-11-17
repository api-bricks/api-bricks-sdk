
# UniswapV2PairDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | Pair contract address. |  [optional]
**token0** | **kotlin.String** | Reference to token0 as stored in pair contract. |  [optional]
**token1** | **kotlin.String** | Reference to token1 as stored in pair contract. |  [optional]
**reserve0** | **kotlin.String** | Reserve of token0. |  [optional]
**reserve1** | **kotlin.String** | Reserve of token1. |  [optional]
**totalSupply** | **kotlin.String** | Total supply of liquidity token distributed to LPs. |  [optional]
**reserveEth** | **kotlin.String** | Total liquidity in pair stored as an amount of ETH. |  [optional]
**reserveUsd** | **kotlin.String** | Total liquidity amount in pair stored as an amount of USD. |  [optional]
**trackedReserveEth** | **kotlin.String** | Total liquidity with only tracked amount. |  [optional]
**token0Price** | **kotlin.String** | Token0 per token1. |  [optional]
**token1Price** | **kotlin.String** | Token1 per token0. |  [optional]
**volumeToken0** | **kotlin.String** | Amount of token0 swapped on this pair. |  [optional]
**volumeToken1** | **kotlin.String** | Amount of token1 swapped on this pair. |  [optional]
**volumeUsd** | **kotlin.String** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). |  [optional]
**untrackedVolumeUsd** | **kotlin.String** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. |  [optional]
**txCount** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**createdAtTimestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Timestamp contract was created. |  [optional]
**liquidityProviderCount** | **kotlin.String** | Total number of LPs. |  [optional]
**evaluatedAsk** | **kotlin.Double** |  |  [optional] [readonly]



