# PSOpenAPITools.PSOpenAPITools\Api.OhlcvApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1OhlcvExchangeExchangeIdHistoryGet**](OhlcvApi.md#Invoke-V1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
[**Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvApi.md#Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
[**Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvApi.md#Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
[**Invoke-V1OhlcvPeriodsGet**](OhlcvApi.md#Invoke-V1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods


<a id="Invoke-V1OhlcvExchangeExchangeIdHistoryGet"></a>
# **Invoke-V1OhlcvExchangeExchangeIdHistoryGet**
> OHLCVTimeSeriesExchangeTimeseriesItem[] Invoke-V1OhlcvExchangeExchangeIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
$TimeStart = "MyTimeStart" # String | Timeseries starting time in ISO 8601
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601
$Limit = 56 # Int32 | Maximum number of symbol rows to return (1-10000, default 100) (optional) (default to 100)

# Historical data by exchange
try {
    $Result = Invoke-V1OhlcvExchangeExchangeIdHistoryGet -ExchangeId $ExchangeId -PeriodId $PeriodId -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OhlcvExchangeExchangeIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **TimeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 | 
 **Limit** | **Int32**| Maximum number of symbol rows to return (1-10000, default 100) | [optional] [default to 100]

### Return type

[**OHLCVTimeSeriesExchangeTimeseriesItem[]**](OHLCVTimeSeriesExchangeTimeseriesItem.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet"></a>
# **Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**
> OHLCVTimeSeriesTimeseriesItem[] Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical data

Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
$SymbolId = "MySymbolId" # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
$TimeStart = "MyTimeStart" # String | Timeseries starting time in ISO 8601 (optional)
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601 (optional)
$Limit = 56 # Int32 | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical data
try {
    $Result = Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet -ExchangeId $ExchangeId -SymbolId $SymbolId -PeriodId $PeriodId -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **SymbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **TimeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **Limit** | **Int32**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**OHLCVTimeSeriesTimeseriesItem[]**](OHLCVTimeSeriesTimeseriesItem.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet"></a>
# **Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**
> OHLCVTimeSeriesTimeseriesItem[] Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
$SymbolId = "MySymbolId" # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
$Limit = 56 # Int32 | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Latest data
try {
    $Result = Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet -ExchangeId $ExchangeId -SymbolId $SymbolId -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **SymbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **Limit** | **Int32**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**OHLCVTimeSeriesTimeseriesItem[]**](OHLCVTimeSeriesTimeseriesItem.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1OhlcvPeriodsGet"></a>
# **Invoke-V1OhlcvPeriodsGet**
> OHLCVTimeSeriesTimeseriesPeriod[] Invoke-V1OhlcvPeriodsGet<br>

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# List all periods
try {
    $Result = Invoke-V1OhlcvPeriodsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OhlcvPeriodsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OHLCVTimeSeriesTimeseriesPeriod[]**](OHLCVTimeSeriesTimeseriesPeriod.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

