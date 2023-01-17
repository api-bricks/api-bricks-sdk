# openapi::UniswapV3TickDTO

Ticks are the boundaries between discrete areas in price space.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**vid** | **integer** |  | [optional] 
**id** | **character** | Identifier, format: (pool address)#(tick index) | [optional] 
**pool_address** | **character** | Pool address. | [optional] 
**tick_idx** | [**NumericsBigInteger**](Numerics.BigInteger.md) |  | [optional] 
**pool** | **character** | Pool address. | [optional] 
**liquidity_gross** | [**NumericsBigInteger**](Numerics.BigInteger.md) |  | [optional] 
**liquidity_net** | [**NumericsBigInteger**](Numerics.BigInteger.md) |  | [optional] 
**price_0** | **character** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**price_1** | **character** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**volume_token_0** | **character** | Lifetime volume of token0 with this tick in range. | [optional] 
**volume_token_1** | **character** | Lifetime volume of token1 with this tick in range. | [optional] 
**volume_usd** | **character** | Lifetime volume in derived USD with this tick in range. | [optional] 
**untracked_volume_usd** | **character** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**fees_usd** | **character** | Fees in USD. | [optional] 
**collected_fees_token_0** | **character** | All time collected fees in token0. | [optional] 
**collected_fees_token_1** | **character** | All time collected fees in token1. | [optional] 
**collected_fees_usd** | **character** | All time collected fees in USD. | [optional] 
**created_at_timestamp** | **character** | Created time. | [optional] 
**liquidity_provider_count** | [**NumericsBigInteger**](Numerics.BigInteger.md) |  | [optional] 
**fee_growth_outside_0x128** | [**NumericsBigInteger**](Numerics.BigInteger.md) |  | [optional] 
**fee_growth_outside_1x128** | [**NumericsBigInteger**](Numerics.BigInteger.md) |  | [optional] 


