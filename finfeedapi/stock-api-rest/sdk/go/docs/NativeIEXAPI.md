# \NativeIEXAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1NativeIexAdminMessagesSymbolGet**](NativeIEXAPI.md#V1NativeIexAdminMessagesSymbolGet) | **Get** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**V1NativeIexAdminSystemEventGet**](NativeIEXAPI.md#V1NativeIexAdminSystemEventGet) | **Get** /v1/native/iex/admin/system-event | Get System Events
[**V1NativeIexLevel1QuoteSymbolGet**](NativeIEXAPI.md#V1NativeIexLevel1QuoteSymbolGet) | **Get** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXAPI.md#V1NativeIexLevel2PriceLevelUpdateSymbolGet) | **Get** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXAPI.md#V1NativeIexLevel3OrderBookSymbolGet) | **Get** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**V1NativeIexTradeSymbolGet**](NativeIEXAPI.md#V1NativeIexTradeSymbolGet) | **Get** /v1/native/iex/trade/{symbol} | Get Trades



## V1NativeIexAdminMessagesSymbolGet

> []ModelsAdminMessageModel V1NativeIexAdminMessagesSymbolGet(ctx, symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()

Get Admin Messages



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
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
	timeStart := "timeStart_example" // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
	limit := int32(56) // int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexAdminMessagesSymbolGet(context.Background(), symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexAdminMessagesSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexAdminMessagesSymbolGet`: []ModelsAdminMessageModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexAdminMessagesSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexAdminMessagesSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | 
 **timeStart** | **string** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | 
 **limit** | **int32** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | 

### Return type

[**[]ModelsAdminMessageModel**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexAdminSystemEventGet

> []IEXSystemEventSystemEventModel V1NativeIexAdminSystemEventGet(ctx).Date(date).TimeStart(timeStart).Limit(limit).Execute()

Get System Events



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
	date := time.Now() // time.Time | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
	timeStart := "timeStart_example" // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
	limit := int32(56) // int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexAdminSystemEventGet(context.Background()).Date(date).TimeStart(timeStart).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexAdminSystemEventGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexAdminSystemEventGet`: []IEXSystemEventSystemEventModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexAdminSystemEventGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexAdminSystemEventGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **time.Time** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | 
 **timeStart** | **string** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | 
 **limit** | **int32** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | 

### Return type

[**[]IEXSystemEventSystemEventModel**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexLevel1QuoteSymbolGet

> []IEXQuoteUpdateQuoteUpdateModel V1NativeIexLevel1QuoteSymbolGet(ctx, symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()

Get Level-1 Quotes



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
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
	timeStart := "timeStart_example" // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
	limit := int32(56) // int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexLevel1QuoteSymbolGet(context.Background(), symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexLevel1QuoteSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexLevel1QuoteSymbolGet`: []IEXQuoteUpdateQuoteUpdateModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexLevel1QuoteSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexLevel1QuoteSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | 
 **timeStart** | **string** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | 
 **limit** | **int32** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | 

### Return type

[**[]IEXQuoteUpdateQuoteUpdateModel**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexLevel2PriceLevelUpdateSymbolGet

> []IEXPriceLevelUpdatePriceLevelUpdateModel V1NativeIexLevel2PriceLevelUpdateSymbolGet(ctx, symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()

Get Level-2 Price Level Book



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
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
	timeStart := "timeStart_example" // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
	limit := int32(56) // int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexLevel2PriceLevelUpdateSymbolGet(context.Background(), symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexLevel2PriceLevelUpdateSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexLevel2PriceLevelUpdateSymbolGet`: []IEXPriceLevelUpdatePriceLevelUpdateModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexLevel2PriceLevelUpdateSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexLevel2PriceLevelUpdateSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | 
 **timeStart** | **string** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | 
 **limit** | **int32** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | 

### Return type

[**[]IEXPriceLevelUpdatePriceLevelUpdateModel**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexLevel3OrderBookSymbolGet

> []ModelsOrderBookModel V1NativeIexLevel3OrderBookSymbolGet(ctx, symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()

Get Level-3 Order Book



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
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
	timeStart := "timeStart_example" // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
	limit := int32(56) // int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexLevel3OrderBookSymbolGet(context.Background(), symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexLevel3OrderBookSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexLevel3OrderBookSymbolGet`: []ModelsOrderBookModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexLevel3OrderBookSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexLevel3OrderBookSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | 
 **timeStart** | **string** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | 
 **limit** | **int32** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | 

### Return type

[**[]ModelsOrderBookModel**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1NativeIexTradeSymbolGet

> []IEXTradeTradeModel V1NativeIexTradeSymbolGet(ctx, symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()

Get Trades



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
	symbol := "symbol_example" // string | The symbol identifier
	date := time.Now() // time.Time | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
	timeStart := "timeStart_example" // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
	limit := int32(56) // int32 | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NativeIEXAPI.V1NativeIexTradeSymbolGet(context.Background(), symbol).Date(date).TimeStart(timeStart).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NativeIEXAPI.V1NativeIexTradeSymbolGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1NativeIexTradeSymbolGet`: []IEXTradeTradeModel
	fmt.Fprintf(os.Stdout, "Response from `NativeIEXAPI.V1NativeIexTradeSymbolGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbol** | **string** | The symbol identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1NativeIexTradeSymbolGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **time.Time** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | 
 **timeStart** | **string** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | 
 **limit** | **int32** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | 

### Return type

[**[]IEXTradeTradeModel**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

