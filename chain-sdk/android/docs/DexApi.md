# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchsHistorical**](DexApi.md#dexGetBatchsHistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
[**dexGetStatssHistorical**](DexApi.md#dexGetStatssHistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
[**dexGetWithdrawRequestsHistorical**](DexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥



## dexGetBatchsHistorical

> List&lt;DexBatchDTO&gt; dexGetBatchsHistorical(startBlock, endBlock, startDate, endDate, id)

Batchs (historical) 🔥

Gets batchs.

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
    List<DexBatchDTO> result = apiInstance.dexGetBatchsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetBatchsHistorical");
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

Deposits (historical) 🔥

Gets deposits.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String id = null; // String | 
String user = null; // String | 
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
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **user** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetOrdersHistorical

> List&lt;DexOrderDTO&gt; dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Orders (historical) 🔥

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String id = null; // String | 
String buyToken = null; // String | 
String sellToken = null; // String | 
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
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **buyToken** | **String**|  | [optional] [default to null]
 **sellToken** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetPricesHistorical

> List&lt;DexPriceDTO&gt; dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)

Prices (historical) 🔥

Gets prices.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String id = null; // String | 
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
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetSolutionsHistorical

> List&lt;DexSolutionDTO&gt; dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)

Solutions (historical) 🔥

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


## dexGetStatssHistorical

> List&lt;DexStatsDTO&gt; dexGetStatssHistorical(startBlock, endBlock, startDate, endDate, id)

Statss (historical) 🔥

Gets statss.

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
    List<DexStatsDTO> result = apiInstance.dexGetStatssHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetStatssHistorical");
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

Tokens (historical) 🔥

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

Trades (historical) 🔥

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

Users (historical) 🔥

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

WithdrawRequests (historical) 🔥

Gets withdrawrequests.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String id = null; // String | 
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
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
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

Withdraws (historical) 🔥

Gets withdraws.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String id = null; // String | 
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
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **user** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

