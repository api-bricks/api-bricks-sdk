# openapi.api.CowApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrdersHistorical**](CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementsHistorical**](CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokensHistorical**](CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**cowGetTradesHistorical**](CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**cowGetUsersHistorical**](CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**cowOrdersCurrent**](CowApi.md#coworderscurrent) | **GET** /dapps/cow/orders/current | Orders (current)
[**cowSettlementsCurrent**](CowApi.md#cowsettlementscurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**cowTokensCurrent**](CowApi.md#cowtokenscurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**cowTradesCurrent**](CowApi.md#cowtradescurrent) | **GET** /dapps/cow/trades/current | Trades (current)
[**cowUsersCurrent**](CowApi.md#cowuserscurrent) | **GET** /dapps/cow/users/current | Users (current)


# **cowGetOrdersHistorical**
> BuiltList<CowOrderDTO> cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | User's address.

try {
    final response = api.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetOrdersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| User's address. | [optional] 

### Return type

[**BuiltList&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetSettlementsHistorical**
> BuiltList<CowSettlementDTO> cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)

Settlements (historical)

Gets settlements.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Transaction hash.

try {
    final response = api.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetSettlementsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash. | [optional] 

### Return type

[**BuiltList&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTokensHistorical**
> BuiltList<CowTokenDTO> cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Token's address.
final String address = address_example; // String | Token's address.
final String name = name_example; // String | Token name fetched by ERC20 contract call.
final String symbol = symbol_example; // String | Token symbol fetched by contract call.

try {
    final response = api.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token's address. | [optional] 
 **address** | **String**| Token's address. | [optional] 
 **name** | **String**| Token name fetched by ERC20 contract call. | [optional] 
 **symbol** | **String**| Token symbol fetched by contract call. | [optional] 

### Return type

[**BuiltList&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTradesHistorical**
> BuiltList<CowTradeDTO> cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)

Trades (historical)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (order id)|(transaction hash)|(event index).
final String sellToken = sellToken_example; // String | Address of token that is sold.
final String buyToken = buyToken_example; // String | Address of token that is bought.

try {
    final response = api.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetTradesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
 **sellToken** | **String**| Address of token that is sold. | [optional] 
 **buyToken** | **String**| Address of token that is bought. | [optional] 

### Return type

[**BuiltList&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetUsersHistorical**
> BuiltList<CowUserDTO> cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | User's address.
final String address = address_example; // String | User's address.

try {
    final response = api.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetUsersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| User's address. | [optional] 
 **address** | **String**| User's address. | [optional] 

### Return type

[**BuiltList&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowOrdersCurrent**
> BuiltList<CowOrderDTO> cowOrdersCurrent()

Orders (current)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();

try {
    final response = api.cowOrdersCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowOrdersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowSettlementsCurrent**
> BuiltList<CowSettlementDTO> cowSettlementsCurrent()

Settlements (current)

Gets settlements.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();

try {
    final response = api.cowSettlementsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowSettlementsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowTokensCurrent**
> BuiltList<CowTokenDTO> cowTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();

try {
    final response = api.cowTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowTradesCurrent**
> BuiltList<CowTradeDTO> cowTradesCurrent()

Trades (current)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();

try {
    final response = api.cowTradesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowUsersCurrent**
> BuiltList<CowUserDTO> cowUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();

try {
    final response = api.cowUsersCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

