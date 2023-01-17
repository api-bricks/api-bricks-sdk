# OnChainDappsRestApi.SushiswapPairDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Pair contract address. | [optional] 
**factory** | **String** | Factory contract address. | [optional] 
**name** | **String** | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**token0** | **String** | Reference to token0 as stored in pair contract. | [optional] 
**token1** | **String** | Reference to token0 as stored in pair contract. | [optional] 
**reserve0** | **String** | Reserve of token0. | [optional] 
**reserve1** | **String** | Reserve of token1. | [optional] 
**totalSupply** | **String** | Total supply of liquidity token distributed to LPs. | [optional] 
**reserveEth** | **String** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**reserveUsd** | **String** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**trackedReserveEth** | **String** | Total liquidity with only tracked amount. | [optional] 
**token0Price** | **String** | Token0 per token1. | [optional] 
**token1Price** | **String** | Token1 per token0. | [optional] 
**volumeToken0** | **String** | Amount of token0 swapped on this pair. | [optional] 
**volumeToken1** | **String** | Amount of token1 swapped on this pair. | [optional] 
**volumeUsd** | **String** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**untrackedVolumeUsd** | **String** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**txCount** | **String** | All time amount of transactions on this pair. | [optional] 
**liquidityProviderCount** | **String** | Total number of LPs. | [optional] 
**timestamp** | **String** | Timestamp. | [optional] 
**block** | **String** | Block number in which pair information was created in. | [optional] 
**vid** | **Number** |  | [optional] 
**evaluatedAsk** | **Number** |  | [optional] [readonly] 


