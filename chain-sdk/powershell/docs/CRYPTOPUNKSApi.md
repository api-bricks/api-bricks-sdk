# PSOpenAPITools.PSOpenAPITools/Api.CRYPTOPUNKSApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CRYPTOPUNKSBidsCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSBidsCurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current)
[**Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**Invoke-CRYPTOPUNKSCollectionsCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSCollectionsCurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current)
[**Invoke-CRYPTOPUNKSDataSourcesCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSDataSourcesCurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**Invoke-CRYPTOPUNKSGetBidsHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetBidsHistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical)
[**Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**Invoke-CRYPTOPUNKSGetCollectionsHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetCollectionsHistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical)
[**Invoke-CRYPTOPUNKSGetDataSourcesHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetDataSourcesHistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**Invoke-CRYPTOPUNKSGetItemsHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetItemsHistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical)
[**Invoke-CRYPTOPUNKSGetMarketPlacesHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetMarketPlacesHistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**Invoke-CRYPTOPUNKSGetTradesHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetTradesHistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical)
[**Invoke-CRYPTOPUNKSGetUsersHistorical**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSGetUsersHistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical)
[**Invoke-CRYPTOPUNKSItemsCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSItemsCurrent) | **GET** /dapps/cryptopunks/items/current | Items (current)
[**Invoke-CRYPTOPUNKSMarketPlacesCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSMarketPlacesCurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**Invoke-CRYPTOPUNKSTradesCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSTradesCurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current)
[**Invoke-CRYPTOPUNKSUsersCurrent**](CRYPTOPUNKSApi.md#Invoke-CRYPTOPUNKSUsersCurrent) | **GET** /dapps/cryptopunks/users/current | Users (current)


<a id="Invoke-CRYPTOPUNKSBidsCurrent"></a>
# **Invoke-CRYPTOPUNKSBidsCurrent**
> CRYPTOPUNKSBidDTO[] Invoke-CRYPTOPUNKSBidsCurrent<br>

Bids (current)

Gets bids.

### Example
```powershell

# Bids (current)
try {
    $Result = Invoke-CRYPTOPUNKSBidsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSBidsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSBidDTO[]**](CRYPTOPUNKSBidDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent"></a>
# **Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent**
> CRYPTOPUNKSCollectionDailySnapshotDTO[] Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent<br>

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```powershell

# CollectionDailySnapshots (current)
try {
    $Result = Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSCollectionDailySnapshotsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSCollectionDailySnapshotDTO[]**](CRYPTOPUNKSCollectionDailySnapshotDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSCollectionsCurrent"></a>
# **Invoke-CRYPTOPUNKSCollectionsCurrent**
> CRYPTOPUNKSCollectionDTO[] Invoke-CRYPTOPUNKSCollectionsCurrent<br>

Collections (current)

Gets collections.

### Example
```powershell

# Collections (current)
try {
    $Result = Invoke-CRYPTOPUNKSCollectionsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSCollectionsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSCollectionDTO[]**](CRYPTOPUNKSCollectionDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSDataSourcesCurrent"></a>
# **Invoke-CRYPTOPUNKSDataSourcesCurrent**
> CRYPTOPUNKSDataSourcesDTO[] Invoke-CRYPTOPUNKSDataSourcesCurrent<br>

DataSources (current)

Gets dataSources.

### Example
```powershell

# DataSources (current)
try {
    $Result = Invoke-CRYPTOPUNKSDataSourcesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSDataSourcesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSDataSourcesDTO[]**](CRYPTOPUNKSDataSourcesDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetBidsHistorical"></a>
# **Invoke-CRYPTOPUNKSGetBidsHistorical**
> CRYPTOPUNKSBidDTO[] Invoke-CRYPTOPUNKSGetBidsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Bids (historical)

Gets bids.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# Bids (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetBidsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetBidsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSBidDTO[]**](CRYPTOPUNKSBidDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical"></a>
# **Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
> CRYPTOPUNKSCollectionDailySnapshotDTO[] Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)

# CollectionDailySnapshots (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetCollectionDailySnapshotsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

[**CRYPTOPUNKSCollectionDailySnapshotDTO[]**](CRYPTOPUNKSCollectionDailySnapshotDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetCollectionsHistorical"></a>
# **Invoke-CRYPTOPUNKSGetCollectionsHistorical**
> CRYPTOPUNKSCollectionDTO[] Invoke-CRYPTOPUNKSGetCollectionsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Collections (historical)

Gets collections.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# Collections (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetCollectionsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetCollectionsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSCollectionDTO[]**](CRYPTOPUNKSCollectionDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetDataSourcesHistorical"></a>
# **Invoke-CRYPTOPUNKSGetDataSourcesHistorical**
> CRYPTOPUNKSDataSourcesDTO[] Invoke-CRYPTOPUNKSGetDataSourcesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

DataSources (historical)

Gets dataSources.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# DataSources (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetDataSourcesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetDataSourcesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSDataSourcesDTO[]**](CRYPTOPUNKSDataSourcesDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetItemsHistorical"></a>
# **Invoke-CRYPTOPUNKSGetItemsHistorical**
> CRYPTOPUNKSItemDTO[] Invoke-CRYPTOPUNKSGetItemsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Items (historical)

Gets items.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)

# Items (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetItemsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetItemsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

[**CRYPTOPUNKSItemDTO[]**](CRYPTOPUNKSItemDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetMarketPlacesHistorical"></a>
# **Invoke-CRYPTOPUNKSGetMarketPlacesHistorical**
> CRYPTOPUNKSMarketPlaceDTO[] Invoke-CRYPTOPUNKSGetMarketPlacesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

MarketPlaces (historical)

Gets marketPlaces.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# MarketPlaces (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetMarketPlacesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetMarketPlacesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSMarketPlaceDTO[]**](CRYPTOPUNKSMarketPlaceDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical"></a>
# **Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
> CRYPTOPUNKSMarketplaceDailySnapshotDTO[] Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# MarketplaceDailySnapshots (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSMarketplaceDailySnapshotDTO[]**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetTradesHistorical"></a>
# **Invoke-CRYPTOPUNKSGetTradesHistorical**
> CRYPTOPUNKSTradeDTO[] Invoke-CRYPTOPUNKSGetTradesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Trades (historical)

Gets trades.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe. (optional)
$Id = "MyId" # String |  (optional)

# Trades (historical)
try {
    $Result = Invoke-CRYPTOPUNKSGetTradesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetTradesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSTradeDTO[]**](CRYPTOPUNKSTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSGetUsersHistorical"></a>
# **Invoke-CRYPTOPUNKSGetUsersHistorical**
> CRYPTOPUNKSUserDTO[] Invoke-CRYPTOPUNKSGetUsersHistorical<br>
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
    $Result = Invoke-CRYPTOPUNKSGetUsersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSGetUsersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CRYPTOPUNKSUserDTO[]**](CRYPTOPUNKSUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSItemsCurrent"></a>
# **Invoke-CRYPTOPUNKSItemsCurrent**
> CRYPTOPUNKSItemDTO[] Invoke-CRYPTOPUNKSItemsCurrent<br>

Items (current)

Gets items.

### Example
```powershell

# Items (current)
try {
    $Result = Invoke-CRYPTOPUNKSItemsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSItemsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSItemDTO[]**](CRYPTOPUNKSItemDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSMarketPlacesCurrent"></a>
# **Invoke-CRYPTOPUNKSMarketPlacesCurrent**
> CRYPTOPUNKSMarketPlaceDTO[] Invoke-CRYPTOPUNKSMarketPlacesCurrent<br>

MarketPlaces (current)

Gets marketPlaces.

### Example
```powershell

# MarketPlaces (current)
try {
    $Result = Invoke-CRYPTOPUNKSMarketPlacesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSMarketPlacesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSMarketPlaceDTO[]**](CRYPTOPUNKSMarketPlaceDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent"></a>
# **Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
> CRYPTOPUNKSMarketplaceDailySnapshotDTO[] Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent<br>

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```powershell

# MarketplaceDailySnapshots (current)
try {
    $Result = Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSMarketplaceDailySnapshotsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSMarketplaceDailySnapshotDTO[]**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSTradesCurrent"></a>
# **Invoke-CRYPTOPUNKSTradesCurrent**
> CRYPTOPUNKSTradeDTO[] Invoke-CRYPTOPUNKSTradesCurrent<br>

Trades (current)

Gets trades.

### Example
```powershell

# Trades (current)
try {
    $Result = Invoke-CRYPTOPUNKSTradesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSTradesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSTradeDTO[]**](CRYPTOPUNKSTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CRYPTOPUNKSUsersCurrent"></a>
# **Invoke-CRYPTOPUNKSUsersCurrent**
> CRYPTOPUNKSUserDTO[] Invoke-CRYPTOPUNKSUsersCurrent<br>

Users (current)

Gets users.

### Example
```powershell

# Users (current)
try {
    $Result = Invoke-CRYPTOPUNKSUsersCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CRYPTOPUNKSUsersCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CRYPTOPUNKSUserDTO[]**](CRYPTOPUNKSUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

