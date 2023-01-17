# openapi::SushiswapMintDTO

Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**transaction** | **character** | Reference to the transaction Mint was included in. | [optional] 
**timestamp** | **character** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**pair** | **character** | Reference to pair. | [optional] 
**to** | **character** | Recipient of liquidity tokens. | [optional] 
**liquidity** | **character** | Amount of liquidity tokens minted. | [optional] 
**sender** | **character** | Address that initiated the liquidity provision. | [optional] 
**amount_0** | **character** | Amount of token0 provided. | [optional] 
**amount_1** | **character** | Amount of token1 provided. | [optional] 
**log_index** | **character** | Index in the transaction event was emitted. | [optional] 
**amount_usd** | **character** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**fee_to** | **character** | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | **character** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**vid** | **integer** |  | [optional] 


