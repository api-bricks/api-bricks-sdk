# uniswap_v3_pool_hour_data_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (pool address)-(day id) | [optional] 
**period_start_unix** | **int** | Unix timestamp for start of hour. | [optional] 
**pool** | **char \*** | Pointer to pool. | [optional] 
**liquidity** | **char \*** | In range liquidity at end of period. | [optional] 
**sqrt_price** | **char \*** | Current price tracker at end of period. | [optional] 
**token_0_price** | **char \*** | Price of token0 - derived from sqrtPrice. | [optional] 
**token_1_price** | **char \*** | Price of token1 - derived from sqrtPrice. | [optional] 
**tick** | **char \*** | Current tick at end of period. | [optional] 
**fee_growth_global_0x128** | **char \*** | Tracker for global fee growth. | [optional] 
**fee_growth_global_1x128** | **char \*** | Tracker for global fee growth. | [optional] 
**tvl_usd** | **char \*** | Total value locked derived in USD at end of period. | [optional] 
**volume_token_0** | **char \*** | Volume in token0. | [optional] 
**volume_token_1** | **char \*** | Volume in token1. | [optional] 
**volume_usd** | **char \*** | Volume in USD. | [optional] 
**fees_usd** | **char \*** | Fees in USD. | [optional] 
**tx_count** | **char \*** | Number of transactions during period. | [optional] 
**open** | **char \*** | Opening price of token0. | [optional] 
**high** | **char \*** | High price of token0. | [optional] 
**low** | **char \*** | Low price of token0. | [optional] 
**close** | **char \*** | Close price of token0. | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


