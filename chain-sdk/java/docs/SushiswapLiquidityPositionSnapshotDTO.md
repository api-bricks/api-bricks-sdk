

# SushiswapLiquidityPositionSnapshotDTO

This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**entryTime** | **OffsetDateTime** |  |  [optional] |
|**recvTime** | **OffsetDateTime** |  |  [optional] |
|**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional] |
|**id** | **String** | Identifier, format: (pair address)-(user address)-(timestamp) |  [optional] |
|**liquidityPosition** | **String** | Reference to LP identifier. |  [optional] |
|**timestamp** | **Integer** | Creation time. |  [optional] |
|**block** | **Integer** | Block in which snapshot has been created. |  [optional] |
|**user** | **String** | Reference to user. |  [optional] |
|**pair** | **String** | Reference to the pair liquidity is being provided on. |  [optional] |
|**token0PriceUsd** | **String** | Snapshot of token0 price in USD. |  [optional] |
|**token1PriceUsd** | **String** | Snapshot of token0 price in USD. |  [optional] |
|**reserve0** | **String** | Snapshot of pair token0 reserves. |  [optional] |
|**reserve1** | **String** | Snapshot of pair token1 reserves. |  [optional] |
|**reserveUsd** | **String** | Snapshot of pair reserves in USD. |  [optional] |
|**liquidityTokenTotalSupply** | **String** | Snapshot of pool token supply. |  [optional] |
|**liquidityTokenBalance** | **String** | Snapshot of users pool token balance. |  [optional] |
|**vid** | **Long** |  |  [optional] |



