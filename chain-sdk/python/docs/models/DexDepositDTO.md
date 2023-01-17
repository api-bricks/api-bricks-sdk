# openapi_client.model.dex_deposit_dto.DexDepositDTO

Deposit of an user.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Deposit of an user. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (transaction hash)-(token id). | [optional] 
**user** | None, str,  | NoneClass, str,  | User address. | [optional] 
**token_address** | None, str,  | NoneClass, str,  | Token address. | [optional] 
**amount** | None, str,  | NoneClass, str,  | Amount of deposit. | [optional] 
**batch_id** | None, str,  | NoneClass, str,  | Identifier (numerical). | [optional] 
**create_epoch** | None, str,  | NoneClass, str,  | Create epoch. | [optional] 
**tx_hash** | None, str,  | NoneClass, str,  | Transaction hash. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

