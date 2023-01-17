# CoinAPI.EMS.REST.V1.Model.UniswapV3PositionSnapshotDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**Owner** | **string** | Owner of the NFT. | [optional] 
**Pool** | **string** | Pool the position is within. | [optional] 
**Position** | **string** | Position of which the snap was taken of. | [optional] 
**Timestamp** | **string** | Timestamp of block in which the snap was created. | [optional] 
**Liquidity** | **string** | Total position liquidity. | [optional] 
**DepositedToken0** | **string** | Amount of token 0 ever deposited to position. | [optional] 
**DepositedToken1** | **string** | Amount of token 1 ever deposited to position. | [optional] 
**WithdrawnToken0** | **string** | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**WithdrawnToken1** | **string** | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**CollectedFeesToken0** | **string** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | **string** | All time collected fees in token1. | [optional] 
**Transaction** | **string** | Transaction in which the snapshot was initialized. | [optional] 
**FeeGrowthInside0LastX128** | **string** | Variable needed for fee computation. | [optional] 
**FeeGrowthInside1LastX128** | **string** | Variable needed for fee computation. | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

