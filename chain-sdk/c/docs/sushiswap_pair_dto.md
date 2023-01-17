# sushiswap_pair_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Pair contract address. | [optional] 
**factory** | **char \*** | Factory contract address. | [optional] 
**name** | **char \*** | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**token_0** | **char \*** | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | **char \*** | Reference to token0 as stored in pair contract. | [optional] 
**reserve_0** | **char \*** | Reserve of token0. | [optional] 
**reserve_1** | **char \*** | Reserve of token1. | [optional] 
**total_supply** | **char \*** | Total supply of liquidity token distributed to LPs. | [optional] 
**reserve_eth** | **char \*** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**reserve_usd** | **char \*** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**tracked_reserve_eth** | **char \*** | Total liquidity with only tracked amount. | [optional] 
**token_0_price** | **char \*** | Token0 per token1. | [optional] 
**token_1_price** | **char \*** | Token1 per token0. | [optional] 
**volume_token_0** | **char \*** | Amount of token0 swapped on this pair. | [optional] 
**volume_token_1** | **char \*** | Amount of token1 swapped on this pair. | [optional] 
**volume_usd** | **char \*** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**untracked_volume_usd** | **char \*** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**tx_count** | **char \*** | All time amount of transactions on this pair. | [optional] 
**liquidity_provider_count** | **char \*** | Total number of LPs. | [optional] 
**timestamp** | **char \*** | Timestamp. | [optional] 
**block** | **char \*** | Block number in which pair information was created in. | [optional] 
**vid** | **long** |  | [optional] 
**evaluated_ask** | **double** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


