# DEX_PRICE_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (token id)-(batch id). | [optional] [default to null]
**token** | [**STRING_32**](STRING_32.md) | Token identifier. | [optional] [default to null]
**batch_id** | [**STRING_32**](STRING_32.md) | Batch identifier. | [optional] [default to null]
**price_in_owl_numerator** | [**STRING_32**](STRING_32.md) | Price enumerator in OWL (derivative of the GNO token). | [optional] [default to null]
**price_in_owl_denominator** | [**STRING_32**](STRING_32.md) | Price denominator in OWL (derivative of the GNO token). | [optional] [default to null]
**volume** | [**STRING_32**](STRING_32.md) | Volume. | [optional] [default to null]
**create_epoch** | [**STRING_32**](STRING_32.md) | Create epoch. | [optional] [default to null]
**tx_hash** | [**STRING_32**](STRING_32.md) | Transaction hash. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


