# MetadataAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetadataAPI_metadataChainsGet**](MetadataAPI.md#MetadataAPI_metadataChainsGet) | **GET** /metadata/chains | List all chains.
[**MetadataAPI_metadataDappsDappNameGet**](MetadataAPI.md#MetadataAPI_metadataDappsDappNameGet) | **GET** /metadata/dapps/{dappName} | Gets dapp by name.
[**MetadataAPI_metadataDappsGet**](MetadataAPI.md#MetadataAPI_metadataDappsGet) | **GET** /metadata/dapps | List all decentralized applications.


# **MetadataAPI_metadataChainsGet**
```c
// List all chains.
//
void MetadataAPI_metadataChainsGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetadataAPI_metadataDappsDappNameGet**
```c
// Gets dapp by name.
//
void MetadataAPI_metadataDappsDappNameGet(apiClient_t *apiClient, char * dappName);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**dappName** | **char \*** |  | 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetadataAPI_metadataDappsGet**
```c
// List all decentralized applications.
//
void MetadataAPI_metadataDappsGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

