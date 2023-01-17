# SUSHISWAP_PAIR_DAY_DATA_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (pair id)-(day start timestamp). | [optional] [default to null]
**date** | **INTEGER_32** | Unix timestamp for start of day. | [optional] [default to null]
**pair** | [**STRING_32**](STRING_32.md) | Reference to pair. | [optional] [default to null]
**token_0** | [**STRING_32**](STRING_32.md) | Reference to token0. | [optional] [default to null]
**token_1** | [**STRING_32**](STRING_32.md) | Reference to token1. | [optional] [default to null]
**reserve_0** | [**STRING_32**](STRING_32.md) | Reserve of token0 (updated during each transaction on pair). | [optional] [default to null]
**reserve_1** | [**STRING_32**](STRING_32.md) | Reserve of token1 (updated during each transaction on pair). | [optional] [default to null]
**total_supply** | [**STRING_32**](STRING_32.md) | Total supply of liquidity token distributed to LPs. | [optional] [default to null]
**reserve_usd** | [**STRING_32**](STRING_32.md) | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] [default to null]
**volume_token_0** | [**STRING_32**](STRING_32.md) | Total amount of token0 swapped throughout day. | [optional] [default to null]
**volume_token_1** | [**STRING_32**](STRING_32.md) | Total amount of token1 swapped throughout day. | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | Total volume within pair throughout day. | [optional] [default to null]
**tx_count** | [**STRING_32**](STRING_32.md) | Amount of transactions on pair throughout day. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


