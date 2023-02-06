# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**cowOrdersCurrent**](CowApi.md#cowOrdersCurrent) | **GET** /dapps/cow/orders/current | Orders (current)
[**cowSettlementsCurrent**](CowApi.md#cowSettlementsCurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**cowTokensCurrent**](CowApi.md#cowTokensCurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**cowTradesCurrent**](CowApi.md#cowTradesCurrent) | **GET** /dapps/cow/trades/current | Trades (current)
[**cowUsersCurrent**](CowApi.md#cowUsersCurrent) | **GET** /dapps/cow/users/current | Users (current)



## cowGetOrdersHistorical

> List&lt;CowOrderDTO&gt; cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)

Orders (historical)

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | User's address.
try {
    List<CowOrderDTO> result = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetOrdersHistorical");
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
 **id** | **String**| User&#39;s address. | [optional] [default to null]

### Return type

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetSettlementsHistorical

> List&lt;CowSettlementDTO&gt; cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)

Settlements (historical)

Gets settlements.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Transaction hash.
try {
    List<CowSettlementDTO> result = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical");
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
 **id** | **String**| Transaction hash. | [optional] [default to null]

### Return type

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTokensHistorical

> List&lt;CowTokenDTO&gt; cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)

Tokens (historical)

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Token's address.
String address = null; // String | Token's address.
String name = null; // String | Token name fetched by ERC20 contract call.
String symbol = null; // String | Token symbol fetched by contract call.
try {
    List<CowTokenDTO> result = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetTokensHistorical");
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
 **id** | **String**| Token&#39;s address. | [optional] [default to null]
 **address** | **String**| Token&#39;s address. | [optional] [default to null]
 **name** | **String**| Token name fetched by ERC20 contract call. | [optional] [default to null]
 **symbol** | **String**| Token symbol fetched by contract call. | [optional] [default to null]

### Return type

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTradesHistorical

> List&lt;CowTradeDTO&gt; cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)

Trades (historical)

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Identifier, format: (order id)|(transaction hash)|(event index).
String sellToken = null; // String | Address of token that is sold.
String buyToken = null; // String | Address of token that is bought.
try {
    List<CowTradeDTO> result = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetTradesHistorical");
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
 **id** | **String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] [default to null]
 **sellToken** | **String**| Address of token that is sold. | [optional] [default to null]
 **buyToken** | **String**| Address of token that is bought. | [optional] [default to null]

### Return type

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetUsersHistorical

> List&lt;CowUserDTO&gt; cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)

Users (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | User's address.
String address = null; // String | User's address.
try {
    List<CowUserDTO> result = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetUsersHistorical");
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
 **id** | **String**| User&#39;s address. | [optional] [default to null]
 **address** | **String**| User&#39;s address. | [optional] [default to null]

### Return type

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowOrdersCurrent

> List&lt;CowOrderDTO&gt; cowOrdersCurrent()

Orders (current)

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
try {
    List<CowOrderDTO> result = apiInstance.cowOrdersCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowOrdersCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowSettlementsCurrent

> List&lt;CowSettlementDTO&gt; cowSettlementsCurrent()

Settlements (current)

Gets settlements.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
try {
    List<CowSettlementDTO> result = apiInstance.cowSettlementsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowSettlementsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowTokensCurrent

> List&lt;CowTokenDTO&gt; cowTokensCurrent()

Tokens (current)

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
try {
    List<CowTokenDTO> result = apiInstance.cowTokensCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowTokensCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowTradesCurrent

> List&lt;CowTradeDTO&gt; cowTradesCurrent()

Trades (current)

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
try {
    List<CowTradeDTO> result = apiInstance.cowTradesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowTradesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowUsersCurrent

> List&lt;CowUserDTO&gt; cowUsersCurrent()

Users (current)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
try {
    List<CowUserDTO> result = apiInstance.cowUsersCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowUsersCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

