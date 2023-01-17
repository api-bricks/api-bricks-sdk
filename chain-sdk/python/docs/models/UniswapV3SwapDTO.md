# openapi_client.model.uniswap_v3_swap_dto.UniswapV3SwapDTO

Swap are created for each token swap within a pair.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Swap are created for each token swap within a pair. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
**transaction** | None, str,  | NoneClass, str,  | Pointer to transaction. | [optional] 
**timestamp** | str, datetime,  | str,  | Timestamp of transaction. | [optional] value must conform to RFC-3339 date-time
**pool** | None, str,  | NoneClass, str,  | Pool swap occured within. | [optional] 
**token_0** | None, str,  | NoneClass, str,  | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | None, str,  | NoneClass, str,  | Reference to token1 as stored in pair contract. | [optional] 
**sender** | None, str,  | NoneClass, str,  | Sender of the swap. | [optional] 
**recipient** | None, str,  | NoneClass, str,  | Recipient of the swap. | [optional] 
**origin** | None, str,  | NoneClass, str,  | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] 
**amount_0** | None, str,  | NoneClass, str,  | Delta of token0 swapped. | [optional] 
**amount_1** | None, str,  | NoneClass, str,  | Delta of token1 swapped. | [optional] 
**amount_usd** | None, str,  | NoneClass, str,  | Derived amount of tokens sold in USD. | [optional] 
**sqrt_price_x96** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**tick** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**log_index** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**evaluated_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float
**evaluated_amount** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float
**evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 
**pool_id** | None, str,  | NoneClass, str,  |  | [optional] 
**transaction_id** | None, str,  | NoneClass, str,  |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

