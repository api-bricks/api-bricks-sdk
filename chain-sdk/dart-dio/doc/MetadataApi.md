# openapi.api.MetadataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadataChainsGet**](MetadataApi.md#metadatachainsget) | **GET** /metadata/chains | List all chains.
[**metadataDappsDappNameGet**](MetadataApi.md#metadatadappsdappnameget) | **GET** /metadata/dapps/{dappName} | Gets dapp by name.
[**metadataDappsGet**](MetadataApi.md#metadatadappsget) | **GET** /metadata/dapps | List all decentralized applications.


# **metadataChainsGet**
> metadataChainsGet()

List all chains.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMetadataApi();

try {
    api.metadataChainsGet();
} catch on DioError (e) {
    print('Exception when calling MetadataApi->metadataChainsGet: $e\n');
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

# **metadataDappsDappNameGet**
> metadataDappsDappNameGet(dappName)

Gets dapp by name.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMetadataApi();
final String dappName = dappName_example; // String | 

try {
    api.metadataDappsDappNameGet(dappName);
} catch on DioError (e) {
    print('Exception when calling MetadataApi->metadataDappsDappNameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dappName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **metadataDappsGet**
> metadataDappsGet()

List all decentralized applications.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMetadataApi();

try {
    api.metadataDappsGet();
} catch on DioError (e) {
    print('Exception when calling MetadataApi->metadataDappsGet: $e\n');
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

