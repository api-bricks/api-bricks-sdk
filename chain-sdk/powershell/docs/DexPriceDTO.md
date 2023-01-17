# DexPriceDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (token id)-(batch id). | [optional] 
**Token** | **String** | Token identifier. | [optional] 
**BatchId** | **String** | Batch identifier. | [optional] 
**PriceInOwlNumerator** | **String** | Price enumerator in OWL (derivative of the GNO token). | [optional] 
**PriceInOwlDenominator** | **String** | Price denominator in OWL (derivative of the GNO token). | [optional] 
**Volume** | **String** | Volume. | [optional] 
**CreateEpoch** | **String** | Create epoch. | [optional] 
**TxHash** | **String** | Transaction hash. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DexPriceDTO = Initialize-PSOpenAPIToolsDexPriceDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Token null `
 -BatchId null `
 -PriceInOwlNumerator null `
 -PriceInOwlDenominator null `
 -Volume null `
 -CreateEpoch null `
 -TxHash null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$DexPriceDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

