# PSOpenAPITools.PSOpenAPITools/Api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-UniswapV2GetBundlesHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | GetBundles (historical)
[**Invoke-UniswapV2GetBurnsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | GetBurns (historical)
[**Invoke-UniswapV2GetDayDataHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | GetDayData (historical)
[**Invoke-UniswapV2GetFactoryHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | GetFactory (historical)
[**Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical)
[**Invoke-UniswapV2GetLiquidityPositionsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical)
[**Invoke-UniswapV2GetMintsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | GetMints (historical)
[**Invoke-UniswapV2GetPoolsDayDataHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical)
[**Invoke-UniswapV2GetPoolsHourDataHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical)
[**Invoke-UniswapV2GetPoolsCurrent**](UniswapV2Api.md#Invoke-UniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | GetPools (current) 🔥
[**Invoke-UniswapV2GetPoolsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥
[**Invoke-UniswapV2GetSwapsCurrent**](UniswapV2Api.md#Invoke-UniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥
[**Invoke-UniswapV2GetSwapsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥
[**Invoke-UniswapV2GetTokensDayDataHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical)
[**Invoke-UniswapV2GetTokensCurrent**](UniswapV2Api.md#Invoke-UniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥
[**Invoke-UniswapV2GetTokensHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥
[**Invoke-UniswapV2GetTransactionsHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | GetTransactions (historical)
[**Invoke-UniswapV2GetUsersHistorical**](UniswapV2Api.md#Invoke-UniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | GetUsers (historical)


<a name="Invoke-UniswapV2GetBundlesHistorical"></a>
# **Invoke-UniswapV2GetBundlesHistorical**
> UniswapV2BundleV2DTO[] Invoke-UniswapV2GetBundlesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

GetBundles (historical)

Gets bundles.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# GetBundles (historical)
try {
    $Result = Invoke-UniswapV2GetBundlesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetBundlesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**UniswapV2BundleV2DTO[]**](UniswapV2BundleV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetBurnsHistorical"></a>
# **Invoke-UniswapV2GetBurnsHistorical**
> UniswapV2BurnV2DTO[] Invoke-UniswapV2GetBurnsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetBurns (historical)

Gets burns.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetBurns (historical)
try {
    $Result = Invoke-UniswapV2GetBurnsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetBurnsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2BurnV2DTO[]**](UniswapV2BurnV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetDayDataHistorical"></a>
# **Invoke-UniswapV2GetDayDataHistorical**
> UniswapV2UniswapDayDataV2DTO[] Invoke-UniswapV2GetDayDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

GetDayData (historical)

Gets uniswapv2 day data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# GetDayData (historical)
try {
    $Result = Invoke-UniswapV2GetDayDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetDayDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**UniswapV2UniswapDayDataV2DTO[]**](UniswapV2UniswapDayDataV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetFactoryHistorical"></a>
# **Invoke-UniswapV2GetFactoryHistorical**
> UniswapV2UniswapFactoryV2DTO[] Invoke-UniswapV2GetFactoryHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

GetFactory (historical)

Gets factory.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# GetFactory (historical)
try {
    $Result = Invoke-UniswapV2GetFactoryHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetFactoryHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**UniswapV2UniswapFactoryV2DTO[]**](UniswapV2UniswapFactoryV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical"></a>
# **Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical**
> UniswapV2LiquidityPositionSnapshotV2DTO[] Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetLiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetLiquidityPositionsSnapshots (historical)
try {
    $Result = Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetLiquidityPositionsSnapshotsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2LiquidityPositionSnapshotV2DTO[]**](UniswapV2LiquidityPositionSnapshotV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetLiquidityPositionsHistorical"></a>
# **Invoke-UniswapV2GetLiquidityPositionsHistorical**
> UniswapV2LiquidityPositionV2DTO[] Invoke-UniswapV2GetLiquidityPositionsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetLiquidityPositions (historical)

Gets liquidity positions.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetLiquidityPositions (historical)
try {
    $Result = Invoke-UniswapV2GetLiquidityPositionsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetLiquidityPositionsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2LiquidityPositionV2DTO[]**](UniswapV2LiquidityPositionV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetMintsHistorical"></a>
# **Invoke-UniswapV2GetMintsHistorical**
> UniswapV2MintV2DTO[] Invoke-UniswapV2GetMintsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetMints (historical)

Gets mints.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetMints (historical)
try {
    $Result = Invoke-UniswapV2GetMintsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetMintsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2MintV2DTO[]**](UniswapV2MintV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetPoolsDayDataHistorical"></a>
# **Invoke-UniswapV2GetPoolsDayDataHistorical**
> UniswapV2PairDayDataV2DTO[] Invoke-UniswapV2GetPoolsDayDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetPoolsDayData (historical)

Gets pools day data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetPoolsDayData (historical)
try {
    $Result = Invoke-UniswapV2GetPoolsDayDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetPoolsDayDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2PairDayDataV2DTO[]**](UniswapV2PairDayDataV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetPoolsHourDataHistorical"></a>
# **Invoke-UniswapV2GetPoolsHourDataHistorical**
> UniswapV2PairHourDataV2DTO[] Invoke-UniswapV2GetPoolsHourDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetPoolsHourData (historical)

Gets pools tracked each our.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetPoolsHourData (historical)
try {
    $Result = Invoke-UniswapV2GetPoolsHourDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetPoolsHourDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2PairHourDataV2DTO[]**](UniswapV2PairHourDataV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetPoolsCurrent"></a>
# **Invoke-UniswapV2GetPoolsCurrent**
> UniswapV2PairV2DTO[] Invoke-UniswapV2GetPoolsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPools (current) 🔥

Gets pools.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# GetPools (current) 🔥
try {
    $Result = Invoke-UniswapV2GetPoolsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetPoolsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2PairV2DTO[]**](UniswapV2PairV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetPoolsHistorical"></a>
# **Invoke-UniswapV2GetPoolsHistorical**
> UniswapV2PairV2DTO[] Invoke-UniswapV2GetPoolsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetPools (historical) 🔥

Gets pools.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetPools (historical) 🔥
try {
    $Result = Invoke-UniswapV2GetPoolsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetPoolsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2PairV2DTO[]**](UniswapV2PairV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetSwapsCurrent"></a>
# **Invoke-UniswapV2GetSwapsCurrent**
> UniswapV2SwapV2DTO[] Invoke-UniswapV2GetSwapsCurrent<br>

GetSwaps (current) 🔥

Gets swaps.

### Example
```powershell

# GetSwaps (current) 🔥
try {
    $Result = Invoke-UniswapV2GetSwapsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetSwapsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV2SwapV2DTO[]**](UniswapV2SwapV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetSwapsHistorical"></a>
# **Invoke-UniswapV2GetSwapsHistorical**
> UniswapV2SwapV2DTO[] Invoke-UniswapV2GetSwapsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetSwaps (historical) 🔥

Gets swaps.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetSwaps (historical) 🔥
try {
    $Result = Invoke-UniswapV2GetSwapsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetSwapsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2SwapV2DTO[]**](UniswapV2SwapV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetTokensDayDataHistorical"></a>
# **Invoke-UniswapV2GetTokensDayDataHistorical**
> UniswapV2TokenDayDataV2DTO[] Invoke-UniswapV2GetTokensDayDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

GetTokensDayData (historical)

Gets tokens day data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$TokenId = "MyTokenId" # String |  (optional)

# GetTokensDayData (historical)
try {
    $Result = Invoke-UniswapV2GetTokensDayDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetTokensDayDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **TokenId** | **String**|  | [optional] 

### Return type

[**UniswapV2TokenDayDataV2DTO[]**](UniswapV2TokenDayDataV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetTokensCurrent"></a>
# **Invoke-UniswapV2GetTokensCurrent**
> UniswapV2TokenV2DTO[] Invoke-UniswapV2GetTokensCurrent<br>

GetTokens (current) 🔥

Gets tokens.

### Example
```powershell

# GetTokens (current) 🔥
try {
    $Result = Invoke-UniswapV2GetTokensCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetTokensCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV2TokenV2DTO[]**](UniswapV2TokenV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetTokensHistorical"></a>
# **Invoke-UniswapV2GetTokensHistorical**
> UniswapV2TokenV2DTO[] Invoke-UniswapV2GetTokensHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

GetTokens (historical) 🔥

Gets tokens.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$TokenId = "MyTokenId" # String |  (optional)

# GetTokens (historical) 🔥
try {
    $Result = Invoke-UniswapV2GetTokensHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetTokensHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **TokenId** | **String**|  | [optional] 

### Return type

[**UniswapV2TokenV2DTO[]**](UniswapV2TokenV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetTransactionsHistorical"></a>
# **Invoke-UniswapV2GetTransactionsHistorical**
> UniswapV2TransactionV2DTO[] Invoke-UniswapV2GetTransactionsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

GetTransactions (historical)

Gets transactions.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# GetTransactions (historical)
try {
    $Result = Invoke-UniswapV2GetTransactionsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetTransactionsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**UniswapV2TransactionV2DTO[]**](UniswapV2TransactionV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetUsersHistorical"></a>
# **Invoke-UniswapV2GetUsersHistorical**
> UniswapV2UserV2DTO[] Invoke-UniswapV2GetUsersHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

GetUsers (historical)

Gets users.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# GetUsers (historical)
try {
    $Result = Invoke-UniswapV2GetUsersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetUsersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**UniswapV2UserV2DTO[]**](UniswapV2UserV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

