# openapi_client.model.cryptopunks_data_sources_dto.CRYPTOPUNKSDataSourcesDTO

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**block_range** | None, str,  | NoneClass, str,  |  | [optional] 
**causality_region** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**manifest_idx** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**parent** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**id** | None, str,  | NoneClass, str,  |  | [optional] 
**param** | None, str,  | NoneClass, str,  |  | [optional] 
**context** | None, str,  | NoneClass, str,  |  | [optional] 
**done_at** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

