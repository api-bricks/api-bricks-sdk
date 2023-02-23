# openapi.api.BalancesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances


# **v1BalancesGet**
> BuiltList<Balance> v1BalancesGet(exchangeId)

Get balances

Get current currency balance from all or single exchange.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getBalancesApi();
final String exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.

try {
    final response = api.v1BalancesGet(exchangeId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BalancesApi->v1BalancesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**BuiltList&lt;Balance&gt;**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

