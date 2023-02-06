# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexBatchesCurrent**](DexApi.md#dexBatchesCurrent) | **GET** /dapps/dex/batches/current | Batches (current)
[**dexDepositsCurrent**](DexApi.md#dexDepositsCurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**dexGetBatchesHistorical**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dexGetStatsHistorical**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dexGetWithdrawRequestsHistorical**](DexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dexOrdersCurrent**](DexApi.md#dexOrdersCurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**dexPricesCurrent**](DexApi.md#dexPricesCurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**dexSolutionsCurrent**](DexApi.md#dexSolutionsCurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**dexStatsCurrent**](DexApi.md#dexStatsCurrent) | **GET** /dapps/dex/stats/current | Stats (current)
[**dexTokensCurrent**](DexApi.md#dexTokensCurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**dexTradesCurrent**](DexApi.md#dexTradesCurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**dexUsersCurrent**](DexApi.md#dexUsersCurrent) | **GET** /dapps/dex/users/current | Users (current)
[**dexWithdrawRequestsCurrent**](DexApi.md#dexWithdrawRequestsCurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**dexWithdrawsCurrent**](DexApi.md#dexWithdrawsCurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)



## dexBatchesCurrent

> List&lt;DexBatchDTO&gt; dexBatchesCurrent()

Batches (current)

Gets batches.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexBatchDTO> result = apiInstance.dexBatchesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexBatchesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexDepositsCurrent

> List&lt;DexDepositDTO&gt; dexDepositsCurrent()

Deposits (current)

Gets deposits.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexDepositDTO> result = apiInstance.dexDepositsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexDepositsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetBatchesHistorical

> List&lt;DexBatchDTO&gt; dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id)

Batches (historical)

Gets batches.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier.
try {
    List<DexBatchDTO> result = apiInstance.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetBatchesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Identifier. | [optional] [default to null]

### Return type

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetDepositsHistorical

> List&lt;DexDepositDTO&gt; dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Deposits (historical)

Gets deposits.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier, format: (transaction hash)-(token id).
String user = null; // String | User address.
try {
    List<DexDepositDTO> result = apiInstance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetDepositsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Identifier, format: (transaction hash)-(token id). | [optional] [default to null]
 **user** | **String**| User address. | [optional] [default to null]

### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetOrdersHistorical

> List&lt;DexOrderDTO&gt; dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Orders (historical)

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier, format: (owner address)-(order id)
String buyToken = null; // String | Identifier of token that was bought.
String sellToken = null; // String | Identifier of token that was sold.
try {
    List<DexOrderDTO> result = apiInstance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetOrdersHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Identifier, format: (owner address)-(order id) | [optional] [default to null]
 **buyToken** | **String**| Identifier of token that was bought. | [optional] [default to null]
 **sellToken** | **String**| Identifier of token that was sold. | [optional] [default to null]

### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetPricesHistorical

> List&lt;DexPriceDTO&gt; dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)

Prices (historical)

Gets prices.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier, format: (token id)-(batch id).
try {
    List<DexPriceDTO> result = apiInstance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetPricesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Identifier, format: (token id)-(batch id). | [optional] [default to null]

### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetSolutionsHistorical

> List&lt;DexSolutionDTO&gt; dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)

Solutions (historical)

Gets solutions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<DexSolutionDTO> result = apiInstance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetSolutionsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetStatsHistorical

> List&lt;DexStatsDTO&gt; dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id)

Stats (historical)

Gets stats.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<DexStatsDTO> result = apiInstance.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetStatsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTokensHistorical

> List&lt;DexTokenDTO&gt; dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name)

Tokens (historical)

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
String address = null; // String | 
String symbol = null; // String | 
String name = null; // String | 
try {
    List<DexTokenDTO> result = apiInstance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetTokensHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **address** | **String**|  | [optional] [default to null]
 **symbol** | **String**|  | [optional] [default to null]
 **name** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTradesHistorical

> List&lt;DexTradeDTO&gt; dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Trades (historical)

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
String buyToken = null; // String | 
String sellToken = null; // String | 
try {
    List<DexTradeDTO> result = apiInstance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetTradesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **buyToken** | **String**|  | [optional] [default to null]
 **sellToken** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetUsersHistorical

> List&lt;DexUserDTO&gt; dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<DexUserDTO> result = apiInstance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetUsersHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetWithdrawRequestsHistorical

> List&lt;DexWithdrawRequestDTO&gt; dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user)

WithdrawRequests (historical)

Gets withdrawRequests.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier, format: (transaction hash)-(id).
String user = null; // String | 
try {
    List<DexWithdrawRequestDTO> result = apiInstance.dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetWithdrawRequestsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Identifier, format: (transaction hash)-(id). | [optional] [default to null]
 **user** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetWithdrawsHistorical

> List&lt;DexWithdrawDTO&gt; dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Withdraws (historical)

Gets withdraws.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier, format: (transaction hash)-(id).
String user = null; // String | 
try {
    List<DexWithdrawDTO> result = apiInstance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetWithdrawsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Identifier, format: (transaction hash)-(id). | [optional] [default to null]
 **user** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexOrdersCurrent

> List&lt;DexOrderDTO&gt; dexOrdersCurrent()

Orders (current)

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexOrderDTO> result = apiInstance.dexOrdersCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexOrdersCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexPricesCurrent

> List&lt;DexPriceDTO&gt; dexPricesCurrent()

Prices (current)

Gets prices.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexPriceDTO> result = apiInstance.dexPricesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexPricesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexSolutionsCurrent

> List&lt;DexSolutionDTO&gt; dexSolutionsCurrent()

Solutions (current)

Gets solutions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexSolutionDTO> result = apiInstance.dexSolutionsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexSolutionsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexStatsCurrent

> List&lt;DexStatsDTO&gt; dexStatsCurrent()

Stats (current)

Gets stats.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexStatsDTO> result = apiInstance.dexStatsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexStatsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexTokensCurrent

> List&lt;DexTokenDTO&gt; dexTokensCurrent()

Tokens (current)

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexTokenDTO> result = apiInstance.dexTokensCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexTokensCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexTradesCurrent

> List&lt;DexTradeDTO&gt; dexTradesCurrent()

Trades (current)

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexTradeDTO> result = apiInstance.dexTradesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexTradesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexUsersCurrent

> List&lt;DexUserDTO&gt; dexUsersCurrent()

Users (current)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexUserDTO> result = apiInstance.dexUsersCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexUsersCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexWithdrawRequestsCurrent

> List&lt;DexWithdrawRequestDTO&gt; dexWithdrawRequestsCurrent()

WithdrawRequests (current)

Gets withdrawRequests.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexWithdrawRequestDTO> result = apiInstance.dexWithdrawRequestsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexWithdrawRequestsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexWithdrawsCurrent

> List&lt;DexWithdrawDTO&gt; dexWithdrawsCurrent()

Withdraws (current)

Gets withdraws.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
try {
    List<DexWithdrawDTO> result = apiInstance.dexWithdrawsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexWithdrawsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

