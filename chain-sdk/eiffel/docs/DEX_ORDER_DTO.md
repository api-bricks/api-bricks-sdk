# DEX_ORDER_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (owner address)-(order id) | [optional] [default to null]
**owner** | [**STRING_32**](STRING_32.md) | Reference to owner. | [optional] [default to null]
**order_id** | **INTEGER_32** | Order id. | [optional] [default to null]
**from_batch_id** | [**STRING_32**](STRING_32.md) | Batch id from which order became valid. | [optional] [default to null]
**from_epoch** | [**STRING_32**](STRING_32.md) | Start of epoch in which order was placed and became valid. | [optional] [default to null]
**until_batch_id** | [**STRING_32**](STRING_32.md) | Batch id until which trade was still valid. | [optional] [default to null]
**until_epoch** | [**STRING_32**](STRING_32.md) | End of epoch in which order was placed. | [optional] [default to null]
**buy_token** | [**STRING_32**](STRING_32.md) | Identifier of token that was bought. | [optional] [default to null]
**sell_token** | [**STRING_32**](STRING_32.md) | Identifier of token that was sold. | [optional] [default to null]
**price_numerator** | [**STRING_32**](STRING_32.md) | Price enumerator. | [optional] [default to null]
**price_denominator** | [**STRING_32**](STRING_32.md) | Price denominator. | [optional] [default to null]
**max_sell_amount** | [**STRING_32**](STRING_32.md) | Maximum sell amount. | [optional] [default to null]
**min_receive_amount** | [**STRING_32**](STRING_32.md) | Minimum receive amount. | [optional] [default to null]
**sold_volume** | [**STRING_32**](STRING_32.md) | Sold volume. | [optional] [default to null]
**bought_volume** | [**STRING_32**](STRING_32.md) | Bought volume. | [optional] [default to null]
**create_epoch** | [**STRING_32**](STRING_32.md) | Epoch in which order was created. | [optional] [default to null]
**cancel_epoch** | [**STRING_32**](STRING_32.md) | Epoch in which order was cancelled. | [optional] [default to null]
**delete_epoch** | [**STRING_32**](STRING_32.md) | Epoch in which order was deleted. | [optional] [default to null]
**tx_hash** | [**STRING_32**](STRING_32.md) | Transaction hash. | [optional] [default to null]
**tx_log_index** | [**STRING_32**](STRING_32.md) | Event index within transaction. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


