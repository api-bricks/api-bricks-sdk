
# UniswapV3PositionSnapshotDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | NFT token identifier, format: (NFT token id)#(block number). |  [optional]
**owner** | **kotlin.String** | Owner of the NFT. |  [optional]
**pool** | **kotlin.String** | Pool the position is within. |  [optional]
**position** | **kotlin.String** | Position of which the snap was taken of. |  [optional]
**timestamp** | **kotlin.String** | Timestamp of block in which the snap was created. |  [optional]
**liquidity** | **kotlin.String** | Total position liquidity. |  [optional]
**depositedToken0** | **kotlin.String** | Amount of token 0 ever deposited to position. |  [optional]
**depositedToken1** | **kotlin.String** | Amount of token 1 ever deposited to position. |  [optional]
**withdrawnToken0** | **kotlin.String** | Amount of token 0 ever withdrawn from position (without fees). |  [optional]
**withdrawnToken1** | **kotlin.String** | Amount of token 1 ever withdrawn from position (without fees). |  [optional]
**collectedFeesToken0** | **kotlin.String** | All time collected fees in token0. |  [optional]
**collectedFeesToken1** | **kotlin.String** | All time collected fees in token1. |  [optional]
**transaction** | **kotlin.String** | Transaction in which the snapshot was initialized. |  [optional]
**feeGrowthInside0LastX128** | **kotlin.String** | Variable needed for fee computation. |  [optional]
**feeGrowthInside1LastX128** | **kotlin.String** | Variable needed for fee computation. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



