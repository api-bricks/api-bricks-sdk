# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥



## uniswapV2GetPoolsCurrent

> List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
String filterPoolId = null; // String | 
try {
    List<UniswapV2PairV2DTO> result = apiInstance.uniswapV2GetPoolsCurrent(filterPoolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPoolsCurrent");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetSwapsCurrent

> List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
try {
    List<UniswapV2SwapV2DTO> result = apiInstance.uniswapV2GetSwapsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetSwapsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTokensCurrent

> List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
try {
    List<UniswapV2TokenV2DTO> result = apiInstance.uniswapV2GetTokensCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokensCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

