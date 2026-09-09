# OHLCVAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OHLCVAPI_v1OhlcvExchangesExchangeIdHistoryGet**](OHLCVAPI.md#OHLCVAPI_v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**OHLCVAPI_v1OhlcvPeriodsGet**](OHLCVAPI.md#OHLCVAPI_v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
[**OHLCVAPI_v1OhlcvSymbolIdHistoryGet**](OHLCVAPI.md#OHLCVAPI_v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**OHLCVAPI_v1OhlcvSymbolIdLatestGet**](OHLCVAPI.md#OHLCVAPI_v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data


# **OHLCVAPI_v1OhlcvExchangesExchangeIdHistoryGet**
```c
// Historical data by exchange
//
// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::
//
list_t* OHLCVAPI_v1OhlcvExchangesExchangeIdHistoryGet(apiClient_t *apiClient, char *exchange_id, char *period_id, char *time_start, char *time_end);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
**time_start** | **char \*** | Timeseries starting time in ISO 8601 | 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | 

### Return type

[list_t](ohlcv_exchange_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OHLCVAPI_v1OhlcvPeriodsGet**
```c
// List all periods
//
// Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
//
list_t* OHLCVAPI_v1OhlcvPeriodsGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](v1_timeseries_period.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OHLCVAPI_v1OhlcvSymbolIdHistoryGet**
```c
// Historical data
//
// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
//
list_t* OHLCVAPI_v1OhlcvSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *period_id, char *time_start, char *time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
**time_start** | **char \*** | Timeseries starting time in ISO 8601 | [optional] 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | [optional] 
**limit** | **int \*** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OHLCVAPI_v1OhlcvSymbolIdLatestGet**
```c
// Latest data
//
// Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
//
list_t* OHLCVAPI_v1OhlcvSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
**limit** | **int \*** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

