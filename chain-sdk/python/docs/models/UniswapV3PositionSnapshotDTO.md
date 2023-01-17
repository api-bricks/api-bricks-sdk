# openapi_client.model.uniswap_v3_position_snapshot_dto.UniswapV3PositionSnapshotDTO

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**owner** | None, str,  | NoneClass, str,  | Owner of the NFT. | [optional] 
**pool** | None, str,  | NoneClass, str,  | Pool the position is within. | [optional] 
**position** | None, str,  | NoneClass, str,  | Position of which the snap was taken of. | [optional] 
**timestamp** | None, str,  | NoneClass, str,  | Timestamp of block in which the snap was created. | [optional] 
**liquidity** | None, str,  | NoneClass, str,  | Total position liquidity. | [optional] 
**deposited_token_0** | None, str,  | NoneClass, str,  | Amount of token 0 ever deposited to position. | [optional] 
**deposited_token_1** | None, str,  | NoneClass, str,  | Amount of token 1 ever deposited to position. | [optional] 
**withdrawn_token_0** | None, str,  | NoneClass, str,  | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**withdrawn_token_1** | None, str,  | NoneClass, str,  | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**collected_fees_token_0** | None, str,  | NoneClass, str,  | All time collected fees in token0. | [optional] 
**collected_fees_token_1** | None, str,  | NoneClass, str,  | All time collected fees in token1. | [optional] 
**transaction** | None, str,  | NoneClass, str,  | Transaction in which the snapshot was initialized. | [optional] 
**fee_growth_inside_0_last_x128** | None, str,  | NoneClass, str,  | Variable needed for fee computation. | [optional] 
**fee_growth_inside_1_last_x128** | None, str,  | NoneClass, str,  | Variable needed for fee computation. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

