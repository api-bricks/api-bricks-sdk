# CoinAPI.EMS.REST.V1.Model.SushiswapPairHourDataDTO
Tracks pair data across each hour.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**Date** | **int** | Hour start timestamp. | [optional] 
**Pair** | **string** | Reference to pair. | [optional] 
**Reserve0** | **string** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | **string** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**ReserveUsd** | **string** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**VolumeToken0** | **string** | Total amount of token0 swapped throughout hour. | [optional] 
**VolumeToken1** | **string** | Total amount of token1 swapped throughout hour. | [optional] 
**VolumeUsd** | **string** | Total volume within pair throughout hour. | [optional] 
**TxCount** | **string** | Amount of transactions on pair throughout hour. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

