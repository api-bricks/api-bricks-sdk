# SUSHISWAP_BURN_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (transaction id):(transaction.burns.length). | [optional] [default to null]
**transaction** | [**STRING_32**](STRING_32.md) | Reference to the transaction Burn was included in. | [optional] [default to null]
**timestamp** | [**STRING_32**](STRING_32.md) | Timestamp of Burn, used to sort recent liquidity removals. | [optional] [default to null]
**pair** | [**STRING_32**](STRING_32.md) | Reference to pair. | [optional] [default to null]
**liquidity** | [**STRING_32**](STRING_32.md) | Amount of liquidity tokens burned. | [optional] [default to null]
**sender** | [**STRING_32**](STRING_32.md) | Address that initiated the liquidity removal. | [optional] [default to null]
**amount_0** | [**STRING_32**](STRING_32.md) | Amount of token0 removed. | [optional] [default to null]
**amount_1** | [**STRING_32**](STRING_32.md) | Amount of token1 removed. | [optional] [default to null]
**to** | [**STRING_32**](STRING_32.md) | Recipient of tokens. | [optional] [default to null]
**log_index** | [**STRING_32**](STRING_32.md) | Index in the transaction event was emitted. | [optional] [default to null]
**amount_usd** | [**STRING_32**](STRING_32.md) | Derived amount based on available prices of tokens. | [optional] [default to null]
**complete** | **BOOLEAN** |  | [optional] [default to null]
**fee_to** | [**STRING_32**](STRING_32.md) | Address of fee recipient (if fee is on). | [optional] [default to null]
**fee_liquidity** | [**STRING_32**](STRING_32.md) | Amount of tokens sent to fee recipient (if fee is on). | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


