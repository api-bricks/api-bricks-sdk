# MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadataChainsGet**](MetadataApi.md#metadataChainsGet) | **GET** /metadata/chains | List all chains.
[**metadataDappsGet**](MetadataApi.md#metadataDappsGet) | **GET** /metadata/dapps | List all decentralized applications.


<a name="metadataChainsGet"></a>
# **metadataChainsGet**
> metadataChainsGet()

List all chains.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
try {
    apiInstance.metadataChainsGet()
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#metadataChainsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#metadataChainsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="metadataDappsGet"></a>
# **metadataDappsGet**
> metadataDappsGet()

List all decentralized applications.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
try {
    apiInstance.metadataDappsGet()
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#metadataDappsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#metadataDappsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

