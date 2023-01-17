

# UniswapV3TickDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**Date**](Date.md) |  |  [optional]
**recvTime** | [**Date**](Date.md) |  |  [optional]
**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional]
**vid** | **Long** |  |  [optional]
**id** | **String** | Identifier, format: (pool address)#(tick index) |  [optional]
**poolAddress** | **String** | Pool address. |  [optional]
**tickIdx** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**pool** | **String** | Pool address. |  [optional]
**liquidityGross** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**liquidityNet** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**price0** | **String** | Calculated price of token0 of tick within this pool - constant. |  [optional]
**price1** | **String** | Calculated price of token1 of tick within this pool - constant. |  [optional]
**volumeToken0** | **String** | Lifetime volume of token0 with this tick in range. |  [optional]
**volumeToken1** | **String** | Lifetime volume of token1 with this tick in range. |  [optional]
**volumeUsd** | **String** | Lifetime volume in derived USD with this tick in range. |  [optional]
**untrackedVolumeUsd** | **String** | Lifetime volume in untracked USD with this tick in range. |  [optional]
**feesUsd** | **String** | Fees in USD. |  [optional]
**collectedFeesToken0** | **String** | All time collected fees in token0. |  [optional]
**collectedFeesToken1** | **String** | All time collected fees in token1. |  [optional]
**collectedFeesUsd** | **String** | All time collected fees in USD. |  [optional]
**createdAtTimestamp** | [**Date**](Date.md) | Created time. |  [optional]
**liquidityProviderCount** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**feeGrowthOutside0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]
**feeGrowthOutside1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  |  [optional]




