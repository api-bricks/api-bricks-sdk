# MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetadataChainsGet**](MetadataApi.md#MetadataChainsGet) | **GET** /metadata/chains | List all chains.
[**MetadataDappsDappNameGet**](MetadataApi.md#MetadataDappsDappNameGet) | **GET** /metadata/dapps/{dappName} | Gets dapp by name.
[**MetadataDappsGet**](MetadataApi.md#MetadataDappsGet) | **GET** /metadata/dapps | List all decentralized applications.


# **MetadataChainsGet**
> MetadataChainsGet()

List all chains.

### Example
```R
library(openapi)

# List all chains.
#

api_instance <- MetadataApi$new()
api_instance$MetadataChainsGet()
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **MetadataDappsDappNameGet**
> MetadataDappsDappNameGet(dapp_name)

Gets dapp by name.

### Example
```R
library(openapi)

# Gets dapp by name.
#
# prepare function argument(s)
var_dapp_name <- "dapp_name_example" # character | 

api_instance <- MetadataApi$new()
api_instance$MetadataDappsDappNameGet(var_dapp_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dapp_name** | **character**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **MetadataDappsGet**
> MetadataDappsGet()

List all decentralized applications.

### Example
```R
library(openapi)

# List all decentralized applications.
#

api_instance <- MetadataApi$new()
api_instance$MetadataDappsGet()
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

