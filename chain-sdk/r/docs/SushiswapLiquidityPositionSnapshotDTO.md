# openapi::SushiswapLiquidityPositionSnapshotDTO

This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
**liquidity_position** | **character** | Reference to LP identifier. | [optional] 
**timestamp** | **integer** | Creation time. | [optional] 
**block** | **integer** | Block in which snapshot has been created. | [optional] 
**user** | **character** | Reference to user. | [optional] 
**pair** | **character** | Reference to the pair liquidity is being provided on. | [optional] 
**token_0_price_usd** | **character** | Snapshot of token0 price in USD. | [optional] 
**token_1_price_usd** | **character** | Snapshot of token0 price in USD. | [optional] 
**reserve_0** | **character** | Snapshot of pair token0 reserves. | [optional] 
**reserve_1** | **character** | Snapshot of pair token1 reserves. | [optional] 
**reserve_usd** | **character** | Snapshot of pair reserves in USD. | [optional] 
**liquidity_token_total_supply** | **character** | Snapshot of pool token supply. | [optional] 
**liquidity_token_balance** | **character** | Snapshot of users pool token balance. | [optional] 
**vid** | **integer** |  | [optional] 


