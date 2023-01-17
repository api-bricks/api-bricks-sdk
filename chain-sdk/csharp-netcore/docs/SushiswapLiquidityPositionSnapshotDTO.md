# CoinAPI.EMS.REST.V1.Model.SushiswapLiquidityPositionSnapshotDTO
This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
**LiquidityPosition** | **string** | Reference to LP identifier. | [optional] 
**Timestamp** | **int** | Creation time. | [optional] 
**Block** | **int** | Block in which snapshot has been created. | [optional] 
**User** | **string** | Reference to user. | [optional] 
**Pair** | **string** | Reference to the pair liquidity is being provided on. | [optional] 
**Token0PriceUsd** | **string** | Snapshot of token0 price in USD. | [optional] 
**Token1PriceUsd** | **string** | Snapshot of token0 price in USD. | [optional] 
**Reserve0** | **string** | Snapshot of pair token0 reserves. | [optional] 
**Reserve1** | **string** | Snapshot of pair token1 reserves. | [optional] 
**ReserveUsd** | **string** | Snapshot of pair reserves in USD. | [optional] 
**LiquidityTokenTotalSupply** | **string** | Snapshot of pool token supply. | [optional] 
**LiquidityTokenBalance** | **string** | Snapshot of users pool token balance. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

