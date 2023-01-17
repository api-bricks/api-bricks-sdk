# openapi_client.model.dex_order_dto.DexOrderDTO

Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (owner address)-(order id) | [optional] 
**owner** | None, str,  | NoneClass, str,  | Reference to owner. | [optional] 
**order_id** | decimal.Decimal, int,  | decimal.Decimal,  | Order id. | [optional] value must be a 32 bit integer
**from_batch_id** | None, str,  | NoneClass, str,  | Batch id from which order became valid. | [optional] 
**from_epoch** | None, str,  | NoneClass, str,  | Start of epoch in which order was placed and became valid. | [optional] 
**until_batch_id** | None, str,  | NoneClass, str,  | Batch id until which trade was still valid. | [optional] 
**until_epoch** | None, str,  | NoneClass, str,  | End of epoch in which order was placed. | [optional] 
**buy_token** | None, str,  | NoneClass, str,  | Identifier of token that was bought. | [optional] 
**sell_token** | None, str,  | NoneClass, str,  | Identifier of token that was sold. | [optional] 
**price_numerator** | None, str,  | NoneClass, str,  | Price enumerator. | [optional] 
**price_denominator** | None, str,  | NoneClass, str,  | Price denominator. | [optional] 
**max_sell_amount** | None, str,  | NoneClass, str,  | Maximum sell amount. | [optional] 
**min_receive_amount** | None, str,  | NoneClass, str,  | Minimum receive amount. | [optional] 
**sold_volume** | None, str,  | NoneClass, str,  | Sold volume. | [optional] 
**bought_volume** | None, str,  | NoneClass, str,  | Bought volume. | [optional] 
**create_epoch** | None, str,  | NoneClass, str,  | Epoch in which order was created. | [optional] 
**cancel_epoch** | None, str,  | NoneClass, str,  | Epoch in which order was cancelled. | [optional] 
**delete_epoch** | None, str,  | NoneClass, str,  | Epoch in which order was deleted. | [optional] 
**tx_hash** | None, str,  | NoneClass, str,  | Transaction hash. | [optional] 
**tx_log_index** | None, str,  | NoneClass, str,  | Event index within transaction. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

