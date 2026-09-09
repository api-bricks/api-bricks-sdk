# WWW::OpenAPIClient::OHLCVApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OHLCVApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_ohlcv_exchanges_exchange_id_history_get**](OHLCVApi.md#v1_ohlcv_exchanges_exchange_id_history_get) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1_ohlcv_periods_get**](OHLCVApi.md#v1_ohlcv_periods_get) | **GET** /v1/ohlcv/periods | List all periods
[**v1_ohlcv_symbol_id_history_get**](OHLCVApi.md#v1_ohlcv_symbol_id_history_get) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1_ohlcv_symbol_id_latest_get**](OHLCVApi.md#v1_ohlcv_symbol_id_latest_get) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data


# **v1_ohlcv_exchanges_exchange_id_history_get**
> ARRAY[OhlcvExchangeTimeseriesItem] v1_ohlcv_exchanges_exchange_id_history_get(exchange_id => $exchange_id, period_id => $period_id, time_start => $time_start, time_end => $time_end)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OHLCVApi;
my $api_instance = WWW::OpenAPIClient::OHLCVApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
my $time_start = "time_start_example"; # string | Timeseries starting time in ISO 8601
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601

eval {
    my $result = $api_instance->v1_ohlcv_exchanges_exchange_id_history_get(exchange_id => $exchange_id, period_id => $period_id, time_start => $time_start, time_end => $time_end);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OHLCVApi->v1_ohlcv_exchanges_exchange_id_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **time_start** | **string**| Timeseries starting time in ISO 8601 | 
 **time_end** | **string**| Timeseries ending time in ISO 8601 | 

### Return type

[**ARRAY[OhlcvExchangeTimeseriesItem]**](OhlcvExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_periods_get**
> ARRAY[V1TimeseriesPeriod] v1_ohlcv_periods_get()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OHLCVApi;
my $api_instance = WWW::OpenAPIClient::OHLCVApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);


eval {
    my $result = $api_instance->v1_ohlcv_periods_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OHLCVApi->v1_ohlcv_periods_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_symbol_id_history_get**
> ARRAY[V1TimeseriesItem] v1_ohlcv_symbol_id_history_get(symbol_id => $symbol_id, period_id => $period_id, time_start => $time_start, time_end => $time_end, limit => $limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OHLCVApi;
my $api_instance = WWW::OpenAPIClient::OHLCVApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
my $time_start = "time_start_example"; # string | Timeseries starting time in ISO 8601
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601
my $limit = 100; # int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_ohlcv_symbol_id_history_get(symbol_id => $symbol_id, period_id => $period_id, time_start => $time_start, time_end => $time_end, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OHLCVApi->v1_ohlcv_symbol_id_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **time_start** | **string**| Timeseries starting time in ISO 8601 | [optional] 
 **time_end** | **string**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1TimeseriesItem]**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_symbol_id_latest_get**
> ARRAY[V1TimeseriesItem] v1_ohlcv_symbol_id_latest_get(symbol_id => $symbol_id, period_id => $period_id, limit => $limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OHLCVApi;
my $api_instance = WWW::OpenAPIClient::OHLCVApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $symbol_id = "symbol_id_example"; # string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
my $limit = 100; # int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_ohlcv_symbol_id_latest_get(symbol_id => $symbol_id, period_id => $period_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OHLCVApi->v1_ohlcv_symbol_id_latest_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1TimeseriesItem]**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

