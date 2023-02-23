# EmsRestApi.PositionsApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions



## v1PositionsGet

> [Position] v1PositionsGet(opts)

Get open positions

Get current open positions across all or single exchange.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.PositionsApi();
let opts = {
  'exchangeId': KRAKEN // String | Filter the balances to the specific exchange.
};
apiInstance.v1PositionsGet(opts, (error, data, response) => {
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

[**[Position]**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

