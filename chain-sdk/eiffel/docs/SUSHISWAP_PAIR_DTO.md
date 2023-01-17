# SUSHISWAP_PAIR_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Pair contract address. | [optional] [default to null]
**factory** | [**STRING_32**](STRING_32.md) | Factory contract address. | [optional] [default to null]
**name** | [**STRING_32**](STRING_32.md) | Friendly name, format: (token0 name)-(token1 name) | [optional] [default to null]
**token_0** | [**STRING_32**](STRING_32.md) | Reference to token0 as stored in pair contract. | [optional] [default to null]
**token_1** | [**STRING_32**](STRING_32.md) | Reference to token0 as stored in pair contract. | [optional] [default to null]
**reserve_0** | [**STRING_32**](STRING_32.md) | Reserve of token0. | [optional] [default to null]
**reserve_1** | [**STRING_32**](STRING_32.md) | Reserve of token1. | [optional] [default to null]
**total_supply** | [**STRING_32**](STRING_32.md) | Total supply of liquidity token distributed to LPs. | [optional] [default to null]
**reserve_eth** | [**STRING_32**](STRING_32.md) | Total liquidity in pair stored as an amount of ETH. | [optional] [default to null]
**reserve_usd** | [**STRING_32**](STRING_32.md) | Total liquidity amount in pair stored as an amount of USD. | [optional] [default to null]
**tracked_reserve_eth** | [**STRING_32**](STRING_32.md) | Total liquidity with only tracked amount. | [optional] [default to null]
**token_0_price** | [**STRING_32**](STRING_32.md) | Token0 per token1. | [optional] [default to null]
**token_1_price** | [**STRING_32**](STRING_32.md) | Token1 per token0. | [optional] [default to null]
**volume_token_0** | [**STRING_32**](STRING_32.md) | Amount of token0 swapped on this pair. | [optional] [default to null]
**volume_token_1** | [**STRING_32**](STRING_32.md) | Amount of token1 swapped on this pair. | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] [default to null]
**untracked_volume_usd** | [**STRING_32**](STRING_32.md) | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] [default to null]
**tx_count** | [**STRING_32**](STRING_32.md) | All time amount of transactions on this pair. | [optional] [default to null]
**liquidity_provider_count** | [**STRING_32**](STRING_32.md) | Total number of LPs. | [optional] [default to null]
**timestamp** | [**STRING_32**](STRING_32.md) | Timestamp. | [optional] [default to null]
**block** | [**STRING_32**](STRING_32.md) | Block number in which pair information was created in. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]
**evaluated_ask** | **REAL_64** |  | [optional] [readonly] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


