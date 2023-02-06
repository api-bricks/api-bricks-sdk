# MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadataChainsGet**](MetadataApi.md#metadataChainsGet) | **GET** /metadata/chains | List all chains.
[**metadataDappsGet**](MetadataApi.md#metadataDappsGet) | **GET** /metadata/dapps | List all decentralized applications.



## metadataChainsGet

> metadataChainsGet()

List all chains.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
try {
    apiInstance.metadataChainsGet();
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#metadataChainsGet");
    e.printStackTrace();
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


## metadataDappsGet

> metadataDappsGet()

List all decentralized applications.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
try {
    apiInstance.metadataDappsGet();
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#metadataDappsGet");
    e.printStackTrace();
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

