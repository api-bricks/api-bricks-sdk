

# SushiswapPairDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**Date**](Date.md) |  |  [optional]
**recvTime** | [**Date**](Date.md) |  |  [optional]
**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional]
**id** | **String** | Identifier, format: (pair id)-(day start timestamp). |  [optional]
**date** | **Integer** | Unix timestamp for start of day. |  [optional]
**pair** | **String** | Reference to pair. |  [optional]
**token0** | **String** | Reference to token0. |  [optional]
**token1** | **String** | Reference to token1. |  [optional]
**reserve0** | **String** | Reserve of token0 (updated during each transaction on pair). |  [optional]
**reserve1** | **String** | Reserve of token1 (updated during each transaction on pair). |  [optional]
**totalSupply** | **String** | Total supply of liquidity token distributed to LPs. |  [optional]
**reserveUsd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. |  [optional]
**volumeToken0** | **String** | Total amount of token0 swapped throughout day. |  [optional]
**volumeToken1** | **String** | Total amount of token1 swapped throughout day. |  [optional]
**volumeUsd** | **String** | Total volume within pair throughout day. |  [optional]
**txCount** | **String** | Amount of transactions on pair throughout day. |  [optional]
**vid** | **Long** |  |  [optional]




