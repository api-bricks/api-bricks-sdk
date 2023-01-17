# uniswap_v2_liquidity_position_snapshot_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (pair address)-(user address) | [optional] 
**liquidity_position** | **char \*** | Reference to LP identifier. | [optional] 
**timestamp** | **int** | Creation time. | [optional] 
**block** | **int** | Number of block in which LP snapshot was recorded. | [optional] 
**user** | **char \*** | Reference to user. | [optional] 
**pair** | **char \*** | Reference to the pair liquidity is being provided on. | [optional] 
**token_0_price_usd** | **char \*** | Snapshot of token0 price. | [optional] 
**token_1_price_usd** | **char \*** | Snapshot of token0 price. | [optional] 
**reserve_0** | **char \*** | Snapshot of pair token0 reserves. | [optional] 
**reserve_1** | **char \*** | Snapshot of pair token1 reserves. | [optional] 
**reserve_usd** | **char \*** | Snapshot of pair reserves in USD. | [optional] 
**liquidity_token_total_supply** | **char \*** | Snapshot of pool token supply. | [optional] 
**liquidity_token_balance** | **char \*** | Snapshot of users pool token balance. | [optional] 
**vid** | **long** |  | [optional] 
**block_range** | **char \*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


