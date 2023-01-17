# openapi_client.model.sushiswap_pair_hour_data_dto.SushiswapPairHourDataDTO

Tracks pair data across each hour.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Tracks pair data across each hour. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**date** | decimal.Decimal, int,  | decimal.Decimal,  | Hour start timestamp. | [optional] value must be a 32 bit integer
**pair** | None, str,  | NoneClass, str,  | Reference to pair. | [optional] 
**reserve_0** | None, str,  | NoneClass, str,  | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve_1** | None, str,  | NoneClass, str,  | Reserve of token1 (updated during each transaction on pair). | [optional] 
**reserve_usd** | None, str,  | NoneClass, str,  | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  | Total amount of token0 swapped throughout hour. | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  | Total amount of token1 swapped throughout hour. | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  | Total volume within pair throughout hour. | [optional] 
**tx_count** | None, str,  | NoneClass, str,  | Amount of transactions on pair throughout hour. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

