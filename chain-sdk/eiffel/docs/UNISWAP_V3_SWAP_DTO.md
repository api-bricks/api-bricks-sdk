# UNISWAP_V3_SWAP_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] [default to null]
**transaction** | [**STRING_32**](STRING_32.md) | Pointer to transaction. | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Timestamp of transaction. | [optional] [default to null]
**pool** | [**STRING_32**](STRING_32.md) | Pool swap occured within. | [optional] [default to null]
**token_0** | [**STRING_32**](STRING_32.md) | Reference to token0 as stored in pair contract. | [optional] [default to null]
**token_1** | [**STRING_32**](STRING_32.md) | Reference to token1 as stored in pair contract. | [optional] [default to null]
**sender** | [**STRING_32**](STRING_32.md) | Sender of the swap. | [optional] [default to null]
**recipient** | [**STRING_32**](STRING_32.md) | Recipient of the swap. | [optional] [default to null]
**origin** | [**STRING_32**](STRING_32.md) | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] [default to null]
**amount_0** | [**STRING_32**](STRING_32.md) | Delta of token0 swapped. | [optional] [default to null]
**amount_1** | [**STRING_32**](STRING_32.md) | Delta of token1 swapped. | [optional] [default to null]
**amount_usd** | [**STRING_32**](STRING_32.md) | Derived amount of tokens sold in USD. | [optional] [default to null]
**sqrt_price_x96** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**tick** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**log_index** | [**NUMERICS_BIG_INTEGER**](Numerics.BigInteger.md) |  | [optional] [default to null]
**evaluated_price** | **REAL_64** |  | [optional] [readonly] [default to null]
**evaluated_amount** | **REAL_64** |  | [optional] [readonly] [default to null]
**evaluated_aggressor** | [**TRANSACTIONS_E_TRADE_AGGRESSIVE_SIDE**](Transactions.ETradeAggressiveSide.md) |  | [optional] [default to null]
**pool_id** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]
**transaction_id** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


