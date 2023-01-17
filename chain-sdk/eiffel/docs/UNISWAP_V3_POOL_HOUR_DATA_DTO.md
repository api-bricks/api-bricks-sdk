# UNISWAP_V3_POOL_HOUR_DATA_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (pool address)-(day id) | [optional] [default to null]
**period_start_unix** | **INTEGER_32** | Unix timestamp for start of hour. | [optional] [default to null]
**pool** | [**STRING_32**](STRING_32.md) | Pointer to pool. | [optional] [default to null]
**liquidity** | [**STRING_32**](STRING_32.md) | In range liquidity at end of period. | [optional] [default to null]
**sqrt_price** | [**STRING_32**](STRING_32.md) | Current price tracker at end of period. | [optional] [default to null]
**token_0_price** | [**STRING_32**](STRING_32.md) | Price of token0 - derived from sqrtPrice. | [optional] [default to null]
**token_1_price** | [**STRING_32**](STRING_32.md) | Price of token1 - derived from sqrtPrice. | [optional] [default to null]
**tick** | [**STRING_32**](STRING_32.md) | Current tick at end of period. | [optional] [default to null]
**fee_growth_global_0x128** | [**STRING_32**](STRING_32.md) | Tracker for global fee growth. | [optional] [default to null]
**fee_growth_global_1x128** | [**STRING_32**](STRING_32.md) | Tracker for global fee growth. | [optional] [default to null]
**tvl_usd** | [**STRING_32**](STRING_32.md) | Total value locked derived in USD at end of period. | [optional] [default to null]
**volume_token_0** | [**STRING_32**](STRING_32.md) | Volume in token0. | [optional] [default to null]
**volume_token_1** | [**STRING_32**](STRING_32.md) | Volume in token1. | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | Volume in USD. | [optional] [default to null]
**fees_usd** | [**STRING_32**](STRING_32.md) | Fees in USD. | [optional] [default to null]
**tx_count** | [**STRING_32**](STRING_32.md) | Number of transactions during period. | [optional] [default to null]
**open** | [**STRING_32**](STRING_32.md) | Opening price of token0. | [optional] [default to null]
**high** | [**STRING_32**](STRING_32.md) | High price of token0. | [optional] [default to null]
**low** | [**STRING_32**](STRING_32.md) | Low price of token0. | [optional] [default to null]
**close** | [**STRING_32**](STRING_32.md) | Close price of token0. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


