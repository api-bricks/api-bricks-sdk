# \CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowGetOrdersHistorical**](CowApi.md#CowGetOrdersHistorical) | **Get** /dapps/cow/orders/historical | Orders (historical)
[**CowGetSettlementsHistorical**](CowApi.md#CowGetSettlementsHistorical) | **Get** /dapps/cow/settlements/historical | Settlements (historical)
[**CowGetTokensHistorical**](CowApi.md#CowGetTokensHistorical) | **Get** /dapps/cow/tokens/historical | Tokens (historical)
[**CowGetTradesHistorical**](CowApi.md#CowGetTradesHistorical) | **Get** /dapps/cow/trades/historical | Trades (historical)
[**CowGetUsersHistorical**](CowApi.md#CowGetUsersHistorical) | **Get** /dapps/cow/users/historical | Users (historical)
[**CowOrdersCurrent**](CowApi.md#CowOrdersCurrent) | **Get** /dapps/cow/orders/current | Orders (current)
[**CowSettlementsCurrent**](CowApi.md#CowSettlementsCurrent) | **Get** /dapps/cow/settlements/current | Settlements (current)
[**CowTokensCurrent**](CowApi.md#CowTokensCurrent) | **Get** /dapps/cow/tokens/current | Tokens (current)
[**CowTradesCurrent**](CowApi.md#CowTradesCurrent) | **Get** /dapps/cow/trades/current | Trades (current)
[**CowUsersCurrent**](CowApi.md#CowUsersCurrent) | **Get** /dapps/cow/users/current | Users (current)



## CowGetOrdersHistorical

> []CowOrderDTO CowGetOrdersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

Orders (historical)



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
    id := "id_example" // string | User's address. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CowApi.CowGetOrdersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetOrdersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetOrdersHistorical`: []CowOrderDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetOrdersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetOrdersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** | User&#39;s address. | 

### Return type

[**[]CowOrderDTO**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetSettlementsHistorical

> []CowSettlementDTO CowGetSettlementsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()

Settlements (historical)



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
    id := "id_example" // string | Transaction hash. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CowApi.CowGetSettlementsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetSettlementsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetSettlementsHistorical`: []CowSettlementDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetSettlementsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetSettlementsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** | Transaction hash. | 

### Return type

[**[]CowSettlementDTO**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTokensHistorical

> []CowTokenDTO CowGetTokensHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Address(address).Name(name).Symbol(symbol).Execute()

Tokens (historical)



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
    id := "id_example" // string | Token's address. (optional)
    address := "address_example" // string | Token's address. (optional)
    name := "name_example" // string | Token name fetched by ERC20 contract call. (optional)
    symbol := "symbol_example" // string | Token symbol fetched by contract call. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CowApi.CowGetTokensHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Address(address).Name(name).Symbol(symbol).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetTokensHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetTokensHistorical`: []CowTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetTokensHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetTokensHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** | Token&#39;s address. | 
 **address** | **string** | Token&#39;s address. | 
 **name** | **string** | Token name fetched by ERC20 contract call. | 
 **symbol** | **string** | Token symbol fetched by contract call. | 

### Return type

[**[]CowTokenDTO**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTradesHistorical

> []CowTradeDTO CowGetTradesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).SellToken(sellToken).BuyToken(buyToken).Execute()

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
    id := "id_example" // string | Identifier, format: (order id)|(transaction hash)|(event index). (optional)
    sellToken := "sellToken_example" // string | Address of token that is sold. (optional)
    buyToken := "buyToken_example" // string | Address of token that is bought. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CowApi.CowGetTradesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).SellToken(sellToken).BuyToken(buyToken).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetTradesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetTradesHistorical`: []CowTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetTradesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetTradesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** | Identifier, format: (order id)|(transaction hash)|(event index). | 
 **sellToken** | **string** | Address of token that is sold. | 
 **buyToken** | **string** | Address of token that is bought. | 

### Return type

[**[]CowTradeDTO**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetUsersHistorical

> []CowUserDTO CowGetUsersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Address(address).Execute()

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
    id := "id_example" // string | User's address. (optional)
    address := "address_example" // string | User's address. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CowApi.CowGetUsersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Id(id).Address(address).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetUsersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetUsersHistorical`: []CowUserDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetUsersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetUsersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | 
 **endBlock** | **int64** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | 
 **startDate** | **time.Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | 
 **endDate** | **time.Time** | The end date of timeframe. | 
 **id** | **string** | User&#39;s address. | 
 **address** | **string** | User&#39;s address. | 

### Return type

[**[]CowUserDTO**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowOrdersCurrent

> []CowOrderDTO CowOrdersCurrent(ctx).Execute()

Orders (current)



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
    resp, r, err := apiClient.CowApi.CowOrdersCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowOrdersCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowOrdersCurrent`: []CowOrderDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowOrdersCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCowOrdersCurrentRequest struct via the builder pattern


### Return type

[**[]CowOrderDTO**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowSettlementsCurrent

> []CowSettlementDTO CowSettlementsCurrent(ctx).Execute()

Settlements (current)



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
    resp, r, err := apiClient.CowApi.CowSettlementsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowSettlementsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowSettlementsCurrent`: []CowSettlementDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowSettlementsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCowSettlementsCurrentRequest struct via the builder pattern


### Return type

[**[]CowSettlementDTO**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowTokensCurrent

> []CowTokenDTO CowTokensCurrent(ctx).Execute()

Tokens (current)



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
    resp, r, err := apiClient.CowApi.CowTokensCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowTokensCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowTokensCurrent`: []CowTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowTokensCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCowTokensCurrentRequest struct via the builder pattern


### Return type

[**[]CowTokenDTO**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowTradesCurrent

> []CowTradeDTO CowTradesCurrent(ctx).Execute()

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
    resp, r, err := apiClient.CowApi.CowTradesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowTradesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowTradesCurrent`: []CowTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowTradesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCowTradesCurrentRequest struct via the builder pattern


### Return type

[**[]CowTradeDTO**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowUsersCurrent

> []CowUserDTO CowUsersCurrent(ctx).Execute()

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
    resp, r, err := apiClient.CowApi.CowUsersCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowUsersCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowUsersCurrent`: []CowUserDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowUsersCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCowUsersCurrentRequest struct via the builder pattern


### Return type

[**[]CowUserDTO**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

