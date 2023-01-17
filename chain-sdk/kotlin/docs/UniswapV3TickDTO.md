
# UniswapV3TickDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | Identifier, format: (pool address)#(tick index) |  [optional]
**poolAddress** | **kotlin.String** | Pool address. |  [optional]
**tickIdx** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**pool** | **kotlin.String** | Pool address. |  [optional]
**liquidityGross** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**liquidityNet** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**price0** | **kotlin.String** | Calculated price of token0 of tick within this pool - constant. |  [optional]
**price1** | **kotlin.String** | Calculated price of token1 of tick within this pool - constant. |  [optional]
**volumeToken0** | **kotlin.String** | Lifetime volume of token0 with this tick in range. |  [optional]
**volumeToken1** | **kotlin.String** | Lifetime volume of token1 with this tick in range. |  [optional]
**volumeUsd** | **kotlin.String** | Lifetime volume in derived USD with this tick in range. |  [optional]
**untrackedVolumeUsd** | **kotlin.String** | Lifetime volume in untracked USD with this tick in range. |  [optional]
**feesUsd** | **kotlin.String** | Fees in USD. |  [optional]
**collectedFeesToken0** | **kotlin.String** | All time collected fees in token0. |  [optional]
**collectedFeesToken1** | **kotlin.String** | All time collected fees in token1. |  [optional]
**collectedFeesUsd** | **kotlin.String** | All time collected fees in USD. |  [optional]
**createdAtTimestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Created time. |  [optional]
**liquidityProviderCount** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**feeGrowthOutside0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**feeGrowthOutside1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]



