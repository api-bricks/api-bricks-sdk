# OHLCV_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_ohlcv_exchanges_exchange_id_history_get**](OHLCV_API.md#v1_ohlcv_exchanges_exchange_id_history_get) | **Get** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1_ohlcv_periods_get**](OHLCV_API.md#v1_ohlcv_periods_get) | **Get** /v1/ohlcv/periods | List all periods
[**v1_ohlcv_symbol_id_history_get**](OHLCV_API.md#v1_ohlcv_symbol_id_history_get) | **Get** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1_ohlcv_symbol_id_latest_get**](OHLCV_API.md#v1_ohlcv_symbol_id_latest_get) | **Get** /v1/ohlcv/{symbol_id}/latest | Latest data


# **v1_ohlcv_exchanges_exchange_id_history_get**
> v1_ohlcv_exchanges_exchange_id_history_get (exchange_id: STRING_32 ; period_id: STRING_32 ; time_start: STRING_32 ; time_end: STRING_32 ): detachable LIST [OHLCV_EXCHANGE_TIMESERIES_ITEM]


Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | [default to null]
 **time_start** | **STRING_32**| Timeseries starting time in ISO 8601 | [default to null]
 **time_end** | **STRING_32**| Timeseries ending time in ISO 8601 | [default to null]

### Return type

[**LIST [OHLCV_EXCHANGE_TIMESERIES_ITEM]**](Ohlcv.ExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_periods_get**
> v1_ohlcv_periods_get : detachable LIST [V1_TIMESERIES_PERIOD]


List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_TIMESERIES_PERIOD]**](v1.TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_symbol_id_history_get**
> v1_ohlcv_symbol_id_history_get (symbol_id: STRING_32 ; period_id: STRING_32 ; time_start:  detachable STRING_32 ; time_end:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_TIMESERIES_ITEM]


Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | [default to null]
 **time_start** | **STRING_32**| Timeseries starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **STRING_32**| Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_TIMESERIES_ITEM]**](v1.TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_symbol_id_latest_get**
> v1_ohlcv_symbol_id_latest_get (symbol_id: STRING_32 ; period_id: STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_TIMESERIES_ITEM]


Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_TIMESERIES_ITEM]**](v1.TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

