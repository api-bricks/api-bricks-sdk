# openapi_client.model.sushiswap_liquidity_position_dto.SushiswapLiquidityPositionDTO

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pair address)-(user address) | [optional] 
**user** | None, str,  | NoneClass, str,  | User address. | [optional] 
**pair** | None, str,  | NoneClass, str,  | Pair address. | [optional] 
**liquidity_token_balance** | None, str,  | NoneClass, str,  | Amount of LP tokens minted for this position. | [optional] 
**block** | decimal.Decimal, int,  | decimal.Decimal,  | Block number at which position was created. | [optional] value must be a 32 bit integer
**timestamp** | decimal.Decimal, int,  | decimal.Decimal,  | Creation time. | [optional] value must be a 32 bit integer
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

