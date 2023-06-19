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


<a id="cowGetOrdersHistorical"></a>
# **cowGetOrdersHistorical**
> kotlin.collections.List&lt;CowOrderDTO&gt; cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)

Orders (historical)

Gets orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | User's address.
try {
    val result : kotlin.collections.List<CowOrderDTO> = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetOrdersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetOrdersHistorical")
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
 **id** | **kotlin.String**| User&#39;s address. | [optional]

### Return type

[**kotlin.collections.List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowGetSettlementsHistorical"></a>
# **cowGetSettlementsHistorical**
> kotlin.collections.List&lt;CowSettlementDTO&gt; cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)

Settlements (historical)

Gets settlements.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Transaction hash.
try {
    val result : kotlin.collections.List<CowSettlementDTO> = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetSettlementsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetSettlementsHistorical")
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
 **id** | **kotlin.String**| Transaction hash. | [optional]

### Return type

[**kotlin.collections.List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowGetTokensHistorical"></a>
# **cowGetTokensHistorical**
> kotlin.collections.List&lt;CowTokenDTO&gt; cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)

Tokens (historical)

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Token's address.
val address : kotlin.String = address_example // kotlin.String | Token's address.
val name : kotlin.String = name_example // kotlin.String | Token name fetched by ERC20 contract call.
val symbol : kotlin.String = symbol_example // kotlin.String | Token symbol fetched by contract call.
try {
    val result : kotlin.collections.List<CowTokenDTO> = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetTokensHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetTokensHistorical")
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
 **id** | **kotlin.String**| Token&#39;s address. | [optional]
 **address** | **kotlin.String**| Token&#39;s address. | [optional]
 **name** | **kotlin.String**| Token name fetched by ERC20 contract call. | [optional]
 **symbol** | **kotlin.String**| Token symbol fetched by contract call. | [optional]

### Return type

[**kotlin.collections.List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowGetTradesHistorical"></a>
# **cowGetTradesHistorical**
> kotlin.collections.List&lt;CowTradeDTO&gt; cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)

Trades (historical)

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Identifier, format: (order id)|(transaction hash)|(event index).
val sellToken : kotlin.String = sellToken_example // kotlin.String | Address of token that is sold.
val buyToken : kotlin.String = buyToken_example // kotlin.String | Address of token that is bought.
try {
    val result : kotlin.collections.List<CowTradeDTO> = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetTradesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetTradesHistorical")
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
 **id** | **kotlin.String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional]
 **sellToken** | **kotlin.String**| Address of token that is sold. | [optional]
 **buyToken** | **kotlin.String**| Address of token that is bought. | [optional]

### Return type

[**kotlin.collections.List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowGetUsersHistorical"></a>
# **cowGetUsersHistorical**
> kotlin.collections.List&lt;CowUserDTO&gt; cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)

Users (historical)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | User's address.
val address : kotlin.String = address_example // kotlin.String | User's address.
try {
    val result : kotlin.collections.List<CowUserDTO> = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetUsersHistorical")
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
 **id** | **kotlin.String**| User&#39;s address. | [optional]
 **address** | **kotlin.String**| User&#39;s address. | [optional]

### Return type

[**kotlin.collections.List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowOrdersCurrent"></a>
# **cowOrdersCurrent**
> kotlin.collections.List&lt;CowOrderDTO&gt; cowOrdersCurrent()

Orders (current)

Gets orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
try {
    val result : kotlin.collections.List<CowOrderDTO> = apiInstance.cowOrdersCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowOrdersCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowOrdersCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowSettlementsCurrent"></a>
# **cowSettlementsCurrent**
> kotlin.collections.List&lt;CowSettlementDTO&gt; cowSettlementsCurrent()

Settlements (current)

Gets settlements.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
try {
    val result : kotlin.collections.List<CowSettlementDTO> = apiInstance.cowSettlementsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowSettlementsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowSettlementsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowTokensCurrent"></a>
# **cowTokensCurrent**
> kotlin.collections.List&lt;CowTokenDTO&gt; cowTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
try {
    val result : kotlin.collections.List<CowTokenDTO> = apiInstance.cowTokensCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowTokensCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowTradesCurrent"></a>
# **cowTradesCurrent**
> kotlin.collections.List&lt;CowTradeDTO&gt; cowTradesCurrent()

Trades (current)

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
try {
    val result : kotlin.collections.List<CowTradeDTO> = apiInstance.cowTradesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowTradesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowTradesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cowUsersCurrent"></a>
# **cowUsersCurrent**
> kotlin.collections.List&lt;CowUserDTO&gt; cowUsersCurrent()

Users (current)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
try {
    val result : kotlin.collections.List<CowUserDTO> = apiInstance.cowUsersCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowUsersCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowUsersCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

