# openapi_client.model.uniswap_v3_tick_day_data_dto.UniswapV3TickDayDataDTO

Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**date** | decimal.Decimal, int,  | decimal.Decimal,  | Timestamp rounded to current day by dividing by 86400. | [optional] value must be a 32 bit integer
**pool** | None, str,  | NoneClass, str,  | Pointer to pool. | [optional] 
**tick** | None, str,  | NoneClass, str,  | Pointer to tick. | [optional] 
**liquidity_gross** | None, str,  | NoneClass, str,  | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**liquidity_net** | None, str,  | NoneClass, str,  | How much liquidity changes when tick crossed at end of period. | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  | Hourly volume of token0 with this tick in range. | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  | Hourly volume of token1 with this tick in range. | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  | Hourly volume in derived USD with this tick in range. | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  | Fees in USD. | [optional] 
**fee_growth_outside_0x128** | None, str,  | NoneClass, str,  | Variable needed for fee computation. | [optional] 
**fee_growth_outside_1x128** | None, str,  | NoneClass, str,  | Variable needed for fee computation. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

