# OHLCVApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangesExchangeIdHistoryGet**](OHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1OhlcvPeriodsGet**](OHLCVApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
[**v1OhlcvSymbolIdHistoryGet**](OHLCVApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1OhlcvSymbolIdLatestGet**](OHLCVApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data



## v1OhlcvExchangesExchangeIdHistoryGet

> List&lt;OhlcvExchangeTimeseriesItem&gt; v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg &#x60;BITSTAMP&#x60;              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between &#x60;time_end&#x60; and &#x60;time_start&#x60; cannot be higher than 1 day. The &#x60;period_id&#x60; cannot be higher than &#x60;1DAY&#x60;. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.OHLCVApi;

OHLCVApi apiInstance = new OHLCVApi();
String exchangeId = null; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
String timeStart = null; // String | Timeseries starting time in ISO 8601
String timeEnd = null; // String | Timeseries ending time in ISO 8601
try {
    List<OhlcvExchangeTimeseriesItem> result = apiInstance.v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OHLCVApi#v1OhlcvExchangesExchangeIdHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | [default to null]
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [default to null]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [default to null]

### Return type

[**List&lt;OhlcvExchangeTimeseriesItem&gt;**](OhlcvExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1OhlcvPeriodsGet

> List&lt;V1TimeseriesPeriod&gt; v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.OHLCVApi;

OHLCVApi apiInstance = new OHLCVApi();
try {
    List<V1TimeseriesPeriod> result = apiInstance.v1OhlcvPeriodsGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OHLCVApi#v1OhlcvPeriodsGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1OhlcvSymbolIdHistoryGet

> List&lt;V1TimeseriesItem&gt; v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.OHLCVApi;

OHLCVApi apiInstance = new OHLCVApi();
String symbolId = null; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
String timeStart = null; // String | Timeseries starting time in ISO 8601
String timeEnd = null; // String | Timeseries ending time in ISO 8601
Integer limit = 100; // Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<V1TimeseriesItem> result = apiInstance.v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OHLCVApi#v1OhlcvSymbolIdHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | [default to null]
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;V1TimeseriesItem&gt;**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1OhlcvSymbolIdLatestGet

> List&lt;V1TimeseriesItem&gt; v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.OHLCVApi;

OHLCVApi apiInstance = new OHLCVApi();
String symbolId = null; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
Integer limit = 100; // Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<V1TimeseriesItem> result = apiInstance.v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OHLCVApi#v1OhlcvSymbolIdLatestGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | [default to null]
 **limit** | **Integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;V1TimeseriesItem&gt;**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

