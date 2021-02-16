# \PositionsApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1PositionsGet**](PositionsApi.md#V1PositionsGet) | **Get** /v1/positions | Get open positions



## V1PositionsGet

> []Position V1PositionsGet(ctx).ExchangeId(exchangeId).Execute()

Get open positions



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
    exchangeId := "KRAKEN" // string | Filter the balances to the specific exchange. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.PositionsApi.V1PositionsGet(context.Background()).ExchangeId(exchangeId).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `PositionsApi.V1PositionsGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1PositionsGet`: []Position
    fmt.Fprintf(os.Stdout, "Response from `PositionsApi.V1PositionsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1PositionsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Filter the balances to the specific exchange. | 

### Return type

[**[]Position**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

