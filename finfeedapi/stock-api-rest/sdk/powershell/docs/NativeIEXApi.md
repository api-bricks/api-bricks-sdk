# PSOpenAPITools.PSOpenAPITools\Api.NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**Invoke-V1NativeIexAdminSystemEventGet**](NativeIEXApi.md#Invoke-V1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**Invoke-V1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**Invoke-V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**Invoke-V1NativeIexTradeSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


<a id="Invoke-V1NativeIexAdminMessagesSymbolGet"></a>
# **Invoke-V1NativeIexAdminMessagesSymbolGet**
> ModelsAdminMessageModel[] Invoke-V1NativeIexAdminMessagesSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
$TimeStart = "MyTimeStart" # String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
$Limit = 56 # Int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

# Get Admin Messages
try {
    $Result = Invoke-V1NativeIexAdminMessagesSymbolGet -Symbol $Symbol -Date $Date -TimeStart $TimeStart -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexAdminMessagesSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **TimeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **Limit** | **Int32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**ModelsAdminMessageModel[]**](ModelsAdminMessageModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexAdminSystemEventGet"></a>
# **Invoke-V1NativeIexAdminSystemEventGet**
> IEXSystemEventSystemEventModel[] Invoke-V1NativeIexAdminSystemEventGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Date = (Get-Date) # System.DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
$TimeStart = "MyTimeStart" # String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
$Limit = 56 # Int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

# Get System Events
try {
    $Result = Invoke-V1NativeIexAdminSystemEventGet -Date $Date -TimeStart $TimeStart -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexAdminSystemEventGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Date** | **System.DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **TimeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **Limit** | **Int32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**IEXSystemEventSystemEventModel[]**](IEXSystemEventSystemEventModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexLevel1QuoteSymbolGet"></a>
# **Invoke-V1NativeIexLevel1QuoteSymbolGet**
> IEXQuoteUpdateQuoteUpdateModel[] Invoke-V1NativeIexLevel1QuoteSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
$TimeStart = "MyTimeStart" # String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
$Limit = 56 # Int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

# Get Level-1 Quotes
try {
    $Result = Invoke-V1NativeIexLevel1QuoteSymbolGet -Symbol $Symbol -Date $Date -TimeStart $TimeStart -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexLevel1QuoteSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **TimeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **Limit** | **Int32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**IEXQuoteUpdateQuoteUpdateModel[]**](IEXQuoteUpdateQuoteUpdateModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet"></a>
# **Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet**
> IEXPriceLevelUpdatePriceLevelUpdateModel[] Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
$TimeStart = "MyTimeStart" # String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
$Limit = 56 # Int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

# Get Level-2 Price Level Book
try {
    $Result = Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet -Symbol $Symbol -Date $Date -TimeStart $TimeStart -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **TimeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **Limit** | **Int32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**IEXPriceLevelUpdatePriceLevelUpdateModel[]**](IEXPriceLevelUpdatePriceLevelUpdateModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexLevel3OrderBookSymbolGet"></a>
# **Invoke-V1NativeIexLevel3OrderBookSymbolGet**
> ModelsOrderBookModel[] Invoke-V1NativeIexLevel3OrderBookSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
$TimeStart = "MyTimeStart" # String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
$Limit = 56 # Int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

# Get Level-3 Order Book
try {
    $Result = Invoke-V1NativeIexLevel3OrderBookSymbolGet -Symbol $Symbol -Date $Date -TimeStart $TimeStart -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexLevel3OrderBookSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **TimeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **Limit** | **Int32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**ModelsOrderBookModel[]**](ModelsOrderBookModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexTradeSymbolGet"></a>
# **Invoke-V1NativeIexTradeSymbolGet**
> IEXTradeTradeModel[] Invoke-V1NativeIexTradeSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
$TimeStart = "MyTimeStart" # String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
$Limit = 56 # Int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

# Get Trades
try {
    $Result = Invoke-V1NativeIexTradeSymbolGet -Symbol $Symbol -Date $Date -TimeStart $TimeStart -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexTradeSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **TimeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **Limit** | **Int32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**IEXTradeTradeModel[]**](IEXTradeTradeModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

