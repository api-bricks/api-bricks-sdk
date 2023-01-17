# openapi_client.model.curve_coin_dto.CurveCoinDTO

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
**id** | None, str,  | NoneClass, str,  | Identifier, format: (pool_id)-(coin_index). | [optional] 
**index** | decimal.Decimal, int,  | decimal.Decimal,  | Coin index. | [optional] value must be a 32 bit integer
**pool** | None, str,  | NoneClass, str,  |  | [optional] 
**token** | None, str,  | NoneClass, str,  |  | [optional] 
**underlying** | None, str,  | NoneClass, str,  |  | [optional] 
**balance** | None, str,  | NoneClass, str,  |  | [optional] 
**rate** | None, str,  | NoneClass, str,  | Exchange rate between this coin and the associated underlying coin within the pool. | [optional] 
**updated** | None, str,  | NoneClass, str,  |  | [optional] 
**updated_at_block** | None, str,  | NoneClass, str,  |  | [optional] 
**updated_at_transaction** | None, str,  | NoneClass, str,  |  | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**block_range** | None, str,  | NoneClass, str,  |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

