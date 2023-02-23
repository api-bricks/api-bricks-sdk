# \BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1BalancesGet**](BalancesApi.md#V1BalancesGet) | **Get** /v1/balances | Get balances



## V1BalancesGet

> []Balance V1BalancesGet(ctx).ExchangeId(exchangeId).Execute()

Get balances



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
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.BalancesApi.V1BalancesGet(context.Background()).ExchangeId(exchangeId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `BalancesApi.V1BalancesGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `V1BalancesGet`: []Balance
    fmt.Fprintf(os.Stdout, "Response from `BalancesApi.V1BalancesGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1BalancesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Filter the balances to the specific exchange. | 

### Return type

[**[]Balance**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

