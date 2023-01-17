
# SushiswapPairHourDataDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (pair id)-(hour start timestamp). |  [optional]
**date** | **kotlin.Int** | Hour start timestamp. |  [optional]
**pair** | **kotlin.String** | Reference to pair. |  [optional]
**reserve0** | **kotlin.String** | Reserve of token0 (updated during each transaction on pair). |  [optional]
**reserve1** | **kotlin.String** | Reserve of token1 (updated during each transaction on pair). |  [optional]
**reserveUsd** | **kotlin.String** | Reserve of token0 plus token1 stored as a derived USD amount. |  [optional]
**volumeToken0** | **kotlin.String** | Total amount of token0 swapped throughout hour. |  [optional]
**volumeToken1** | **kotlin.String** | Total amount of token1 swapped throughout hour. |  [optional]
**volumeUsd** | **kotlin.String** | Total volume within pair throughout hour. |  [optional]
**txCount** | **kotlin.String** | Amount of transactions on pair throughout hour. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



