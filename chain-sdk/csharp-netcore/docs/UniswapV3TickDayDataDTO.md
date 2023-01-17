# CoinAPI.EMS.REST.V1.Model.UniswapV3TickDayDataDTO
Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**Date** | **int** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**Pool** | **string** | Pointer to pool. | [optional] 
**Tick** | **string** | Pointer to tick. | [optional] 
**LiquidityGross** | **string** | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**LiquidityNet** | **string** | How much liquidity changes when tick crossed at end of period. | [optional] 
**VolumeToken0** | **string** | Hourly volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | **string** | Hourly volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | **string** | Hourly volume in derived USD with this tick in range. | [optional] 
**FeesUsd** | **string** | Fees in USD. | [optional] 
**FeeGrowthOutside0x128** | **string** | Variable needed for fee computation. | [optional] 
**FeeGrowthOutside1x128** | **string** | Variable needed for fee computation. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

