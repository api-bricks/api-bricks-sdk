# WWW::OpenAPIClient::Object::UniswapV3PositionSnapshotDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::UniswapV3PositionSnapshotDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **string** | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**owner** | **string** | Owner of the NFT. | [optional] 
**pool** | **string** | Pool the position is within. | [optional] 
**position** | **string** | Position of which the snap was taken of. | [optional] 
**timestamp** | **string** | Timestamp of block in which the snap was created. | [optional] 
**liquidity** | **string** | Total position liquidity. | [optional] 
**deposited_token_0** | **string** | Amount of token 0 ever deposited to position. | [optional] 
**deposited_token_1** | **string** | Amount of token 1 ever deposited to position. | [optional] 
**withdrawn_token_0** | **string** | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**withdrawn_token_1** | **string** | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**collected_fees_token_0** | **string** | All time collected fees in token0. | [optional] 
**collected_fees_token_1** | **string** | All time collected fees in token1. | [optional] 
**transaction** | **string** | Transaction in which the snapshot was initialized. | [optional] 
**fee_growth_inside_0_last_x128** | **string** | Variable needed for fee computation. | [optional] 
**fee_growth_inside_1_last_x128** | **string** | Variable needed for fee computation. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


