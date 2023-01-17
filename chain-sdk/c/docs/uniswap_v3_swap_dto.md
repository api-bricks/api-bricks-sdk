# uniswap_v3_swap_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**vid** | **long** |  | [optional] 
**id** | **char \*** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
**transaction** | **char \*** | Pointer to transaction. | [optional] 
**timestamp** | **char \*** | Timestamp of transaction. | [optional] 
**pool** | **char \*** | Pool swap occured within. | [optional] 
**token_0** | **char \*** | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | **char \*** | Reference to token1 as stored in pair contract. | [optional] 
**sender** | **char \*** | Sender of the swap. | [optional] 
**recipient** | **char \*** | Recipient of the swap. | [optional] 
**origin** | **char \*** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] 
**amount_0** | **char \*** | Delta of token0 swapped. | [optional] 
**amount_1** | **char \*** | Delta of token1 swapped. | [optional] 
**amount_usd** | **char \*** | Derived amount of tokens sold in USD. | [optional] 
**sqrt_price_x96** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**tick** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**log_index** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**evaluated_price** | **double** |  | [optional] [readonly] 
**evaluated_amount** | **double** |  | [optional] [readonly] 
**evaluated_aggressor** | **transactions_e_trade_aggressive_side_t \*** |  | [optional] 
**pool_id** | **char \*** |  | [optional] [readonly] 
**transaction_id** | **char \*** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


