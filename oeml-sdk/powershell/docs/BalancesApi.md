# PSOpenAPITools.PSOpenAPITools/Api.BalancesApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1BalancesGet**](BalancesApi.md#Invoke-V1BalancesGet) | **GET** /v1/balances | Get balances


<a name="Invoke-V1BalancesGet"></a>
# **Invoke-V1BalancesGet**
> Balance[] Invoke-V1BalancesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Get balances

Get current currency balance from all or single exchange.

### Example
```powershell
$ExchangeId = "KRAKEN" # String | Filter the balances to the specific exchange. (optional)

# Get balances
try {
    $Result = Invoke-V1BalancesGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occured when calling Invoke-V1BalancesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**Balance[]**](Balance.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

