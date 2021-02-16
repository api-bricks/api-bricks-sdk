# openapi.api.BalancesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **get** /v1/balances | Get balances


# **v1BalancesGet**
> BuiltList<Balance> v1BalancesGet(exchangeId)

Get balances

Get current currency balance from all or single exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BalancesApi();
var exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.

try { 
    var result = api_instance.v1BalancesGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling BalancesApi->v1BalancesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**BuiltList<Balance>**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

