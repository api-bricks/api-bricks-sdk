# openapi_client.model.message_reject.MessageReject

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**type** | str,  | str,  | Message type, constant. | [optional] 
**reject_reason** | [**RejectReason**](RejectReason.md) | [**RejectReason**](RejectReason.md) |  | [optional] 
**exchange_id** | str,  | str,  | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] 
**message** | str,  | str,  | Message text. | [optional] 
**rejected_message** | str,  | str,  | Value of rejected request, if available. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

