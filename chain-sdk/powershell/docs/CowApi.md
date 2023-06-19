# PSOpenAPITools.PSOpenAPITools/Api.CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CowGetOrdersHistorical**](CowApi.md#Invoke-CowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**Invoke-CowGetSettlementsHistorical**](CowApi.md#Invoke-CowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**Invoke-CowGetTokensHistorical**](CowApi.md#Invoke-CowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**Invoke-CowGetTradesHistorical**](CowApi.md#Invoke-CowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**Invoke-CowGetUsersHistorical**](CowApi.md#Invoke-CowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**Invoke-CowOrdersCurrent**](CowApi.md#Invoke-CowOrdersCurrent) | **GET** /dapps/cow/orders/current | Orders (current)
[**Invoke-CowSettlementsCurrent**](CowApi.md#Invoke-CowSettlementsCurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**Invoke-CowTokensCurrent**](CowApi.md#Invoke-CowTokensCurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**Invoke-CowTradesCurrent**](CowApi.md#Invoke-CowTradesCurrent) | **GET** /dapps/cow/trades/current | Trades (current)
[**Invoke-CowUsersCurrent**](CowApi.md#Invoke-CowUsersCurrent) | **GET** /dapps/cow/users/current | Users (current)


<a id="Invoke-CowGetOrdersHistorical"></a>
# **Invoke-CowGetOrdersHistorical**
> CowOrderDTO[] Invoke-CowGetOrdersHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Orders (historical)

Gets orders.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | User's address. (optional)

# Orders (historical)
try {
    $Result = Invoke-CowGetOrdersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowGetOrdersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe. | [optional] 
 **Id** | **String**| User&#39;s address. | [optional] 

### Return type

[**CowOrderDTO[]**](CowOrderDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowGetSettlementsHistorical"></a>
# **Invoke-CowGetSettlementsHistorical**
> CowSettlementDTO[] Invoke-CowGetSettlementsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Settlements (historical)

Gets settlements.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Transaction hash. (optional)

# Settlements (historical)
try {
    $Result = Invoke-CowGetSettlementsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowGetSettlementsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe. | [optional] 
 **Id** | **String**| Transaction hash. | [optional] 

### Return type

[**CowSettlementDTO[]**](CowSettlementDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowGetTokensHistorical"></a>
# **Invoke-CowGetTokensHistorical**
> CowTokenDTO[] Invoke-CowGetTokensHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Address] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>

Tokens (historical)

Gets tokens.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Token's address. (optional)
$Address = "MyAddress" # String | Token's address. (optional)
$Name = "MyName" # String | Token name fetched by ERC20 contract call. (optional)
$Symbol = "MySymbol" # String | Token symbol fetched by contract call. (optional)

# Tokens (historical)
try {
    $Result = Invoke-CowGetTokensHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -Address $Address -Name $Name -Symbol $Symbol
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowGetTokensHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe. | [optional] 
 **Id** | **String**| Token&#39;s address. | [optional] 
 **Address** | **String**| Token&#39;s address. | [optional] 
 **Name** | **String**| Token name fetched by ERC20 contract call. | [optional] 
 **Symbol** | **String**| Token symbol fetched by contract call. | [optional] 

### Return type

[**CowTokenDTO[]**](CowTokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowGetTradesHistorical"></a>
# **Invoke-CowGetTradesHistorical**
> CowTradeDTO[] Invoke-CowGetTradesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SellToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BuyToken] <String><br>

Trades (historical)

Gets trades.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier, format: (order id)|(transaction hash)|(event index). (optional)
$SellToken = "MySellToken" # String | Address of token that is sold. (optional)
$BuyToken = "MyBuyToken" # String | Address of token that is bought. (optional)

# Trades (historical)
try {
    $Result = Invoke-CowGetTradesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -SellToken $SellToken -BuyToken $BuyToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowGetTradesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe. | [optional] 
 **Id** | **String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
 **SellToken** | **String**| Address of token that is sold. | [optional] 
 **BuyToken** | **String**| Address of token that is bought. | [optional] 

### Return type

[**CowTradeDTO[]**](CowTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowGetUsersHistorical"></a>
# **Invoke-CowGetUsersHistorical**
> CowUserDTO[] Invoke-CowGetUsersHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Address] <String><br>

Users (historical)

Gets users.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | User's address. (optional)
$Address = "MyAddress" # String | User's address. (optional)

# Users (historical)
try {
    $Result = Invoke-CowGetUsersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -Address $Address
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowGetUsersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe. | [optional] 
 **Id** | **String**| User&#39;s address. | [optional] 
 **Address** | **String**| User&#39;s address. | [optional] 

### Return type

[**CowUserDTO[]**](CowUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowOrdersCurrent"></a>
# **Invoke-CowOrdersCurrent**
> CowOrderDTO[] Invoke-CowOrdersCurrent<br>

Orders (current)

Gets orders.

### Example
```powershell

# Orders (current)
try {
    $Result = Invoke-CowOrdersCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowOrdersCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CowOrderDTO[]**](CowOrderDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowSettlementsCurrent"></a>
# **Invoke-CowSettlementsCurrent**
> CowSettlementDTO[] Invoke-CowSettlementsCurrent<br>

Settlements (current)

Gets settlements.

### Example
```powershell

# Settlements (current)
try {
    $Result = Invoke-CowSettlementsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowSettlementsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CowSettlementDTO[]**](CowSettlementDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowTokensCurrent"></a>
# **Invoke-CowTokensCurrent**
> CowTokenDTO[] Invoke-CowTokensCurrent<br>

Tokens (current)

Gets tokens.

### Example
```powershell

# Tokens (current)
try {
    $Result = Invoke-CowTokensCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowTokensCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CowTokenDTO[]**](CowTokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowTradesCurrent"></a>
# **Invoke-CowTradesCurrent**
> CowTradeDTO[] Invoke-CowTradesCurrent<br>

Trades (current)

Gets trades.

### Example
```powershell

# Trades (current)
try {
    $Result = Invoke-CowTradesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowTradesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CowTradeDTO[]**](CowTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CowUsersCurrent"></a>
# **Invoke-CowUsersCurrent**
> CowUserDTO[] Invoke-CowUsersCurrent<br>

Users (current)

Gets users.

### Example
```powershell

# Users (current)
try {
    $Result = Invoke-CowUsersCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CowUsersCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CowUserDTO[]**](CowUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

