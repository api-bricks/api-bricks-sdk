# openapi_client.model.sushiswap_mint_dto.SushiswapMintDTO

Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**transaction** | None, str,  | NoneClass, str,  | Reference to the transaction Mint was included in. | [optional] 
**timestamp** | None, str,  | NoneClass, str,  | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**pair** | None, str,  | NoneClass, str,  | Reference to pair. | [optional] 
**to** | None, str,  | NoneClass, str,  | Recipient of liquidity tokens. | [optional] 
**liquidity** | None, str,  | NoneClass, str,  | Amount of liquidity tokens minted. | [optional] 
**sender** | None, str,  | NoneClass, str,  | Address that initiated the liquidity provision. | [optional] 
**amount_0** | None, str,  | NoneClass, str,  | Amount of token0 provided. | [optional] 
**amount_1** | None, str,  | NoneClass, str,  | Amount of token1 provided. | [optional] 
**log_index** | None, str,  | NoneClass, str,  | Index in the transaction event was emitted. | [optional] 
**amount_usd** | None, str,  | NoneClass, str,  | Derived USD value of token0 amount plus token1 amount. | [optional] 
**fee_to** | None, str,  | NoneClass, str,  | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | None, str,  | NoneClass, str,  | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

