# EmsRestApi.BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances



## v1BalancesGet

> [Balance] v1BalancesGet(opts)

Get balances

Get current currency balance from all or single exchange.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.BalancesApi();
let opts = {
  'exchangeId': KRAKEN // String | Filter the balances to the specific exchange.
};
apiInstance.v1BalancesGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

