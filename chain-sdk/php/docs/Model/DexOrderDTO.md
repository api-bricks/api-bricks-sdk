# # DexOrderDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**id** | **string** | Identifier, format: (owner address)-(order id) | [optional]
**owner** | **string** | Reference to owner. | [optional]
**order_id** | **int** | Order id. | [optional]
**from_batch_id** | **string** | Batch id from which order became valid. | [optional]
**from_epoch** | **string** | Start of epoch in which order was placed and became valid. | [optional]
**until_batch_id** | **string** | Batch id until which trade was still valid. | [optional]
**until_epoch** | **string** | End of epoch in which order was placed. | [optional]
**buy_token** | **string** | Identifier of token that was bought. | [optional]
**sell_token** | **string** | Identifier of token that was sold. | [optional]
**price_numerator** | **string** | Price enumerator. | [optional]
**price_denominator** | **string** | Price denominator. | [optional]
**max_sell_amount** | **string** | Maximum sell amount. | [optional]
**min_receive_amount** | **string** | Minimum receive amount. | [optional]
**sold_volume** | **string** | Sold volume. | [optional]
**bought_volume** | **string** | Bought volume. | [optional]
**create_epoch** | **string** | Epoch in which order was created. | [optional]
**cancel_epoch** | **string** | Epoch in which order was cancelled. | [optional]
**delete_epoch** | **string** | Epoch in which order was deleted. | [optional]
**tx_hash** | **string** | Transaction hash. | [optional]
**tx_log_index** | **string** | Event index within transaction. | [optional]
**vid** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
