# openapi_client.model.uniswap_v3_tick_dto.UniswapV3TickDTO

Ticks are the boundaries between discrete areas in price space.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Ticks are the boundaries between discrete areas in price space. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pool address)#(tick index) | [optional] 
**pool_address** | None, str,  | NoneClass, str,  | Pool address. | [optional] 
**tick_idx** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**pool** | None, str,  | NoneClass, str,  | Pool address. | [optional] 
**liquidity_gross** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**liquidity_net** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**price_0** | None, str,  | NoneClass, str,  | Calculated price of token0 of tick within this pool - constant. | [optional] 
**price_1** | None, str,  | NoneClass, str,  | Calculated price of token1 of tick within this pool - constant. | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  | Lifetime volume of token0 with this tick in range. | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  | Lifetime volume of token1 with this tick in range. | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  | Lifetime volume in derived USD with this tick in range. | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  | Lifetime volume in untracked USD with this tick in range. | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  | Fees in USD. | [optional] 
**collected_fees_token_0** | None, str,  | NoneClass, str,  | All time collected fees in token0. | [optional] 
**collected_fees_token_1** | None, str,  | NoneClass, str,  | All time collected fees in token1. | [optional] 
**collected_fees_usd** | None, str,  | NoneClass, str,  | All time collected fees in USD. | [optional] 
**created_at_timestamp** | str, datetime,  | str,  | Created time. | [optional] value must conform to RFC-3339 date-time
**liquidity_provider_count** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**fee_growth_outside_0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**fee_growth_outside_1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

