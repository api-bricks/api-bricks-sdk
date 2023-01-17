# uniswap_v3_tick_day_data_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**date** | **int** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**pool** | **char \*** | Pointer to pool. | [optional] 
**tick** | **char \*** | Pointer to tick. | [optional] 
**liquidity_gross** | **char \*** | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**liquidity_net** | **char \*** | How much liquidity changes when tick crossed at end of period. | [optional] 
**volume_token_0** | **char \*** | Hourly volume of token0 with this tick in range. | [optional] 
**volume_token_1** | **char \*** | Hourly volume of token1 with this tick in range. | [optional] 
**volume_usd** | **char \*** | Hourly volume in derived USD with this tick in range. | [optional] 
**fees_usd** | **char \*** | Fees in USD. | [optional] 
**fee_growth_outside_0x128** | **char \*** | Variable needed for fee computation. | [optional] 
**fee_growth_outside_1x128** | **char \*** | Variable needed for fee computation. | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


