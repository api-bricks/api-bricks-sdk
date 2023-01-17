# openapi_client.model.sushiswap_burn_dto.SushiswapBurnDTO

Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**transaction** | None, str,  | NoneClass, str,  | Reference to the transaction Burn was included in. | [optional] 
**timestamp** | None, str,  | NoneClass, str,  | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**pair** | None, str,  | NoneClass, str,  | Reference to pair. | [optional] 
**liquidity** | None, str,  | NoneClass, str,  | Amount of liquidity tokens burned. | [optional] 
**sender** | None, str,  | NoneClass, str,  | Address that initiated the liquidity removal. | [optional] 
**amount_0** | None, str,  | NoneClass, str,  | Amount of token0 removed. | [optional] 
**amount_1** | None, str,  | NoneClass, str,  | Amount of token1 removed. | [optional] 
**to** | None, str,  | NoneClass, str,  | Recipient of tokens. | [optional] 
**log_index** | None, str,  | NoneClass, str,  | Index in the transaction event was emitted. | [optional] 
**amount_usd** | None, str,  | NoneClass, str,  | Derived amount based on available prices of tokens. | [optional] 
**complete** | bool,  | BoolClass,  |  | [optional] 
**fee_to** | None, str,  | NoneClass, str,  | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | None, str,  | NoneClass, str,  | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

