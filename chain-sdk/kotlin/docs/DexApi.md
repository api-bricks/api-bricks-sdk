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


<a id="dexBatchesCurrent"></a>
# **dexBatchesCurrent**
> kotlin.collections.List&lt;DexBatchDTO&gt; dexBatchesCurrent()

Batches (current)

Gets batches.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexBatchDTO> = apiInstance.dexBatchesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexBatchesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexBatchesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexDepositsCurrent"></a>
# **dexDepositsCurrent**
> kotlin.collections.List&lt;DexDepositDTO&gt; dexDepositsCurrent()

Deposits (current)

Gets deposits.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexDepositDTO> = apiInstance.dexDepositsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexDepositsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexDepositsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetBatchesHistorical"></a>
# **dexGetBatchesHistorical**
> kotlin.collections.List&lt;DexBatchDTO&gt; dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id)

Batches (historical)

Gets batches.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier.
try {
    val result : kotlin.collections.List<DexBatchDTO> = apiInstance.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetBatchesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetBatchesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Identifier. | [optional]

### Return type

[**kotlin.collections.List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetDepositsHistorical"></a>
# **dexGetDepositsHistorical**
> kotlin.collections.List&lt;DexDepositDTO&gt; dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Deposits (historical)

Gets deposits.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier, format: (transaction hash)-(token id).
val user : kotlin.String = user_example // kotlin.String | User address.
try {
    val result : kotlin.collections.List<DexDepositDTO> = apiInstance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetDepositsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetDepositsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Identifier, format: (transaction hash)-(token id). | [optional]
 **user** | **kotlin.String**| User address. | [optional]

### Return type

[**kotlin.collections.List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetOrdersHistorical"></a>
# **dexGetOrdersHistorical**
> kotlin.collections.List&lt;DexOrderDTO&gt; dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Orders (historical)

Gets orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier, format: (owner address)-(order id)
val buyToken : kotlin.String = buyToken_example // kotlin.String | Identifier of token that was bought.
val sellToken : kotlin.String = sellToken_example // kotlin.String | Identifier of token that was sold.
try {
    val result : kotlin.collections.List<DexOrderDTO> = apiInstance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetOrdersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetOrdersHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Identifier, format: (owner address)-(order id) | [optional]
 **buyToken** | **kotlin.String**| Identifier of token that was bought. | [optional]
 **sellToken** | **kotlin.String**| Identifier of token that was sold. | [optional]

### Return type

[**kotlin.collections.List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetPricesHistorical"></a>
# **dexGetPricesHistorical**
> kotlin.collections.List&lt;DexPriceDTO&gt; dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)

Prices (historical)

Gets prices.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier, format: (token id)-(batch id).
try {
    val result : kotlin.collections.List<DexPriceDTO> = apiInstance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetPricesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetPricesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Identifier, format: (token id)-(batch id). | [optional]

### Return type

[**kotlin.collections.List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetSolutionsHistorical"></a>
# **dexGetSolutionsHistorical**
> kotlin.collections.List&lt;DexSolutionDTO&gt; dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)

Solutions (historical)

Gets solutions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexSolutionDTO> = apiInstance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetSolutionsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetSolutionsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetStatsHistorical"></a>
# **dexGetStatsHistorical**
> kotlin.collections.List&lt;DexStatsDTO&gt; dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id)

Stats (historical)

Gets stats.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexStatsDTO> = apiInstance.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetStatsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetStatsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetTokensHistorical"></a>
# **dexGetTokensHistorical**
> kotlin.collections.List&lt;DexTokenDTO&gt; dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
val address : kotlin.String = address_example // kotlin.String | 
val symbol : kotlin.String = symbol_example // kotlin.String | 
val name : kotlin.String = name_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexTokenDTO> = apiInstance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetTokensHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetTokensHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]
 **address** | **kotlin.String**|  | [optional]
 **symbol** | **kotlin.String**|  | [optional]
 **name** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetTradesHistorical"></a>
# **dexGetTradesHistorical**
> kotlin.collections.List&lt;DexTradeDTO&gt; dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Trades (historical)

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
val buyToken : kotlin.String = buyToken_example // kotlin.String | 
val sellToken : kotlin.String = sellToken_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexTradeDTO> = apiInstance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetTradesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetTradesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]
 **buyToken** | **kotlin.String**|  | [optional]
 **sellToken** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetUsersHistorical"></a>
# **dexGetUsersHistorical**
> kotlin.collections.List&lt;DexUserDTO&gt; dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexUserDTO> = apiInstance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetUsersHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetWithdrawRequestsHistorical"></a>
# **dexGetWithdrawRequestsHistorical**
> kotlin.collections.List&lt;DexWithdrawRequestDTO&gt; dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user)

WithdrawRequests (historical)

Gets withdrawRequests.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier, format: (transaction hash)-(id).
val user : kotlin.String = user_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexWithdrawRequestDTO> = apiInstance.dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetWithdrawRequestsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetWithdrawRequestsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Identifier, format: (transaction hash)-(id). | [optional]
 **user** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexGetWithdrawsHistorical"></a>
# **dexGetWithdrawsHistorical**
> kotlin.collections.List&lt;DexWithdrawDTO&gt; dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Withdraws (historical)

Gets withdraws.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier, format: (transaction hash)-(id).
val user : kotlin.String = user_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexWithdrawDTO> = apiInstance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetWithdrawsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetWithdrawsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Identifier, format: (transaction hash)-(id). | [optional]
 **user** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexOrdersCurrent"></a>
# **dexOrdersCurrent**
> kotlin.collections.List&lt;DexOrderDTO&gt; dexOrdersCurrent()

Orders (current)

Gets orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexOrderDTO> = apiInstance.dexOrdersCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexOrdersCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexOrdersCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexPricesCurrent"></a>
# **dexPricesCurrent**
> kotlin.collections.List&lt;DexPriceDTO&gt; dexPricesCurrent()

Prices (current)

Gets prices.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexPriceDTO> = apiInstance.dexPricesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexPricesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexPricesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexSolutionsCurrent"></a>
# **dexSolutionsCurrent**
> kotlin.collections.List&lt;DexSolutionDTO&gt; dexSolutionsCurrent()

Solutions (current)

Gets solutions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexSolutionDTO> = apiInstance.dexSolutionsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexSolutionsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexSolutionsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexStatsCurrent"></a>
# **dexStatsCurrent**
> kotlin.collections.List&lt;DexStatsDTO&gt; dexStatsCurrent()

Stats (current)

Gets stats.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexStatsDTO> = apiInstance.dexStatsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexStatsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexStatsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexTokensCurrent"></a>
# **dexTokensCurrent**
> kotlin.collections.List&lt;DexTokenDTO&gt; dexTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexTokenDTO> = apiInstance.dexTokensCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexTokensCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexTradesCurrent"></a>
# **dexTradesCurrent**
> kotlin.collections.List&lt;DexTradeDTO&gt; dexTradesCurrent()

Trades (current)

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexTradeDTO> = apiInstance.dexTradesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexTradesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexTradesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexUsersCurrent"></a>
# **dexUsersCurrent**
> kotlin.collections.List&lt;DexUserDTO&gt; dexUsersCurrent()

Users (current)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexUserDTO> = apiInstance.dexUsersCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexUsersCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexUsersCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexWithdrawRequestsCurrent"></a>
# **dexWithdrawRequestsCurrent**
> kotlin.collections.List&lt;DexWithdrawRequestDTO&gt; dexWithdrawRequestsCurrent()

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexWithdrawRequestDTO> = apiInstance.dexWithdrawRequestsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexWithdrawRequestsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexWithdrawRequestsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="dexWithdrawsCurrent"></a>
# **dexWithdrawsCurrent**
> kotlin.collections.List&lt;DexWithdrawDTO&gt; dexWithdrawsCurrent()

Withdraws (current)

Gets withdraws.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
try {
    val result : kotlin.collections.List<DexWithdrawDTO> = apiInstance.dexWithdrawsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexWithdrawsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexWithdrawsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

