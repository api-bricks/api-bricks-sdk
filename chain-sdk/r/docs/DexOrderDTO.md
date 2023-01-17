# openapi::DexOrderDTO

Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (owner address)-(order id) | [optional] 
**owner** | **character** | Reference to owner. | [optional] 
**order_id** | **integer** | Order id. | [optional] 
**from_batch_id** | **character** | Batch id from which order became valid. | [optional] 
**from_epoch** | **character** | Start of epoch in which order was placed and became valid. | [optional] 
**until_batch_id** | **character** | Batch id until which trade was still valid. | [optional] 
**until_epoch** | **character** | End of epoch in which order was placed. | [optional] 
**buy_token** | **character** | Identifier of token that was bought. | [optional] 
**sell_token** | **character** | Identifier of token that was sold. | [optional] 
**price_numerator** | **character** | Price enumerator. | [optional] 
**price_denominator** | **character** | Price denominator. | [optional] 
**max_sell_amount** | **character** | Maximum sell amount. | [optional] 
**min_receive_amount** | **character** | Minimum receive amount. | [optional] 
**sold_volume** | **character** | Sold volume. | [optional] 
**bought_volume** | **character** | Bought volume. | [optional] 
**create_epoch** | **character** | Epoch in which order was created. | [optional] 
**cancel_epoch** | **character** | Epoch in which order was cancelled. | [optional] 
**delete_epoch** | **character** | Epoch in which order was deleted. | [optional] 
**tx_hash** | **character** | Transaction hash. | [optional] 
**tx_log_index** | **character** | Event index within transaction. | [optional] 
**vid** | **integer** |  | [optional] 


