# SUSHISWAP_MINT_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] [default to null]
**transaction** | [**STRING_32**](STRING_32.md) | Reference to the transaction Mint was included in. | [optional] [default to null]
**timestamp** | [**STRING_32**](STRING_32.md) | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] [default to null]
**pair** | [**STRING_32**](STRING_32.md) | Reference to pair. | [optional] [default to null]
**to** | [**STRING_32**](STRING_32.md) | Recipient of liquidity tokens. | [optional] [default to null]
**liquidity** | [**STRING_32**](STRING_32.md) | Amount of liquidity tokens minted. | [optional] [default to null]
**sender** | [**STRING_32**](STRING_32.md) | Address that initiated the liquidity provision. | [optional] [default to null]
**amount_0** | [**STRING_32**](STRING_32.md) | Amount of token0 provided. | [optional] [default to null]
**amount_1** | [**STRING_32**](STRING_32.md) | Amount of token1 provided. | [optional] [default to null]
**log_index** | [**STRING_32**](STRING_32.md) | Index in the transaction event was emitted. | [optional] [default to null]
**amount_usd** | [**STRING_32**](STRING_32.md) | Derived USD value of token0 amount plus token1 amount. | [optional] [default to null]
**fee_to** | [**STRING_32**](STRING_32.md) | Address of fee recipient (if fee is on). | [optional] [default to null]
**fee_liquidity** | [**STRING_32**](STRING_32.md) | Amount of liquidity sent to fee recipient (if fee is on). | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


