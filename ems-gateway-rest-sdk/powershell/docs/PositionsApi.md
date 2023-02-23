# PSOpenAPITools.PSOpenAPITools/Api.PositionsApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1PositionsGet**](PositionsApi.md#Invoke-V1PositionsGet) | **GET** /v1/positions | Get open positions


<a name="Invoke-V1PositionsGet"></a>
# **Invoke-V1PositionsGet**
> Position[] Invoke-V1PositionsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Get open positions

Get current open positions across all or single exchange.

### Example
```powershell
$ExchangeId = "KRAKEN" # String | Filter the balances to the specific exchange. (optional)

# Get open positions
try {
    $Result = Invoke-V1PositionsGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1PositionsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**Position[]**](Position.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

