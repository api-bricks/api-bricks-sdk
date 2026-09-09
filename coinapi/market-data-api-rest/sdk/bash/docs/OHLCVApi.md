# OHLCVApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangesExchangeIdHistoryGet**](OHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1OhlcvPeriodsGet**](OHLCVApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
[**v1OhlcvSymbolIdHistoryGet**](OHLCVApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1OhlcvSymbolIdLatestGet**](OHLCVApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data



## v1OhlcvExchangesExchangeIdHistoryGet

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg 'BITSTAMP'
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
The difference between 'time_end' and 'time_start' cannot be higher than 1 day.
The 'period_id' cannot be higher than '1DAY'.
:::

### Example

```bash
 v1OhlcvExchangesExchangeIdHistoryGet exchange_id=value  period_id=value  time_start=value  time_end=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -> Exchanges) | [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '1DAY') | [default to null]
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [default to null]

### Return type

[**array[OhlcvExchangeTimeseriesItem]**](OhlcvExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OhlcvPeriodsGet

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::

### Example

```bash
 v1OhlcvPeriodsGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OhlcvSymbolIdHistoryGet

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg 'BITSTAMP_SPOT_BTC_USD', if you need to query timeseries by asset pairs eg. 'BTC/USD', then please reffer to the Exchange Rates Timeseries data
If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::

### Example

```bash
 v1OhlcvSymbolIdHistoryGet symbol_id=value  period_id=value  time_start=value  time_end=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -> Symbols) | [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '2MTH') | [default to null]
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1TimeseriesItem]**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OhlcvSymbolIdLatestGet

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg 'BITSTAMP_SPOT_BTC_USD', if you need to query timeseries by asset pairs eg. 'BTC/USD', then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted 'time_start' and 'time_end' parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::

### Example

```bash
 v1OhlcvSymbolIdLatestGet symbol_id=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -> Symbols) | [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '2MTH') | [default to null]
 **limit** | **integer** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1TimeseriesItem]**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

