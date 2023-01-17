# UNISWAP_V3_TICK_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (pool address)#(tick index) | [optional] [default to null]
**pool_address** | [**STRING_32**](STRING_32.md) | Pool address. | [optional] [default to null]
**tick_idx** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**pool** | [**STRING_32**](STRING_32.md) | Pool address. | [optional] [default to null]
**liquidity_gross** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**liquidity_net** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**price_0** | [**STRING_32**](STRING_32.md) | Calculated price of token0 of tick within this pool - constant. | [optional] [default to null]
**price_1** | [**STRING_32**](STRING_32.md) | Calculated price of token1 of tick within this pool - constant. | [optional] [default to null]
**volume_token_0** | [**STRING_32**](STRING_32.md) | Lifetime volume of token0 with this tick in range. | [optional] [default to null]
**volume_token_1** | [**STRING_32**](STRING_32.md) | Lifetime volume of token1 with this tick in range. | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | Lifetime volume in derived USD with this tick in range. | [optional] [default to null]
**untracked_volume_usd** | [**STRING_32**](STRING_32.md) | Lifetime volume in untracked USD with this tick in range. | [optional] [default to null]
**fees_usd** | [**STRING_32**](STRING_32.md) | Fees in USD. | [optional] [default to null]
**collected_fees_token_0** | [**STRING_32**](STRING_32.md) | All time collected fees in token0. | [optional] [default to null]
**collected_fees_token_1** | [**STRING_32**](STRING_32.md) | All time collected fees in token1. | [optional] [default to null]
**collected_fees_usd** | [**STRING_32**](STRING_32.md) | All time collected fees in USD. | [optional] [default to null]
**created_at_timestamp** | [**DATE_TIME**](DATE_TIME.md) | Created time. | [optional] [default to null]
**liquidity_provider_count** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**fee_growth_outside_0x128** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**fee_growth_outside_1x128** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


