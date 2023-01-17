# openapi_client.model.sushiswap_pair_day_data_dto.SushiswapPairDayDataDTO

Tracks pair data across each day.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Tracks pair data across each day. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pair id)-(day start timestamp). | [optional] 
**date** | decimal.Decimal, int,  | decimal.Decimal,  | Unix timestamp for start of day. | [optional] value must be a 32 bit integer
**pair** | None, str,  | NoneClass, str,  | Reference to pair. | [optional] 
**token_0** | None, str,  | NoneClass, str,  | Reference to token0. | [optional] 
**token_1** | None, str,  | NoneClass, str,  | Reference to token1. | [optional] 
**reserve_0** | None, str,  | NoneClass, str,  | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve_1** | None, str,  | NoneClass, str,  | Reserve of token1 (updated during each transaction on pair). | [optional] 
**total_supply** | None, str,  | NoneClass, str,  | Total supply of liquidity token distributed to LPs. | [optional] 
**reserve_usd** | None, str,  | NoneClass, str,  | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  | Total amount of token0 swapped throughout day. | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  | Total amount of token1 swapped throughout day. | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  | Total volume within pair throughout day. | [optional] 
**tx_count** | None, str,  | NoneClass, str,  | Amount of transactions on pair throughout day. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

