# PositionsApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions



## v1PositionsGet

> List&lt;Position&gt; v1PositionsGet(exchangeId)

Get open positions

Get current open positions across all or single exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PositionsApi;

PositionsApi apiInstance = new PositionsApi();
String exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.
try {
    List<Position> result = apiInstance.v1PositionsGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#v1PositionsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] [default to null]

### Return type

[**List&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

