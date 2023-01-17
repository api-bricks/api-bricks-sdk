# UNISWAP_V3_TICK_DAY_DATA_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] [default to null]
**date** | **INTEGER_32** | Timestamp rounded to current day by dividing by 86400. | [optional] [default to null]
**pool** | [**STRING_32**](STRING_32.md) | Pointer to pool. | [optional] [default to null]
**tick** | [**STRING_32**](STRING_32.md) | Pointer to tick. | [optional] [default to null]
**liquidity_gross** | [**STRING_32**](STRING_32.md) | Total liquidity pool has as tick lower or upper at end of period. | [optional] [default to null]
**liquidity_net** | [**STRING_32**](STRING_32.md) | How much liquidity changes when tick crossed at end of period. | [optional] [default to null]
**volume_token_0** | [**STRING_32**](STRING_32.md) | Hourly volume of token0 with this tick in range. | [optional] [default to null]
**volume_token_1** | [**STRING_32**](STRING_32.md) | Hourly volume of token1 with this tick in range. | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | Hourly volume in derived USD with this tick in range. | [optional] [default to null]
**fees_usd** | [**STRING_32**](STRING_32.md) | Fees in USD. | [optional] [default to null]
**fee_growth_outside_0x128** | [**STRING_32**](STRING_32.md) | Variable needed for fee computation. | [optional] [default to null]
**fee_growth_outside_1x128** | [**STRING_32**](STRING_32.md) | Variable needed for fee computation. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


