# CoinAPI.EMS.REST.V1.Model.SushiswapPairDayDataDTO
Tracks pair data across each day.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (pair id)-(day start timestamp). | [optional] 
**Date** | **int** | Unix timestamp for start of day. | [optional] 
**Pair** | **string** | Reference to pair. | [optional] 
**Token0** | **string** | Reference to token0. | [optional] 
**Token1** | **string** | Reference to token1. | [optional] 
**Reserve0** | **string** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | **string** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**TotalSupply** | **string** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveUsd** | **string** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**VolumeToken0** | **string** | Total amount of token0 swapped throughout day. | [optional] 
**VolumeToken1** | **string** | Total amount of token1 swapped throughout day. | [optional] 
**VolumeUsd** | **string** | Total volume within pair throughout day. | [optional] 
**TxCount** | **string** | Amount of transactions on pair throughout day. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

