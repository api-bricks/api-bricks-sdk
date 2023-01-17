# openapi::DexPriceDTO

Token price in conjuction with batch id.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**id** | **character** | Identifier, format: (token id)-(batch id). | [optional] 
**token** | **character** | Token identifier. | [optional] 
**batch_id** | **character** | Batch identifier. | [optional] 
**price_in_owl_numerator** | **character** | Price enumerator in OWL (derivative of the GNO token). | [optional] 
**price_in_owl_denominator** | **character** | Price denominator in OWL (derivative of the GNO token). | [optional] 
**volume** | **character** | Volume. | [optional] 
**create_epoch** | **character** | Create epoch. | [optional] 
**tx_hash** | **character** | Transaction hash. | [optional] 
**vid** | **integer** |  | [optional] 


