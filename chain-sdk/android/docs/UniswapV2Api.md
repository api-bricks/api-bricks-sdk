# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetBundlesHistorical**](UniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical-manual | Bundles (historical)
[**uniswapV2GetBurnsHistorical**](UniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical-manual | Burns (historical)
[**uniswapV2GetDayDataHistorical**](UniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical-manual | DayData (historical)
[**uniswapV2GetFactoryHistorical**](UniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical-manual | Factory (historical)
[**uniswapV2GetLiquidityPositionsHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical)
[**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical)
[**uniswapV2GetMintsHistorical**](UniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical-manual | Mints (historical)
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetPoolsDayDataHistorical**](UniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical)
[**uniswapV2GetPoolsHistorical**](UniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥
[**uniswapV2GetPoolsHourDataHistorical**](UniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical)
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetSwapsHistorical**](UniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswapV2GetTokensDayDataHistorical**](UniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical)
[**uniswapV2GetTokensHistorical**](UniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥
[**uniswapV2GetTransactionsHistorical**](UniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical-manual | Transactions (historical)
[**uniswapV2GetUsersHistorical**](UniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical-manual | Users (historical)



## uniswapV2GetBundlesHistorical

> List&lt;UniswapV2BundleV2DTO&gt; uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate)

Bundles (historical)

Gets bundles.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<UniswapV2BundleV2DTO> result = apiInstance.uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetBundlesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetBurnsHistorical

> List&lt;UniswapV2BurnV2DTO&gt; uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Burns (historical)

Gets burns.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2BurnV2DTO> result = apiInstance.uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetBurnsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetDayDataHistorical

> List&lt;UniswapV2UniswapDayDataV2DTO&gt; uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate)

DayData (historical)

Gets uniswapv2 day data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<UniswapV2UniswapDayDataV2DTO> result = apiInstance.uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetDayDataHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetFactoryHistorical

> List&lt;UniswapV2UniswapFactoryV2DTO&gt; uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate)

Factory (historical)

Gets factory.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<UniswapV2UniswapFactoryV2DTO> result = apiInstance.uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetFactoryHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetLiquidityPositionsHistorical

> List&lt;UniswapV2LiquidityPositionV2DTO&gt; uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositions (historical)

Gets liquidity positions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2LiquidityPositionV2DTO> result = apiInstance.uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetLiquidityPositionsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetLiquidityPositionsSnapshotsHistorical

> List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt; uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2LiquidityPositionSnapshotV2DTO> result = apiInstance.uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetLiquidityPositionsSnapshotsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetMintsHistorical

> List&lt;UniswapV2MintV2DTO&gt; uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Mints (historical)

Gets mints.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2MintV2DTO> result = apiInstance.uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetMintsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


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


## uniswapV2GetPoolsDayDataHistorical

> List&lt;UniswapV2PairDayDataV2DTO&gt; uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsDayData (historical)

Gets pools day data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2PairDayDataV2DTO> result = apiInstance.uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPoolsDayDataHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetPoolsHistorical

> List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Pools (historical) 🔥

Gets pools.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2PairV2DTO> result = apiInstance.uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPoolsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetPoolsHourDataHistorical

> List&lt;UniswapV2PairHourDataV2DTO&gt; uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsHourData (historical)

Gets pools tracked each our.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2PairHourDataV2DTO> result = apiInstance.uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPoolsHourDataHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

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


## uniswapV2GetSwapsHistorical

> List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Swaps (historical) 🔥

Gets swaps.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<UniswapV2SwapV2DTO> result = apiInstance.uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetSwapsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **poolId** | **String**|  | [optional] [default to null]

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


## uniswapV2GetTokensDayDataHistorical

> List&lt;UniswapV2TokenDayDataV2DTO&gt; uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

TokensDayData (historical)

Gets tokens day data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<UniswapV2TokenDayDataV2DTO> result = apiInstance.uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokensDayDataHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTokensHistorical

> List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<UniswapV2TokenV2DTO> result = apiInstance.uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokensHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTransactionsHistorical

> List&lt;UniswapV2TransactionV2DTO&gt; uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

Transactions (historical)

Gets transactions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<UniswapV2TransactionV2DTO> result = apiInstance.uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTransactionsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetUsersHistorical

> List&lt;UniswapV2UserV2DTO&gt; uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<UniswapV2UserV2DTO> result = apiInstance.uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUsersHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

