# openapi::UniswapV3PoolDayDataDTO

Data accumulated and condensed into day stats for each pool.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (pool address)-(day id). | [optional] 
**date** | **integer** | Timestamp rounded to current day by dividing by 86400 | [optional] 
**pool** | **character** | Pointer to pool. | [optional] 
**liquidity** | **character** | In range liquidity at end of period. | [optional] 
**sqrt_price** | **character** | Current price tracker at end of period. | [optional] 
**token_0_price** | **character** | Price of token0 - derived from sqrtPrice. | [optional] 
**token_1_price** | **character** | Price of token1 - derived from sqrtPrice. | [optional] 
**tick** | **character** | Current tick at end of period. | [optional] 
**fee_growth_global_0x128** | **character** | Tracker for global fee growth. | [optional] 
**fee_growth_global_1x128** | **character** | Tracker for global fee growth. | [optional] 
**tvl_usd** | **character** | Total value locked derived in USD at end of period. | [optional] 
**volume_token_0** | **character** | Volume in token0. | [optional] 
**volume_token_1** | **character** | Volume in token1. | [optional] 
**volume_usd** | **character** | Volume in USD. | [optional] 
**fees_usd** | **character** | Fees in USD. | [optional] 
**tx_count** | **character** | Number of transactions during period. | [optional] 
**open** | **character** | Opening price of token0. | [optional] 
**high** | **character** | High price of token0. | [optional] 
**low** | **character** | Low price of token0. | [optional] 
**close** | **character** | Close price of token0. | [optional] 
**vid** | **integer** |  | [optional] 


