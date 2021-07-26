# PSOpenAPITools.PSOpenAPITools/Api.OrdersApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1OrdersCancelAllPost**](OrdersApi.md#Invoke-V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**Invoke-V1OrdersCancelPost**](OrdersApi.md#Invoke-V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**Invoke-V1OrdersGet**](OrdersApi.md#Invoke-V1OrdersGet) | **GET** /v1/orders | Get open orders
[**Invoke-V1OrdersPost**](OrdersApi.md#Invoke-V1OrdersPost) | **POST** /v1/orders | Send new order
[**Invoke-V1OrdersStatusClientOrderIdGet**](OrdersApi.md#Invoke-V1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


<a name="Invoke-V1OrdersCancelAllPost"></a>
# **Invoke-V1OrdersCancelAllPost**
> MessageReject Invoke-V1OrdersCancelAllPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderCancelAllRequest] <PSCustomObject><br>

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example
```powershell
$OrderCancelAllRequest = Initialize-OrderCancelAllRequest -ExchangeId "KRAKEN" # OrderCancelAllRequest | OrderCancelAllRequest object.

# Cancel all orders request
try {
    $Result = Invoke-V1OrdersCancelAllPost -OrderCancelAllRequest $OrderCancelAllRequest
} catch {
    Write-Host ("Exception occured when calling Invoke-V1OrdersCancelAllPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**MessageReject**](MessageReject.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V1OrdersCancelPost"></a>
# **Invoke-V1OrdersCancelPost**
> OrderExecutionReport Invoke-V1OrdersCancelPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderCancelSingleRequest] <PSCustomObject><br>

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example
```powershell
$OrderCancelSingleRequest = Initialize-OrderCancelSingleRequest -ExchangeId "KRAKEN" -ExchangeOrderId "3456456754" -ClientOrderId "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b" # OrderCancelSingleRequest | OrderCancelSingleRequest object.

# Cancel order request
try {
    $Result = Invoke-V1OrdersCancelPost -OrderCancelSingleRequest $OrderCancelSingleRequest
} catch {
    Write-Host ("Exception occured when calling Invoke-V1OrdersCancelPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V1OrdersGet"></a>
# **Invoke-V1OrdersGet**
> OrderExecutionReport[] Invoke-V1OrdersGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```powershell
$ExchangeId = "KRAKEN" # String | Filter the open orders to the specific exchange. (optional)

# Get open orders
try {
    $Result = Invoke-V1OrdersGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occured when calling Invoke-V1OrdersGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**OrderExecutionReport[]**](OrderExecutionReport.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V1OrdersPost"></a>
# **Invoke-V1OrdersPost**
> OrderExecutionReport Invoke-V1OrdersPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderNewSingleRequest] <PSCustomObject><br>

Send new order

This request creating new order for the specific exchange.

### Example
```powershell
"MAKER_OR_CANCEL"$OrderNewSingleRequest = Initialize-OrderNewSingleRequest -ExchangeId "KRAKEN" -ClientOrderId "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b" -SymbolIdExchange "XBT/USDT" -SymbolIdCoinapi "KRAKEN_SPOT_BTC_USDT" -AmountOrder 0.045 -Price 0.0783 -Side "BUY" -OrderType "LIMIT" -TimeInForce "GOOD_TILL_CANCEL" -ExpireTime 2020-01-01T10:45:20.1677709Z -ExecInst "MAKER_OR_CANCEL" # OrderNewSingleRequest | OrderNewSingleRequest object.

# Send new order
try {
    $Result = Invoke-V1OrdersPost -OrderNewSingleRequest $OrderNewSingleRequest
} catch {
    Write-Host ("Exception occured when calling Invoke-V1OrdersPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V1OrdersStatusClientOrderIdGet"></a>
# **Invoke-V1OrdersStatusClientOrderIdGet**
> OrderExecutionReport Invoke-V1OrdersStatusClientOrderIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientOrderId] <String><br>

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```powershell
$ClientOrderId = "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b" # String | The unique identifier of the order assigned by the client.

# Get order execution report
try {
    $Result = Invoke-V1OrdersStatusClientOrderIdGet -ClientOrderId $ClientOrderId
} catch {
    Write-Host ("Exception occured when calling Invoke-V1OrdersStatusClientOrderIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ClientOrderId** | **String**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

