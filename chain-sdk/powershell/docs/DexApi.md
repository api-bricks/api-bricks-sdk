# PSOpenAPITools.PSOpenAPITools/Api.DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DexBatchesCurrent**](DexApi.md#Invoke-DexBatchesCurrent) | **GET** /dapps/dex/batches/current | Batches (current)
[**Invoke-DexDepositsCurrent**](DexApi.md#Invoke-DexDepositsCurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**Invoke-DexGetBatchesHistorical**](DexApi.md#Invoke-DexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**Invoke-DexGetDepositsHistorical**](DexApi.md#Invoke-DexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**Invoke-DexGetOrdersHistorical**](DexApi.md#Invoke-DexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**Invoke-DexGetPricesHistorical**](DexApi.md#Invoke-DexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**Invoke-DexGetSolutionsHistorical**](DexApi.md#Invoke-DexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**Invoke-DexGetStatsHistorical**](DexApi.md#Invoke-DexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**Invoke-DexGetTokensHistorical**](DexApi.md#Invoke-DexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**Invoke-DexGetTradesHistorical**](DexApi.md#Invoke-DexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**Invoke-DexGetUsersHistorical**](DexApi.md#Invoke-DexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**Invoke-DexGetWithdrawRequestsHistorical**](DexApi.md#Invoke-DexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**Invoke-DexGetWithdrawsHistorical**](DexApi.md#Invoke-DexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**Invoke-DexOrdersCurrent**](DexApi.md#Invoke-DexOrdersCurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**Invoke-DexPricesCurrent**](DexApi.md#Invoke-DexPricesCurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**Invoke-DexSolutionsCurrent**](DexApi.md#Invoke-DexSolutionsCurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**Invoke-DexStatsCurrent**](DexApi.md#Invoke-DexStatsCurrent) | **GET** /dapps/dex/stats/current | Stats (current)
[**Invoke-DexTokensCurrent**](DexApi.md#Invoke-DexTokensCurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**Invoke-DexTradesCurrent**](DexApi.md#Invoke-DexTradesCurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**Invoke-DexUsersCurrent**](DexApi.md#Invoke-DexUsersCurrent) | **GET** /dapps/dex/users/current | Users (current)
[**Invoke-DexWithdrawRequestsCurrent**](DexApi.md#Invoke-DexWithdrawRequestsCurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**Invoke-DexWithdrawsCurrent**](DexApi.md#Invoke-DexWithdrawsCurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)


<a id="Invoke-DexBatchesCurrent"></a>
# **Invoke-DexBatchesCurrent**
> DexBatchDTO[] Invoke-DexBatchesCurrent<br>

Batches (current)

Gets batches.

### Example
```powershell

# Batches (current)
try {
    $Result = Invoke-DexBatchesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexBatchesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexBatchDTO[]**](DexBatchDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexDepositsCurrent"></a>
# **Invoke-DexDepositsCurrent**
> DexDepositDTO[] Invoke-DexDepositsCurrent<br>

Deposits (current)

Gets deposits.

### Example
```powershell

# Deposits (current)
try {
    $Result = Invoke-DexDepositsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexDepositsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexDepositDTO[]**](DexDepositDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetBatchesHistorical"></a>
# **Invoke-DexGetBatchesHistorical**
> DexBatchDTO[] Invoke-DexGetBatchesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Batches (historical)

Gets batches.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier. (optional)

# Batches (historical)
try {
    $Result = Invoke-DexGetBatchesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetBatchesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**| Identifier. | [optional] 

### Return type

[**DexBatchDTO[]**](DexBatchDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetDepositsHistorical"></a>
# **Invoke-DexGetDepositsHistorical**
> DexDepositDTO[] Invoke-DexGetDepositsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>

Deposits (historical)

Gets deposits.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier, format: (transaction hash)-(token id). (optional)
$User = "MyUser" # String | User address. (optional)

# Deposits (historical)
try {
    $Result = Invoke-DexGetDepositsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -User $User
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetDepositsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**| Identifier, format: (transaction hash)-(token id). | [optional] 
 **User** | **String**| User address. | [optional] 

### Return type

[**DexDepositDTO[]**](DexDepositDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetOrdersHistorical"></a>
# **Invoke-DexGetOrdersHistorical**
> DexOrderDTO[] Invoke-DexGetOrdersHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BuyToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SellToken] <String><br>

Orders (historical)

Gets orders.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier, format: (owner address)-(order id) (optional)
$BuyToken = "MyBuyToken" # String | Identifier of token that was bought. (optional)
$SellToken = "MySellToken" # String | Identifier of token that was sold. (optional)

# Orders (historical)
try {
    $Result = Invoke-DexGetOrdersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -BuyToken $BuyToken -SellToken $SellToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetOrdersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**| Identifier, format: (owner address)-(order id) | [optional] 
 **BuyToken** | **String**| Identifier of token that was bought. | [optional] 
 **SellToken** | **String**| Identifier of token that was sold. | [optional] 

### Return type

[**DexOrderDTO[]**](DexOrderDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetPricesHistorical"></a>
# **Invoke-DexGetPricesHistorical**
> DexPriceDTO[] Invoke-DexGetPricesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Prices (historical)

Gets prices.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier, format: (token id)-(batch id). (optional)

# Prices (historical)
try {
    $Result = Invoke-DexGetPricesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetPricesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**| Identifier, format: (token id)-(batch id). | [optional] 

### Return type

[**DexPriceDTO[]**](DexPriceDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetSolutionsHistorical"></a>
# **Invoke-DexGetSolutionsHistorical**
> DexSolutionDTO[] Invoke-DexGetSolutionsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Solutions (historical)

Gets solutions.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# Solutions (historical)
try {
    $Result = Invoke-DexGetSolutionsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetSolutionsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**|  | [optional] 

### Return type

[**DexSolutionDTO[]**](DexSolutionDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetStatsHistorical"></a>
# **Invoke-DexGetStatsHistorical**
> DexStatsDTO[] Invoke-DexGetStatsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Stats (historical)

Gets stats.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# Stats (historical)
try {
    $Result = Invoke-DexGetStatsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetStatsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**|  | [optional] 

### Return type

[**DexStatsDTO[]**](DexStatsDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetTokensHistorical"></a>
# **Invoke-DexGetTokensHistorical**
> DexTokenDTO[] Invoke-DexGetTokensHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Address] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Tokens (historical)

Gets tokens.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)
$Address = "MyAddress" # String |  (optional)
$Symbol = "MySymbol" # String |  (optional)
$Name = "MyName" # String |  (optional)

# Tokens (historical)
try {
    $Result = Invoke-DexGetTokensHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -Address $Address -Symbol $Symbol -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetTokensHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**|  | [optional] 
 **Address** | **String**|  | [optional] 
 **Symbol** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 

### Return type

[**DexTokenDTO[]**](DexTokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetTradesHistorical"></a>
# **Invoke-DexGetTradesHistorical**
> DexTradeDTO[] Invoke-DexGetTradesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BuyToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SellToken] <String><br>

Trades (historical)

Gets trades.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)
$BuyToken = "MyBuyToken" # String |  (optional)
$SellToken = "MySellToken" # String |  (optional)

# Trades (historical)
try {
    $Result = Invoke-DexGetTradesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -BuyToken $BuyToken -SellToken $SellToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetTradesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**|  | [optional] 
 **BuyToken** | **String**|  | [optional] 
 **SellToken** | **String**|  | [optional] 

### Return type

[**DexTradeDTO[]**](DexTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetUsersHistorical"></a>
# **Invoke-DexGetUsersHistorical**
> DexUserDTO[] Invoke-DexGetUsersHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Users (historical)

Gets users.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# Users (historical)
try {
    $Result = Invoke-DexGetUsersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetUsersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**|  | [optional] 

### Return type

[**DexUserDTO[]**](DexUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetWithdrawRequestsHistorical"></a>
# **Invoke-DexGetWithdrawRequestsHistorical**
> DexWithdrawRequestDTO[] Invoke-DexGetWithdrawRequestsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>

WithdrawRequests (historical)

Gets withdrawRequests.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier, format: (transaction hash)-(id). (optional)
$User = "MyUser" # String |  (optional)

# WithdrawRequests (historical)
try {
    $Result = Invoke-DexGetWithdrawRequestsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -User $User
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetWithdrawRequestsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**| Identifier, format: (transaction hash)-(id). | [optional] 
 **User** | **String**|  | [optional] 

### Return type

[**DexWithdrawRequestDTO[]**](DexWithdrawRequestDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexGetWithdrawsHistorical"></a>
# **Invoke-DexGetWithdrawsHistorical**
> DexWithdrawDTO[] Invoke-DexGetWithdrawsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>

Withdraws (historical)

Gets withdraws.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String | Identifier, format: (transaction hash)-(id). (optional)
$User = "MyUser" # String |  (optional)

# Withdraws (historical)
try {
    $Result = Invoke-DexGetWithdrawsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id -User $User
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetWithdrawsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Id** | **String**| Identifier, format: (transaction hash)-(id). | [optional] 
 **User** | **String**|  | [optional] 

### Return type

[**DexWithdrawDTO[]**](DexWithdrawDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexOrdersCurrent"></a>
# **Invoke-DexOrdersCurrent**
> DexOrderDTO[] Invoke-DexOrdersCurrent<br>

Orders (current)

Gets orders.

### Example
```powershell

# Orders (current)
try {
    $Result = Invoke-DexOrdersCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexOrdersCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexOrderDTO[]**](DexOrderDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexPricesCurrent"></a>
# **Invoke-DexPricesCurrent**
> DexPriceDTO[] Invoke-DexPricesCurrent<br>

Prices (current)

Gets prices.

### Example
```powershell

# Prices (current)
try {
    $Result = Invoke-DexPricesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexPricesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexPriceDTO[]**](DexPriceDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexSolutionsCurrent"></a>
# **Invoke-DexSolutionsCurrent**
> DexSolutionDTO[] Invoke-DexSolutionsCurrent<br>

Solutions (current)

Gets solutions.

### Example
```powershell

# Solutions (current)
try {
    $Result = Invoke-DexSolutionsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexSolutionsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexSolutionDTO[]**](DexSolutionDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexStatsCurrent"></a>
# **Invoke-DexStatsCurrent**
> DexStatsDTO[] Invoke-DexStatsCurrent<br>

Stats (current)

Gets stats.

### Example
```powershell

# Stats (current)
try {
    $Result = Invoke-DexStatsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexStatsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexStatsDTO[]**](DexStatsDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexTokensCurrent"></a>
# **Invoke-DexTokensCurrent**
> DexTokenDTO[] Invoke-DexTokensCurrent<br>

Tokens (current)

Gets tokens.

### Example
```powershell

# Tokens (current)
try {
    $Result = Invoke-DexTokensCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexTokensCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexTokenDTO[]**](DexTokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexTradesCurrent"></a>
# **Invoke-DexTradesCurrent**
> DexTradeDTO[] Invoke-DexTradesCurrent<br>

Trades (current)

Gets trades.

### Example
```powershell

# Trades (current)
try {
    $Result = Invoke-DexTradesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexTradesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexTradeDTO[]**](DexTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexUsersCurrent"></a>
# **Invoke-DexUsersCurrent**
> DexUserDTO[] Invoke-DexUsersCurrent<br>

Users (current)

Gets users.

### Example
```powershell

# Users (current)
try {
    $Result = Invoke-DexUsersCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexUsersCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexUserDTO[]**](DexUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexWithdrawRequestsCurrent"></a>
# **Invoke-DexWithdrawRequestsCurrent**
> DexWithdrawRequestDTO[] Invoke-DexWithdrawRequestsCurrent<br>

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```powershell

# WithdrawRequests (current)
try {
    $Result = Invoke-DexWithdrawRequestsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexWithdrawRequestsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexWithdrawRequestDTO[]**](DexWithdrawRequestDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DexWithdrawsCurrent"></a>
# **Invoke-DexWithdrawsCurrent**
> DexWithdrawDTO[] Invoke-DexWithdrawsCurrent<br>

Withdraws (current)

Gets withdraws.

### Example
```powershell

# Withdraws (current)
try {
    $Result = Invoke-DexWithdrawsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexWithdrawsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexWithdrawDTO[]**](DexWithdrawDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

