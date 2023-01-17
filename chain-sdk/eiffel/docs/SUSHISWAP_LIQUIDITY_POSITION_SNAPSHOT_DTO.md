# SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (pair address)-(user address)-(timestamp) | [optional] [default to null]
**liquidity_position** | [**STRING_32**](STRING_32.md) | Reference to LP identifier. | [optional] [default to null]
**timestamp** | **INTEGER_32** | Creation time. | [optional] [default to null]
**block** | **INTEGER_32** | Block in which snapshot has been created. | [optional] [default to null]
**user** | [**STRING_32**](STRING_32.md) | Reference to user. | [optional] [default to null]
**pair** | [**STRING_32**](STRING_32.md) | Reference to the pair liquidity is being provided on. | [optional] [default to null]
**token_0_price_usd** | [**STRING_32**](STRING_32.md) | Snapshot of token0 price in USD. | [optional] [default to null]
**token_1_price_usd** | [**STRING_32**](STRING_32.md) | Snapshot of token0 price in USD. | [optional] [default to null]
**reserve_0** | [**STRING_32**](STRING_32.md) | Snapshot of pair token0 reserves. | [optional] [default to null]
**reserve_1** | [**STRING_32**](STRING_32.md) | Snapshot of pair token1 reserves. | [optional] [default to null]
**reserve_usd** | [**STRING_32**](STRING_32.md) | Snapshot of pair reserves in USD. | [optional] [default to null]
**liquidity_token_total_supply** | [**STRING_32**](STRING_32.md) | Snapshot of pool token supply. | [optional] [default to null]
**liquidity_token_balance** | [**STRING_32**](STRING_32.md) | Snapshot of users pool token balance. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


