# openapi::SushiswapBurnDTO

Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**transaction** | **character** | Reference to the transaction Burn was included in. | [optional] 
**timestamp** | **character** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**pair** | **character** | Reference to pair. | [optional] 
**liquidity** | **character** | Amount of liquidity tokens burned. | [optional] 
**sender** | **character** | Address that initiated the liquidity removal. | [optional] 
**amount_0** | **character** | Amount of token0 removed. | [optional] 
**amount_1** | **character** | Amount of token1 removed. | [optional] 
**to** | **character** | Recipient of tokens. | [optional] 
**log_index** | **character** | Index in the transaction event was emitted. | [optional] 
**amount_usd** | **character** | Derived amount based on available prices of tokens. | [optional] 
**complete** | **character** |  | [optional] 
**fee_to** | **character** | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | **character** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**vid** | **integer** |  | [optional] 


