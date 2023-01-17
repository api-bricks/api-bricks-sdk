# openapi::UniswapV3TickDayDataDTO

Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**date** | **integer** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**pool** | **character** | Pointer to pool. | [optional] 
**tick** | **character** | Pointer to tick. | [optional] 
**liquidity_gross** | **character** | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**liquidity_net** | **character** | How much liquidity changes when tick crossed at end of period. | [optional] 
**volume_token_0** | **character** | Hourly volume of token0 with this tick in range. | [optional] 
**volume_token_1** | **character** | Hourly volume of token1 with this tick in range. | [optional] 
**volume_usd** | **character** | Hourly volume in derived USD with this tick in range. | [optional] 
**fees_usd** | **character** | Fees in USD. | [optional] 
**fee_growth_outside_0x128** | **character** | Variable needed for fee computation. | [optional] 
**fee_growth_outside_1x128** | **character** | Variable needed for fee computation. | [optional] 
**vid** | **integer** |  | [optional] 


