# sushiswap_pair_hour_data_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**date** | **int** | Hour start timestamp. | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 
**reserve_0** | **char \*** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve_1** | **char \*** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**reserve_usd** | **char \*** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volume_token_0** | **char \*** | Total amount of token0 swapped throughout hour. | [optional] 
**volume_token_1** | **char \*** | Total amount of token1 swapped throughout hour. | [optional] 
**volume_usd** | **char \*** | Total volume within pair throughout hour. | [optional] 
**tx_count** | **char \*** | Amount of transactions on pair throughout hour. | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


