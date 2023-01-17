
# SushiswapPairDayDataDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (pair id)-(day start timestamp). |  [optional]
**date** | **kotlin.Int** | Unix timestamp for start of day. |  [optional]
**pair** | **kotlin.String** | Reference to pair. |  [optional]
**token0** | **kotlin.String** | Reference to token0. |  [optional]
**token1** | **kotlin.String** | Reference to token1. |  [optional]
**reserve0** | **kotlin.String** | Reserve of token0 (updated during each transaction on pair). |  [optional]
**reserve1** | **kotlin.String** | Reserve of token1 (updated during each transaction on pair). |  [optional]
**totalSupply** | **kotlin.String** | Total supply of liquidity token distributed to LPs. |  [optional]
**reserveUsd** | **kotlin.String** | Reserve of token0 plus token1 stored as a derived USD amount. |  [optional]
**volumeToken0** | **kotlin.String** | Total amount of token0 swapped throughout day. |  [optional]
**volumeToken1** | **kotlin.String** | Total amount of token1 swapped throughout day. |  [optional]
**volumeUsd** | **kotlin.String** | Total volume within pair throughout day. |  [optional]
**txCount** | **kotlin.String** | Amount of transactions on pair throughout day. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



