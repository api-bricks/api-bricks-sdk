# openapi::SushiswapPairDTO

Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Pair contract address. | [optional] 
**factory** | **character** | Factory contract address. | [optional] 
**name** | **character** | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**token_0** | **character** | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | **character** | Reference to token0 as stored in pair contract. | [optional] 
**reserve_0** | **character** | Reserve of token0. | [optional] 
**reserve_1** | **character** | Reserve of token1. | [optional] 
**total_supply** | **character** | Total supply of liquidity token distributed to LPs. | [optional] 
**reserve_eth** | **character** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**reserve_usd** | **character** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**tracked_reserve_eth** | **character** | Total liquidity with only tracked amount. | [optional] 
**token_0_price** | **character** | Token0 per token1. | [optional] 
**token_1_price** | **character** | Token1 per token0. | [optional] 
**volume_token_0** | **character** | Amount of token0 swapped on this pair. | [optional] 
**volume_token_1** | **character** | Amount of token1 swapped on this pair. | [optional] 
**volume_usd** | **character** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**untracked_volume_usd** | **character** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**tx_count** | **character** | All time amount of transactions on this pair. | [optional] 
**liquidity_provider_count** | **character** | Total number of LPs. | [optional] 
**timestamp** | **character** | Timestamp. | [optional] 
**block** | **character** | Block number in which pair information was created in. | [optional] 
**vid** | **integer** |  | [optional] 
**evaluated_ask** | **numeric** |  | [optional] [readonly] 


