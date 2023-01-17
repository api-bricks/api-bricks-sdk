# CoinAPI.EMS.REST.V1.Model.SushiswapPairDTO
Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Pair contract address. | [optional] 
**Factory** | **string** | Factory contract address. | [optional] 
**Name** | **string** | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**Token0** | **string** | Reference to token0 as stored in pair contract. | [optional] 
**Token1** | **string** | Reference to token0 as stored in pair contract. | [optional] 
**Reserve0** | **string** | Reserve of token0. | [optional] 
**Reserve1** | **string** | Reserve of token1. | [optional] 
**TotalSupply** | **string** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveEth** | **string** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**ReserveUsd** | **string** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**TrackedReserveEth** | **string** | Total liquidity with only tracked amount. | [optional] 
**Token0Price** | **string** | Token0 per token1. | [optional] 
**Token1Price** | **string** | Token1 per token0. | [optional] 
**VolumeToken0** | **string** | Amount of token0 swapped on this pair. | [optional] 
**VolumeToken1** | **string** | Amount of token1 swapped on this pair. | [optional] 
**VolumeUsd** | **string** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | **string** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**TxCount** | **string** | All time amount of transactions on this pair. | [optional] 
**LiquidityProviderCount** | **string** | Total number of LPs. | [optional] 
**Timestamp** | **string** | Timestamp. | [optional] 
**Block** | **string** | Block number in which pair information was created in. | [optional] 
**Vid** | **long** |  | [optional] 
**EvaluatedAsk** | **double** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

