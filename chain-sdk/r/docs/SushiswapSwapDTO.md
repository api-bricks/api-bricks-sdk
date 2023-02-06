# openapi::SushiswapSwapDTO

Swap are created for each token swap within a pair.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Transaction hash plus index in Transaction swap array. | [optional] 
**transaction** | **character** | Reference to transaction swap was included in. | [optional] 
**timestamp** | **character** | Timestamp of swap, used for sorted lookups. | [optional] 
**pair** | **character** | Reference to pair. | [optional] 
**sender** | **character** | Address that initiated the swap. | [optional] 
**amount_0_in** | **character** | Amount of token0 sold. | [optional] 
**amount_1_in** | **character** | Amount of token1 sold. | [optional] 
**amount_0_out** | **character** | Amount of token0 received. | [optional] 
**amount_1_out** | **character** | Amount of token1 received. | [optional] 
**to** | **character** | Recipient of output tokens. | [optional] 
**log_index** | **character** | Event index within transaction. | [optional] 
**amount_usd** | **character** | Derived amount of tokens sold in USD. | [optional] 
**vid** | **integer** |  | [optional] 
**pool_id** | **character** |  | [optional] [readonly] 
**transaction_id** | **character** |  | [optional] [readonly] 
**evaluated_price** | **numeric** |  | [optional] [readonly] 
**evaluated_amount** | **numeric** |  | [optional] [readonly] 
**evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](Transactions.ETradeAggressiveSide.md) |  | [optional] [Enum: ] 


