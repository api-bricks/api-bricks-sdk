# openapi.api.PositionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions


# **v1PositionsGet**
> List<Position> v1PositionsGet(exchangeId)

Get open positions

Get current open positions across all or single exchange.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = PositionsApi();
final exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.

try { 
    final result = api_instance.v1PositionsGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling PositionsApi->v1PositionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**List<Position>**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

