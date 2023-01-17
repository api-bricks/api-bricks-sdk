# # SushiswapLiquidityPositionSnapshotDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**id** | **string** | Identifier, format: (pair address)-(user address)-(timestamp) | [optional]
**liquidity_position** | **string** | Reference to LP identifier. | [optional]
**timestamp** | **int** | Creation time. | [optional]
**block** | **int** | Block in which snapshot has been created. | [optional]
**user** | **string** | Reference to user. | [optional]
**pair** | **string** | Reference to the pair liquidity is being provided on. | [optional]
**token_0_price_usd** | **string** | Snapshot of token0 price in USD. | [optional]
**token_1_price_usd** | **string** | Snapshot of token0 price in USD. | [optional]
**reserve_0** | **string** | Snapshot of pair token0 reserves. | [optional]
**reserve_1** | **string** | Snapshot of pair token1 reserves. | [optional]
**reserve_usd** | **string** | Snapshot of pair reserves in USD. | [optional]
**liquidity_token_total_supply** | **string** | Snapshot of pool token supply. | [optional]
**liquidity_token_balance** | **string** | Snapshot of users pool token balance. | [optional]
**vid** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
