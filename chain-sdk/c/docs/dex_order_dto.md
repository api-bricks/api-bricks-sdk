# dex_order_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (owner address)-(order id) | [optional] 
**owner** | **char \*** | Reference to owner. | [optional] 
**order_id** | **int** | Order id. | [optional] 
**from_batch_id** | **char \*** | Batch id from which order became valid. | [optional] 
**from_epoch** | **char \*** | Start of epoch in which order was placed and became valid. | [optional] 
**until_batch_id** | **char \*** | Batch id until which trade was still valid. | [optional] 
**until_epoch** | **char \*** | End of epoch in which order was placed. | [optional] 
**buy_token** | **char \*** | Identifier of token that was bought. | [optional] 
**sell_token** | **char \*** | Identifier of token that was sold. | [optional] 
**price_numerator** | **char \*** | Price enumerator. | [optional] 
**price_denominator** | **char \*** | Price denominator. | [optional] 
**max_sell_amount** | **char \*** | Maximum sell amount. | [optional] 
**min_receive_amount** | **char \*** | Minimum receive amount. | [optional] 
**sold_volume** | **char \*** | Sold volume. | [optional] 
**bought_volume** | **char \*** | Bought volume. | [optional] 
**create_epoch** | **char \*** | Epoch in which order was created. | [optional] 
**cancel_epoch** | **char \*** | Epoch in which order was cancelled. | [optional] 
**delete_epoch** | **char \*** | Epoch in which order was deleted. | [optional] 
**tx_hash** | **char \*** | Transaction hash. | [optional] 
**tx_log_index** | **char \*** | Event index within transaction. | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


