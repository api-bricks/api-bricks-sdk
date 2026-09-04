# \MetadataAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1AssetsAssetIdGet**](MetadataAPI.md#V1AssetsAssetIdGet) | **Get** /v1/assets/{asset_id} | List all assets by asset ID
[**V1AssetsGet**](MetadataAPI.md#V1AssetsGet) | **Get** /v1/assets | List all assets
[**V1AssetsIconsSizeGet**](MetadataAPI.md#V1AssetsIconsSizeGet) | **Get** /v1/assets/icons/{size} | List all asset icons
[**V1ChainsChainIdGet**](MetadataAPI.md#V1ChainsChainIdGet) | **Get** /v1/chains/{chain_id} | List all chains by chain ID
[**V1ChainsGet**](MetadataAPI.md#V1ChainsGet) | **Get** /v1/chains | List all blockchain chains
[**V1ExchangesExchangeIdGet**](MetadataAPI.md#V1ExchangesExchangeIdGet) | **Get** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**V1ExchangesGet**](MetadataAPI.md#V1ExchangesGet) | **Get** /v1/exchanges | List all exchanges
[**V1ExchangesIconsSizeGet**](MetadataAPI.md#V1ExchangesIconsSizeGet) | **Get** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**V1SymbolsExchangeIdActiveGet**](MetadataAPI.md#V1SymbolsExchangeIdActiveGet) | **Get** /v1/symbols/{exchange_id}/active | List all active symbols
[**V1SymbolsExchangeIdHistoryGet**](MetadataAPI.md#V1SymbolsExchangeIdHistoryGet) | **Get** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
[**V1SymbolsMapExchangeIdGet**](MetadataAPI.md#V1SymbolsMapExchangeIdGet) | **Get** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange



## V1AssetsAssetIdGet

> []MarketDataMetadataAsset V1AssetsAssetIdGet(ctx, assetId).Execute()

List all assets by asset ID

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
	assetId := "assetId_example" // string | The asset ID.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsAssetIdGet(context.Background(), assetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsAssetIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsAssetIdGet`: []MarketDataMetadataAsset
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsAssetIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**assetId** | **string** | The asset ID. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsAssetIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]MarketDataMetadataAsset**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1AssetsGet

> []MarketDataMetadataAsset V1AssetsGet(ctx).FilterAssetId(filterAssetId).FilterAssetType(filterAssetType).Execute()

List all assets



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
	filterAssetId := "filterAssetId_example" // string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)
	filterAssetType := "filterAssetType_example" // string | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsGet(context.Background()).FilterAssetId(filterAssetId).FilterAssetType(filterAssetType).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsGet`: []MarketDataMetadataAsset
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | 
 **filterAssetType** | **string** | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | 

### Return type

[**[]MarketDataMetadataAsset**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1AssetsIconsSizeGet

> []MarketDataMetadataIcon V1AssetsIconsSizeGet(ctx, size).Execute()

List all asset icons



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
	size := int32(56) // int32 | The size of the icons.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsIconsSizeGet(context.Background(), size).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsIconsSizeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsIconsSizeGet`: []MarketDataMetadataIcon
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsIconsSizeGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**size** | **int32** | The size of the icons. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsIconsSizeGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]MarketDataMetadataIcon**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ChainsChainIdGet

> []MarketDataMetadataChain V1ChainsChainIdGet(ctx, chainId).Execute()

List all chains by chain ID

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
	chainId := "chainId_example" // string | The chain ID.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ChainsChainIdGet(context.Background(), chainId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ChainsChainIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ChainsChainIdGet`: []MarketDataMetadataChain
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ChainsChainIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | The chain ID. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ChainsChainIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]MarketDataMetadataChain**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ChainsGet

> []MarketDataMetadataChain V1ChainsGet(ctx).FilterChainId(filterChainId).Execute()

List all blockchain chains



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
	filterChainId := "filterChainId_example" // string | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ChainsGet(context.Background()).FilterChainId(filterChainId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ChainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ChainsGet`: []MarketDataMetadataChain
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ChainsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ChainsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainId** | **string** | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | 

### Return type

[**[]MarketDataMetadataChain**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangesExchangeIdGet

> []MarketDataMetadataExchange V1ExchangesExchangeIdGet(ctx, exchangeId).Execute()

List all exchanges by exchange_id

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
	exchangeId := "exchangeId_example" // string | The ID of the exchange.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesExchangeIdGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesExchangeIdGet`: []MarketDataMetadataExchange
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]MarketDataMetadataExchange**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangesGet

> []MarketDataMetadataExchange V1ExchangesGet(ctx).FilterExchangeId(filterExchangeId).Execute()

List all exchanges



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
	filterExchangeId := "filterExchangeId_example" // string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesGet(context.Background()).FilterExchangeId(filterExchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesGet`: []MarketDataMetadataExchange
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | 

### Return type

[**[]MarketDataMetadataExchange**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangesIconsSizeGet

> []MarketDataMetadataIcon V1ExchangesIconsSizeGet(ctx, size).Execute()

List of icons for the exchanges

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
	size := int32(56) // int32 | The size of the icons.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesIconsSizeGet(context.Background(), size).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesIconsSizeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesIconsSizeGet`: []MarketDataMetadataIcon
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesIconsSizeGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**size** | **int32** | The size of the icons. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesIconsSizeGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]MarketDataMetadataIcon**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsExchangeIdActiveGet

> []MarketDataMetadataSymbol V1SymbolsExchangeIdActiveGet(ctx, exchangeId).FilterSymbolId(filterSymbolId).FilterAssetId(filterAssetId).Execute()

List all active symbols



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
	exchangeId := "exchangeId_example" // string | The ID of the exchange.
	filterSymbolId := "filterSymbolId_example" // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (optional)
	filterAssetId := "filterAssetId_example" // string | The filter for asset ID. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsExchangeIdActiveGet(context.Background(), exchangeId).FilterSymbolId(filterSymbolId).FilterAssetId(filterAssetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsExchangeIdActiveGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsExchangeIdActiveGet`: []MarketDataMetadataSymbol
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsExchangeIdActiveGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsExchangeIdActiveGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | 
 **filterAssetId** | **string** | The filter for asset ID. | 

### Return type

[**[]MarketDataMetadataSymbol**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsExchangeIdHistoryGet

> []MarketDataMetadataSymbol V1SymbolsExchangeIdHistoryGet(ctx, exchangeId).Page(page).Limit(limit).Execute()

List all historical symbols for an exchange.



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
	exchangeId := "exchangeId_example" // string | The ID of the exchange.
	page := int32(56) // int32 | The page number for pagination (starts from 1). (optional) (default to 1)
	limit := int32(56) // int32 | Number of records to return per page. (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsExchangeIdHistoryGet(context.Background(), exchangeId).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsExchangeIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsExchangeIdHistoryGet`: []MarketDataMetadataSymbol
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsExchangeIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsExchangeIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **page** | **int32** | The page number for pagination (starts from 1). | [default to 1]
 **limit** | **int32** | Number of records to return per page. | [default to 100]

### Return type

[**[]MarketDataMetadataSymbol**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsMapExchangeIdGet

> []V1SymbolMapping V1SymbolsMapExchangeIdGet(ctx, exchangeId).Execute()

List active symbol mapping for the exchange

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
	exchangeId := "exchangeId_example" // string | The ID of the exchange (from the Metadata -> Exchanges)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsMapExchangeIdGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsMapExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsMapExchangeIdGet`: []V1SymbolMapping
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsMapExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsMapExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1SymbolMapping**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

