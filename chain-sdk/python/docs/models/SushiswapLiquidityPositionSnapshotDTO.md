# openapi_client.model.sushiswap_liquidity_position_snapshot_dto.SushiswapLiquidityPositionSnapshotDTO

This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This entity is used to store data about a user&#x27;s liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
**liquidity_position** | None, str,  | NoneClass, str,  | Reference to LP identifier. | [optional] 
**timestamp** | decimal.Decimal, int,  | decimal.Decimal,  | Creation time. | [optional] value must be a 32 bit integer
**block** | decimal.Decimal, int,  | decimal.Decimal,  | Block in which snapshot has been created. | [optional] value must be a 32 bit integer
**user** | None, str,  | NoneClass, str,  | Reference to user. | [optional] 
**pair** | None, str,  | NoneClass, str,  | Reference to the pair liquidity is being provided on. | [optional] 
**token_0_price_usd** | None, str,  | NoneClass, str,  | Snapshot of token0 price in USD. | [optional] 
**token_1_price_usd** | None, str,  | NoneClass, str,  | Snapshot of token0 price in USD. | [optional] 
**reserve_0** | None, str,  | NoneClass, str,  | Snapshot of pair token0 reserves. | [optional] 
**reserve_1** | None, str,  | NoneClass, str,  | Snapshot of pair token1 reserves. | [optional] 
**reserve_usd** | None, str,  | NoneClass, str,  | Snapshot of pair reserves in USD. | [optional] 
**liquidity_token_total_supply** | None, str,  | NoneClass, str,  | Snapshot of pool token supply. | [optional] 
**liquidity_token_balance** | None, str,  | NoneClass, str,  | Snapshot of users pool token balance. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

