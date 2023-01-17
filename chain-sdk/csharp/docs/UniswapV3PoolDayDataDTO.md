
# CoinAPI.EMS.REST.V1.Model.UniswapV3PoolDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (pool address)-(day id). | [optional] 
**Date** | **int** | Timestamp rounded to current day by dividing by 86400 | [optional] 
**Pool** | **string** | Pointer to pool. | [optional] 
**Liquidity** | **string** | In range liquidity at end of period. | [optional] 
**SqrtPrice** | **string** | Current price tracker at end of period. | [optional] 
**Token0Price** | **string** | Price of token0 - derived from sqrtPrice. | [optional] 
**Token1Price** | **string** | Price of token1 - derived from sqrtPrice. | [optional] 
**Tick** | **string** | Current tick at end of period. | [optional] 
**FeeGrowthGlobal0x128** | **string** | Tracker for global fee growth. | [optional] 
**FeeGrowthGlobal1x128** | **string** | Tracker for global fee growth. | [optional] 
**TvlUsd** | **string** | Total value locked derived in USD at end of period. | [optional] 
**VolumeToken0** | **string** | Volume in token0. | [optional] 
**VolumeToken1** | **string** | Volume in token1. | [optional] 
**VolumeUsd** | **string** | Volume in USD. | [optional] 
**FeesUsd** | **string** | Fees in USD. | [optional] 
**TxCount** | **string** | Number of transactions during period. | [optional] 
**Open** | **string** | Opening price of token0. | [optional] 
**High** | **string** | High price of token0. | [optional] 
**Low** | **string** | Low price of token0. | [optional] 
**Close** | **string** | Close price of token0. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

