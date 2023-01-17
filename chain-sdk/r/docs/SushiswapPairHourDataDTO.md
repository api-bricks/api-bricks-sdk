# openapi::SushiswapPairHourDataDTO

Tracks pair data across each hour.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**date** | **integer** | Hour start timestamp. | [optional] 
**pair** | **character** | Reference to pair. | [optional] 
**reserve_0** | **character** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve_1** | **character** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**reserve_usd** | **character** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volume_token_0** | **character** | Total amount of token0 swapped throughout hour. | [optional] 
**volume_token_1** | **character** | Total amount of token1 swapped throughout hour. | [optional] 
**volume_usd** | **character** | Total volume within pair throughout hour. | [optional] 
**tx_count** | **character** | Amount of transactions on pair throughout hour. | [optional] 
**vid** | **integer** |  | [optional] 


