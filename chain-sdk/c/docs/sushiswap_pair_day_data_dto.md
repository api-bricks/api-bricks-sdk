# sushiswap_pair_day_data_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (pair id)-(day start timestamp). | [optional] 
**date** | **int** | Unix timestamp for start of day. | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 
**token_0** | **char \*** | Reference to token0. | [optional] 
**token_1** | **char \*** | Reference to token1. | [optional] 
**reserve_0** | **char \*** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve_1** | **char \*** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**total_supply** | **char \*** | Total supply of liquidity token distributed to LPs. | [optional] 
**reserve_usd** | **char \*** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volume_token_0** | **char \*** | Total amount of token0 swapped throughout day. | [optional] 
**volume_token_1** | **char \*** | Total amount of token1 swapped throughout day. | [optional] 
**volume_usd** | **char \*** | Total volume within pair throughout day. | [optional] 
**tx_count** | **char \*** | Amount of transactions on pair throughout day. | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


