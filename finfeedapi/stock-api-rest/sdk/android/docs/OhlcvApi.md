# OhlcvApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangeExchangeIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
[**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
[**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
[**v1OhlcvPeriodsGet**](OhlcvApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods



## v1OhlcvExchangeExchangeIdHistoryGet

> List&lt;OHLCVTimeSeriesExchangeTimeseriesItem&gt; v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, limit)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use &#x60;limit&#x60; to cap the number of symbol rows returned.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OhlcvApi;

OhlcvApi apiInstance = new OhlcvApi();
String exchangeId = null; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
String timeStart = null; // String | Timeseries starting time in ISO 8601
String timeEnd = null; // String | Timeseries ending time in ISO 8601
Integer limit = 100; // Integer | Maximum number of symbol rows to return (1-10000, default 100)
try {
    List<OHLCVTimeSeriesExchangeTimeseriesItem> result = apiInstance.v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OhlcvApi#v1OhlcvExchangeExchangeIdHistoryGet");
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
 **limit** | **Integer**| Maximum number of symbol rows to return (1-10000, default 100) | [optional] [default to 100]

### Return type

[**List&lt;OHLCVTimeSeriesExchangeTimeseriesItem&gt;**](OHLCVTimeSeriesExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet

> List&lt;OHLCVTimeSeriesTimeseriesItem&gt; v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OhlcvApi;

OhlcvApi apiInstance = new OhlcvApi();
String exchangeId = null; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
String symbolId = null; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
String timeStart = null; // String | Timeseries starting time in ISO 8601
String timeEnd = null; // String | Timeseries ending time in ISO 8601
Integer limit = 100; // Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<OHLCVTimeSeriesTimeseriesItem> result = apiInstance.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OhlcvApi#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | [default to null]
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | [default to null]
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;OHLCVTimeSeriesTimeseriesItem&gt;**](OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet

> List&lt;OHLCVTimeSeriesTimeseriesItem&gt; v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.OhlcvApi;

OhlcvApi apiInstance = new OhlcvApi();
String exchangeId = null; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
String symbolId = null; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
Integer limit = 100; // Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<OHLCVTimeSeriesTimeseriesItem> result = apiInstance.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OhlcvApi#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | [default to null]
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | [default to null]
 **limit** | **Integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;OHLCVTimeSeriesTimeseriesItem&gt;**](OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1OhlcvPeriodsGet

> List&lt;OHLCVTimeSeriesTimeseriesPeriod&gt; v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.OhlcvApi;

OhlcvApi apiInstance = new OhlcvApi();
try {
    List<OHLCVTimeSeriesTimeseriesPeriod> result = apiInstance.v1OhlcvPeriodsGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OhlcvApi#v1OhlcvPeriodsGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;OHLCVTimeSeriesTimeseriesPeriod&gt;**](OHLCVTimeSeriesTimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

