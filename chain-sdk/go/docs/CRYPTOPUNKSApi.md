# \CRYPTOPUNKSApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CRYPTOPUNKSBidsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSBidsCurrent) | **Get** /dapps/cryptopunks/bids/current | Bids (current)
[**CRYPTOPUNKSCollectionDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSCollectionDailySnapshotsCurrent) | **Get** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**CRYPTOPUNKSCollectionsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSCollectionsCurrent) | **Get** /dapps/cryptopunks/collections/current | Collections (current)
[**CRYPTOPUNKSDataSourcesCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSDataSourcesCurrent) | **Get** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**CRYPTOPUNKSGetBidsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetBidsHistorical) | **Get** /dapps/cryptopunks/bids/historical | Bids (historical)
[**CRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **Get** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**CRYPTOPUNKSGetCollectionsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetCollectionsHistorical) | **Get** /dapps/cryptopunks/collections/historical | Collections (historical)
[**CRYPTOPUNKSGetDataSourcesHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetDataSourcesHistorical) | **Get** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**CRYPTOPUNKSGetItemsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetItemsHistorical) | **Get** /dapps/cryptopunks/items/historical | Items (historical)
[**CRYPTOPUNKSGetMarketPlacesHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetMarketPlacesHistorical) | **Get** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **Get** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**CRYPTOPUNKSGetTradesHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetTradesHistorical) | **Get** /dapps/cryptopunks/trades/historical | Trades (historical)
[**CRYPTOPUNKSGetUsersHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetUsersHistorical) | **Get** /dapps/cryptopunks/users/historical | Users (historical)
[**CRYPTOPUNKSItemsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSItemsCurrent) | **Get** /dapps/cryptopunks/items/current | Items (current)
[**CRYPTOPUNKSMarketPlacesCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSMarketPlacesCurrent) | **Get** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**CRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **Get** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**CRYPTOPUNKSTradesCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSTradesCurrent) | **Get** /dapps/cryptopunks/trades/current | Trades (current)
[**CRYPTOPUNKSUsersCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSUsersCurrent) | **Get** /dapps/cryptopunks/users/current | Users (current)



## CRYPTOPUNKSBidsCurrent

> []CRYPTOPUNKSBidDTO CRYPTOPUNKSBidsCurrent(ctx).Execute()

Bids (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSBidsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSBidsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSBidsCurrent`: []CRYPTOPUNKSBidDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSBidsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSBidsCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSBidDTO**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSCollectionDailySnapshotsCurrent

> []CRYPTOPUNKSCollectionDailySnapshotDTO CRYPTOPUNKSCollectionDailySnapshotsCurrent(ctx).Execute()

CollectionDailySnapshots (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSCollectionDailySnapshotsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSCollectionDailySnapshotsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSCollectionDailySnapshotsCurrent`: []CRYPTOPUNKSCollectionDailySnapshotDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSCollectionDailySnapshotsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSCollectionDailySnapshotsCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSCollectionDailySnapshotDTO**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSCollectionsCurrent

> []CRYPTOPUNKSCollectionDTO CRYPTOPUNKSCollectionsCurrent(ctx).Execute()

Collections (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSCollectionsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSCollectionsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSCollectionsCurrent`: []CRYPTOPUNKSCollectionDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSCollectionsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSCollectionsCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSCollectionDTO**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSDataSourcesCurrent

> []CRYPTOPUNKSDataSourcesDTO CRYPTOPUNKSDataSourcesCurrent(ctx).Execute()

DataSources (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSDataSourcesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSDataSourcesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSDataSourcesCurrent`: []CRYPTOPUNKSDataSourcesDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSDataSourcesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSDataSourcesCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSDataSourcesDTO**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetBidsHistorical

> []CRYPTOPUNKSBidDTO CRYPTOPUNKSGetBidsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

Bids (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetBidsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetBidsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetBidsHistorical`: []CRYPTOPUNKSBidDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetBidsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetBidsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSBidDTO**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetCollectionDailySnapshotsHistorical

> []CRYPTOPUNKSCollectionDailySnapshotDTO CRYPTOPUNKSGetCollectionDailySnapshotsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

CollectionDailySnapshots (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetCollectionDailySnapshotsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetCollectionDailySnapshotsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetCollectionDailySnapshotsHistorical`: []CRYPTOPUNKSCollectionDailySnapshotDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetCollectionDailySnapshotsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetCollectionDailySnapshotsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 

### Return type

[**[]CRYPTOPUNKSCollectionDailySnapshotDTO**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetCollectionsHistorical

> []CRYPTOPUNKSCollectionDTO CRYPTOPUNKSGetCollectionsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

Collections (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetCollectionsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetCollectionsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetCollectionsHistorical`: []CRYPTOPUNKSCollectionDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetCollectionsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetCollectionsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSCollectionDTO**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetDataSourcesHistorical

> []CRYPTOPUNKSDataSourcesDTO CRYPTOPUNKSGetDataSourcesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

DataSources (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetDataSourcesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetDataSourcesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetDataSourcesHistorical`: []CRYPTOPUNKSDataSourcesDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetDataSourcesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetDataSourcesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSDataSourcesDTO**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetItemsHistorical

> []CRYPTOPUNKSItemDTO CRYPTOPUNKSGetItemsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

Items (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetItemsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetItemsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetItemsHistorical`: []CRYPTOPUNKSItemDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetItemsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetItemsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 

### Return type

[**[]CRYPTOPUNKSItemDTO**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetMarketPlacesHistorical

> []CRYPTOPUNKSMarketPlaceDTO CRYPTOPUNKSGetMarketPlacesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

MarketPlaces (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetMarketPlacesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetMarketPlacesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetMarketPlacesHistorical`: []CRYPTOPUNKSMarketPlaceDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetMarketPlacesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetMarketPlacesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSMarketPlaceDTO**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical

> []CRYPTOPUNKSMarketplaceDailySnapshotDTO CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

MarketplaceDailySnapshots (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical`: []CRYPTOPUNKSMarketplaceDailySnapshotDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetMarketplaceDailySnapshotsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSMarketplaceDailySnapshotDTO**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetTradesHistorical

> []CRYPTOPUNKSTradeDTO CRYPTOPUNKSGetTradesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

Trades (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetTradesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetTradesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetTradesHistorical`: []CRYPTOPUNKSTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetTradesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetTradesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSTradeDTO**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSGetUsersHistorical

> []CRYPTOPUNKSUserDTO CRYPTOPUNKSGetUsersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

Users (historical)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    startBlock := int64(789) // int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
    endBlock := int64(789) // int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
    startDate := time.Now() // time.Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
    endDate := time.Now() // time.Time | The end date of timeframe. (optional)
    id := "id_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSGetUsersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSGetUsersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSGetUsersHistorical`: []CRYPTOPUNKSUserDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSGetUsersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSGetUsersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** |  | 

### Return type

[**[]CRYPTOPUNKSUserDTO**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSItemsCurrent

> []CRYPTOPUNKSItemDTO CRYPTOPUNKSItemsCurrent(ctx).Execute()

Items (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSItemsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSItemsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSItemsCurrent`: []CRYPTOPUNKSItemDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSItemsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSItemsCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSItemDTO**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSMarketPlacesCurrent

> []CRYPTOPUNKSMarketPlaceDTO CRYPTOPUNKSMarketPlacesCurrent(ctx).Execute()

MarketPlaces (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSMarketPlacesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSMarketPlacesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSMarketPlacesCurrent`: []CRYPTOPUNKSMarketPlaceDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSMarketPlacesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSMarketPlacesCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSMarketPlaceDTO**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSMarketplaceDailySnapshotsCurrent

> []CRYPTOPUNKSMarketplaceDailySnapshotDTO CRYPTOPUNKSMarketplaceDailySnapshotsCurrent(ctx).Execute()

MarketplaceDailySnapshots (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSMarketplaceDailySnapshotsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSMarketplaceDailySnapshotsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSMarketplaceDailySnapshotsCurrent`: []CRYPTOPUNKSMarketplaceDailySnapshotDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSMarketplaceDailySnapshotsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSMarketplaceDailySnapshotsCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSMarketplaceDailySnapshotDTO**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSTradesCurrent

> []CRYPTOPUNKSTradeDTO CRYPTOPUNKSTradesCurrent(ctx).Execute()

Trades (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSTradesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSTradesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSTradesCurrent`: []CRYPTOPUNKSTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSTradesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSTradesCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSTradeDTO**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CRYPTOPUNKSUsersCurrent

> []CRYPTOPUNKSUserDTO CRYPTOPUNKSUsersCurrent(ctx).Execute()

Users (current)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CRYPTOPUNKSApi.CRYPTOPUNKSUsersCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CRYPTOPUNKSApi.CRYPTOPUNKSUsersCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CRYPTOPUNKSUsersCurrent`: []CRYPTOPUNKSUserDTO
    fmt.Fprintf(os.Stdout, "Response from `CRYPTOPUNKSApi.CRYPTOPUNKSUsersCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCRYPTOPUNKSUsersCurrentRequest struct via the builder pattern


### Return type

[**[]CRYPTOPUNKSUserDTO**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

