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
> List<CowOrderDTO> cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User's address.

try {
    final result = api_instance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CowOrderDTO>**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetSettlementsHistorical**
> List<CowSettlementDTO> cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)

Settlements (historical)

Gets settlements.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash.

try {
    final result = api_instance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CowSettlementDTO>**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTokensHistorical**
> List<CowTokenDTO> cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token's address.
final address = address_example; // String | Token's address.
final name = name_example; // String | Token name fetched by ERC20 contract call.
final symbol = symbol_example; // String | Token symbol fetched by contract call.

try {
    final result = api_instance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol);
    print(result);
} catch (e) {
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

[**List<CowTokenDTO>**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTradesHistorical**
> List<CowTradeDTO> cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)

Trades (historical)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (order id)|(transaction hash)|(event index).
final sellToken = sellToken_example; // String | Address of token that is sold.
final buyToken = buyToken_example; // String | Address of token that is bought.

try {
    final result = api_instance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken);
    print(result);
} catch (e) {
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

[**List<CowTradeDTO>**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetUsersHistorical**
> List<CowUserDTO> cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User's address.
final address = address_example; // String | User's address.

try {
    final result = api_instance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address);
    print(result);
} catch (e) {
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

[**List<CowUserDTO>**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowOrdersCurrent**
> List<CowOrderDTO> cowOrdersCurrent()

Orders (current)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();

try {
    final result = api_instance.cowOrdersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CowApi->cowOrdersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CowOrderDTO>**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowSettlementsCurrent**
> List<CowSettlementDTO> cowSettlementsCurrent()

Settlements (current)

Gets settlements.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();

try {
    final result = api_instance.cowSettlementsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CowApi->cowSettlementsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CowSettlementDTO>**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowTokensCurrent**
> List<CowTokenDTO> cowTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();

try {
    final result = api_instance.cowTokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CowApi->cowTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CowTokenDTO>**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowTradesCurrent**
> List<CowTradeDTO> cowTradesCurrent()

Trades (current)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();

try {
    final result = api_instance.cowTradesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CowApi->cowTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CowTradeDTO>**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowUsersCurrent**
> List<CowUserDTO> cowUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();

try {
    final result = api_instance.cowUsersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CowApi->cowUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CowUserDTO>**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

