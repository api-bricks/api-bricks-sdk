# openapi::UniswapV3PositionSnapshotDTO


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**owner** | **character** | Owner of the NFT. | [optional] 
**pool** | **character** | Pool the position is within. | [optional] 
**position** | **character** | Position of which the snap was taken of. | [optional] 
**timestamp** | **character** | Timestamp of block in which the snap was created. | [optional] 
**liquidity** | **character** | Total position liquidity. | [optional] 
**deposited_token_0** | **character** | Amount of token 0 ever deposited to position. | [optional] 
**deposited_token_1** | **character** | Amount of token 1 ever deposited to position. | [optional] 
**withdrawn_token_0** | **character** | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**withdrawn_token_1** | **character** | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**collected_fees_token_0** | **character** | All time collected fees in token0. | [optional] 
**collected_fees_token_1** | **character** | All time collected fees in token1. | [optional] 
**transaction** | **character** | Transaction in which the snapshot was initialized. | [optional] 
**fee_growth_inside_0_last_x128** | **character** | Variable needed for fee computation. | [optional] 
**fee_growth_inside_1_last_x128** | **character** | Variable needed for fee computation. | [optional] 
**vid** | **integer** |  | [optional] 


