# MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadataChainsGet**](MetadataApi.md#metadataChainsGet) | **GET** /metadata/chains | List all chains.
[**metadataDappsDappNameGet**](MetadataApi.md#metadataDappsDappNameGet) | **GET** /metadata/dapps/{dappName} | Gets dapp by name.
[**metadataDappsGet**](MetadataApi.md#metadataDappsGet) | **GET** /metadata/dapps | List all decentralized applications.


<a id="metadataChainsGet"></a>
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

<a id="metadataDappsDappNameGet"></a>
# **metadataDappsDappNameGet**
> metadataDappsDappNameGet(dappName)

Gets dapp by name.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val dappName : kotlin.String = dappName_example // kotlin.String | 
try {
    apiInstance.metadataDappsDappNameGet(dappName)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#metadataDappsDappNameGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#metadataDappsDappNameGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dappName** | **kotlin.String**|  |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="metadataDappsGet"></a>
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

