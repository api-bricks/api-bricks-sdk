# OhlcvAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OhlcvAPI_v1OhlcvExchangeExchangeIdHistoryGet**](OhlcvAPI.md#OhlcvAPI_v1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
[**OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvAPI.md#OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
[**OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvAPI.md#OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
[**OhlcvAPI_v1OhlcvPeriodsGet**](OhlcvAPI.md#OhlcvAPI_v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods


# **OhlcvAPI_v1OhlcvExchangeExchangeIdHistoryGet**
```c
// Historical data by exchange
//
// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.
//
list_t* OhlcvAPI_v1OhlcvExchangeExchangeIdHistoryGet(apiClient_t *apiClient, char *exchange_id, char *period_id, char *time_start, char *time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
**time_start** | **char \*** | Timeseries starting time in ISO 8601 | 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | 
**limit** | **int \*** | Maximum number of symbol rows to return (1-10000, default 100) | [optional] [default to 100]

### Return type

[list_t](ohlcv_time_series_exchange_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**
```c
// Historical data
//
// Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
//
list_t* OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(apiClient_t *apiClient, char *exchange_id, char *symbol_id, char *period_id, char *time_start, char *time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
**symbol_id** | **char \*** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
**time_start** | **char \*** | Timeseries starting time in ISO 8601 | [optional] 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | [optional] 
**limit** | **int \*** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](ohlcv_time_series_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**
```c
// Latest data
//
// Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
//
list_t* OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(apiClient_t *apiClient, char *exchange_id, char *symbol_id, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
**symbol_id** | **char \*** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
**limit** | **int \*** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](ohlcv_time_series_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OhlcvAPI_v1OhlcvPeriodsGet**
```c
// List all periods
//
// Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
//
list_t* OhlcvAPI_v1OhlcvPeriodsGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](ohlcv_time_series_timeseries_period.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

