# openapi_client.model.dex_price_dto.DexPriceDTO

Token price in conjuction with batch id.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Token price in conjuction with batch id. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (token id)-(batch id). | [optional] 
**token** | None, str,  | NoneClass, str,  | Token identifier. | [optional] 
**batch_id** | None, str,  | NoneClass, str,  | Batch identifier. | [optional] 
**price_in_owl_numerator** | None, str,  | NoneClass, str,  | Price enumerator in OWL (derivative of the GNO token). | [optional] 
**price_in_owl_denominator** | None, str,  | NoneClass, str,  | Price denominator in OWL (derivative of the GNO token). | [optional] 
**volume** | None, str,  | NoneClass, str,  | Volume. | [optional] 
**create_epoch** | None, str,  | NoneClass, str,  | Create epoch. | [optional] 
**tx_hash** | None, str,  | NoneClass, str,  | Transaction hash. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

