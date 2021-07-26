# openapi.api.PositionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get open positions


# **v1PositionsGet**
> BuiltList<Position> v1PositionsGet(exchangeId)

Get open positions

Get current open positions across all or single exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PositionsApi();
var exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.

try { 
    var result = api_instance.v1PositionsGet(exchangeId);
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

[**BuiltList<Position>**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

