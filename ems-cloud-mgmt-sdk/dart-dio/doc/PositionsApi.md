# openapi.api.PositionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

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

final api = Openapi().getPositionsApi();
final String exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.

try {
    final response = api.v1PositionsGet(exchangeId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PositionsApi->v1PositionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**BuiltList&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

