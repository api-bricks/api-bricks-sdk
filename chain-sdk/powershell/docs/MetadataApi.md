# PSOpenAPITools.PSOpenAPITools/Api.MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-MetadataChainsGet**](MetadataApi.md#Invoke-MetadataChainsGet) | **GET** /metadata/chains | List all chains.
[**Invoke-MetadataDappsGet**](MetadataApi.md#Invoke-MetadataDappsGet) | **GET** /metadata/dapps | List all decentralized applications.


<a name="Invoke-MetadataChainsGet"></a>
# **Invoke-MetadataChainsGet**
> void Invoke-MetadataChainsGet<br>

List all chains.

### Example
```powershell

# List all chains.
try {
    $Result = Invoke-MetadataChainsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-MetadataChainsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-MetadataDappsGet"></a>
# **Invoke-MetadataDappsGet**
> void Invoke-MetadataDappsGet<br>

List all decentralized applications.

### Example
```powershell

# List all decentralized applications.
try {
    $Result = Invoke-MetadataDappsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-MetadataDappsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

