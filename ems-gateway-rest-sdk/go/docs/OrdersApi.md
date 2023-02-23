# \OrdersApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#V1OrdersCancelAllPost) | **Post** /v1/orders/cancel/all | Cancel all orders request
[**V1OrdersCancelPost**](OrdersApi.md#V1OrdersCancelPost) | **Post** /v1/orders/cancel | Cancel order request
[**V1OrdersGet**](OrdersApi.md#V1OrdersGet) | **Get** /v1/orders | Get open orders
[**V1OrdersHistoryTimeStartTimeEndGet**](OrdersApi.md#V1OrdersHistoryTimeStartTimeEndGet) | **Get** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**V1OrdersPost**](OrdersApi.md#V1OrdersPost) | **Post** /v1/orders | Send new order
[**V1OrdersStatusClientOrderIdGet**](OrdersApi.md#V1OrdersStatusClientOrderIdGet) | **Get** /v1/orders/status/{client_order_id} | Get order execution report



## V1OrdersCancelAllPost

> MessageReject V1OrdersCancelAllPost(ctx).OrderCancelAllRequest(orderCancelAllRequest).Execute()

Cancel all orders request



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    orderCancelAllRequest := *openapiclient.NewOrderCancelAllRequest("KRAKEN") // OrderCancelAllRequest | OrderCancelAllRequest object.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OrdersApi.V1OrdersCancelAllPost(context.Background()).OrderCancelAllRequest(orderCancelAllRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OrdersApi.V1OrdersCancelAllPost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1OrdersCancelAllPost`: MessageReject
    fmt.Fprintf(os.Stdout, "Response from `OrdersApi.V1OrdersCancelAllPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1OrdersCancelAllPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md) | OrderCancelAllRequest object. | 

### Return type

[**MessageReject**](MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersCancelPost

> OrderExecutionReport V1OrdersCancelPost(ctx).OrderCancelSingleRequest(orderCancelSingleRequest).Execute()

Cancel order request



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    orderCancelSingleRequest := *openapiclient.NewOrderCancelSingleRequest("KRAKEN") // OrderCancelSingleRequest | OrderCancelSingleRequest object.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OrdersApi.V1OrdersCancelPost(context.Background()).OrderCancelSingleRequest(orderCancelSingleRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OrdersApi.V1OrdersCancelPost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1OrdersCancelPost`: OrderExecutionReport
    fmt.Fprintf(os.Stdout, "Response from `OrdersApi.V1OrdersCancelPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1OrdersCancelPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md) | OrderCancelSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersGet

> []OrderExecutionReport V1OrdersGet(ctx).ExchangeId(exchangeId).Execute()

Get open orders



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    exchangeId := "KRAKEN" // string | Filter the open orders to the specific exchange. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OrdersApi.V1OrdersGet(context.Background()).ExchangeId(exchangeId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OrdersApi.V1OrdersGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1OrdersGet`: []OrderExecutionReport
    fmt.Fprintf(os.Stdout, "Response from `OrdersApi.V1OrdersGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1OrdersGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Filter the open orders to the specific exchange. | 

### Return type

[**[]OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersHistoryTimeStartTimeEndGet

> []OrderHistory V1OrdersHistoryTimeStartTimeEndGet(ctx, timeStart, timeEnd).Execute()

History of order changes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    timeStart := "2022-05-01T00:00:00" // string | Start date
    timeEnd := "2022-05-01T12:00:00" // string | End date

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OrdersApi.V1OrdersHistoryTimeStartTimeEndGet(context.Background(), timeStart, timeEnd).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OrdersApi.V1OrdersHistoryTimeStartTimeEndGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1OrdersHistoryTimeStartTimeEndGet`: []OrderHistory
    fmt.Fprintf(os.Stdout, "Response from `OrdersApi.V1OrdersHistoryTimeStartTimeEndGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**timeStart** | **string** | Start date | 
**timeEnd** | **string** | End date | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OrdersHistoryTimeStartTimeEndGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**[]OrderHistory**](OrderHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersPost

> OrderExecutionReport V1OrdersPost(ctx).OrderNewSingleRequest(orderNewSingleRequest).Execute()

Send new order



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    orderNewSingleRequest := *openapiclient.NewOrderNewSingleRequest("KRAKEN", "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b", float32(0.045), float32(0.0783), openapiclient.OrdSide("BUY"), openapiclient.OrdType("LIMIT"), openapiclient.TimeInForce("GOOD_TILL_CANCEL")) // OrderNewSingleRequest | OrderNewSingleRequest object.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OrdersApi.V1OrdersPost(context.Background()).OrderNewSingleRequest(orderNewSingleRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OrdersApi.V1OrdersPost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1OrdersPost`: OrderExecutionReport
    fmt.Fprintf(os.Stdout, "Response from `OrdersApi.V1OrdersPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1OrdersPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md) | OrderNewSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersStatusClientOrderIdGet

> OrderExecutionReport V1OrdersStatusClientOrderIdGet(ctx, clientOrderId).Execute()

Get order execution report



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    clientOrderId := "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b" // string | The unique identifier of the order assigned by the client.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OrdersApi.V1OrdersStatusClientOrderIdGet(context.Background(), clientOrderId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OrdersApi.V1OrdersStatusClientOrderIdGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1OrdersStatusClientOrderIdGet`: OrderExecutionReport
    fmt.Fprintf(os.Stdout, "Response from `OrdersApi.V1OrdersStatusClientOrderIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**clientOrderId** | **string** | The unique identifier of the order assigned by the client. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OrdersStatusClientOrderIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

