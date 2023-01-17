
# UniswapV3TickDayDataDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (pool address)-(tick index)-(timestamp). |  [optional]
**date** | **kotlin.Int** | Timestamp rounded to current day by dividing by 86400. |  [optional]
**pool** | **kotlin.String** | Pointer to pool. |  [optional]
**tick** | **kotlin.String** | Pointer to tick. |  [optional]
**liquidityGross** | **kotlin.String** | Total liquidity pool has as tick lower or upper at end of period. |  [optional]
**liquidityNet** | **kotlin.String** | How much liquidity changes when tick crossed at end of period. |  [optional]
**volumeToken0** | **kotlin.String** | Hourly volume of token0 with this tick in range. |  [optional]
**volumeToken1** | **kotlin.String** | Hourly volume of token1 with this tick in range. |  [optional]
**volumeUsd** | **kotlin.String** | Hourly volume in derived USD with this tick in range. |  [optional]
**feesUsd** | **kotlin.String** | Fees in USD. |  [optional]
**feeGrowthOutside0x128** | **kotlin.String** | Variable needed for fee computation. |  [optional]
**feeGrowthOutside1x128** | **kotlin.String** | Variable needed for fee computation. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



