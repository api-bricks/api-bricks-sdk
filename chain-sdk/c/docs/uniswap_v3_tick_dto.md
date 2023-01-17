# uniswap_v3_tick_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**vid** | **long** |  | [optional] 
**id** | **char \*** | Identifier, format: (pool address)#(tick index) | [optional] 
**pool_address** | **char \*** | Pool address. | [optional] 
**tick_idx** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**pool** | **char \*** | Pool address. | [optional] 
**liquidity_gross** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**liquidity_net** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**price_0** | **char \*** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**price_1** | **char \*** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**volume_token_0** | **char \*** | Lifetime volume of token0 with this tick in range. | [optional] 
**volume_token_1** | **char \*** | Lifetime volume of token1 with this tick in range. | [optional] 
**volume_usd** | **char \*** | Lifetime volume in derived USD with this tick in range. | [optional] 
**untracked_volume_usd** | **char \*** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**fees_usd** | **char \*** | Fees in USD. | [optional] 
**collected_fees_token_0** | **char \*** | All time collected fees in token0. | [optional] 
**collected_fees_token_1** | **char \*** | All time collected fees in token1. | [optional] 
**collected_fees_usd** | **char \*** | All time collected fees in USD. | [optional] 
**created_at_timestamp** | **char \*** | Created time. | [optional] 
**liquidity_provider_count** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**fee_growth_outside_0x128** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 
**fee_growth_outside_1x128** | [**numerics_big_integer_t**](numerics_big_integer.md) \* |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


