

# UniswapV2PairHourDataDTO

Tracks pair data across each hour.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**entryTime** | **OffsetDateTime** |  |  [optional] |
|**recvTime** | **OffsetDateTime** |  |  [optional] |
|**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional] |
|**id** | **String** |  |  [optional] |
|**hourStartUnix** | **Integer** | Unix timestamp for start of hour. |  [optional] |
|**pair** | **String** | Address for pair contract. |  [optional] |
|**reserve0** | **String** | Reserve of token0 (updated during each transaction on pair). |  [optional] |
|**reserve1** | **String** | Reserve of token1 (updated during each transaction on pair). |  [optional] |
|**totalSupply** | **String** | Total supply of liquidity token distributed to LPs. |  [optional] |
|**reserveUsd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. |  [optional] |
|**hourlyVolumeToken0** | **String** | Total amount of token0 swapped throughout hour. |  [optional] |
|**hourlyVolumeToken1** | **String** | Total amount of token1 swapped throughout hour. |  [optional] |
|**hourlyVolumeUsd** | **String** | Total volume within pair throughout hour. |  [optional] |
|**hourlyTxns** | **String** | Amount of transactions on pair throughout hour. |  [optional] |
|**vid** | **Long** |  |  [optional] |



