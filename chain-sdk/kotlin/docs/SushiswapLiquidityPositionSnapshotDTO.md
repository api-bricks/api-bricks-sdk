
# SushiswapLiquidityPositionSnapshotDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (pair address)-(user address)-(timestamp) |  [optional]
**liquidityPosition** | **kotlin.String** | Reference to LP identifier. |  [optional]
**timestamp** | **kotlin.Int** | Creation time. |  [optional]
**block** | **kotlin.Int** | Block in which snapshot has been created. |  [optional]
**user** | **kotlin.String** | Reference to user. |  [optional]
**pair** | **kotlin.String** | Reference to the pair liquidity is being provided on. |  [optional]
**token0PriceUsd** | **kotlin.String** | Snapshot of token0 price in USD. |  [optional]
**token1PriceUsd** | **kotlin.String** | Snapshot of token0 price in USD. |  [optional]
**reserve0** | **kotlin.String** | Snapshot of pair token0 reserves. |  [optional]
**reserve1** | **kotlin.String** | Snapshot of pair token1 reserves. |  [optional]
**reserveUsd** | **kotlin.String** | Snapshot of pair reserves in USD. |  [optional]
**liquidityTokenTotalSupply** | **kotlin.String** | Snapshot of pool token supply. |  [optional]
**liquidityTokenBalance** | **kotlin.String** | Snapshot of users pool token balance. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



