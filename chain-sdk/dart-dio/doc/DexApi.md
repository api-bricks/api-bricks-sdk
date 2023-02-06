# openapi.api.DexApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexBatchesCurrent**](DexApi.md#dexbatchescurrent) | **GET** /dapps/dex/batches/current | Batches (current)
[**dexDepositsCurrent**](DexApi.md#dexdepositscurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**dexGetBatchesHistorical**](DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dexGetDepositsHistorical**](DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dexGetOrdersHistorical**](DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dexGetPricesHistorical**](DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dexGetSolutionsHistorical**](DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dexGetStatsHistorical**](DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dexGetTokensHistorical**](DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**dexGetTradesHistorical**](DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**dexGetUsersHistorical**](DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dexGetWithdrawRequestsHistorical**](DexApi.md#dexgetwithdrawrequestshistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**dexGetWithdrawsHistorical**](DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dexOrdersCurrent**](DexApi.md#dexorderscurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**dexPricesCurrent**](DexApi.md#dexpricescurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**dexSolutionsCurrent**](DexApi.md#dexsolutionscurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**dexStatsCurrent**](DexApi.md#dexstatscurrent) | **GET** /dapps/dex/stats/current | Stats (current)
[**dexTokensCurrent**](DexApi.md#dextokenscurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**dexTradesCurrent**](DexApi.md#dextradescurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**dexUsersCurrent**](DexApi.md#dexuserscurrent) | **GET** /dapps/dex/users/current | Users (current)
[**dexWithdrawRequestsCurrent**](DexApi.md#dexwithdrawrequestscurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**dexWithdrawsCurrent**](DexApi.md#dexwithdrawscurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)


# **dexBatchesCurrent**
> BuiltList<DexBatchDTO> dexBatchesCurrent()

Batches (current)

Gets batches.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexBatchesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexBatchesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexDepositsCurrent**
> BuiltList<DexDepositDTO> dexDepositsCurrent()

Deposits (current)

Gets deposits.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexDepositsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexDepositsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetBatchesHistorical**
> BuiltList<DexBatchDTO> dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id)

Batches (historical)

Gets batches.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier.

try {
    final response = api.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetBatchesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier. | [optional] 

### Return type

[**BuiltList&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetDepositsHistorical**
> BuiltList<DexDepositDTO> dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Deposits (historical)

Gets deposits.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (transaction hash)-(token id).
final String user = user_example; // String | User address.

try {
    final response = api.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetDepositsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (transaction hash)-(token id). | [optional] 
 **user** | **String**| User address. | [optional] 

### Return type

[**BuiltList&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetOrdersHistorical**
> BuiltList<DexOrderDTO> dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (owner address)-(order id)
final String buyToken = buyToken_example; // String | Identifier of token that was bought.
final String sellToken = sellToken_example; // String | Identifier of token that was sold.

try {
    final response = api.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetOrdersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (owner address)-(order id) | [optional] 
 **buyToken** | **String**| Identifier of token that was bought. | [optional] 
 **sellToken** | **String**| Identifier of token that was sold. | [optional] 

### Return type

[**BuiltList&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetPricesHistorical**
> BuiltList<DexPriceDTO> dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)

Prices (historical)

Gets prices.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (token id)-(batch id).

try {
    final response = api.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetPricesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (token id)-(batch id). | [optional] 

### Return type

[**BuiltList&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetSolutionsHistorical**
> BuiltList<DexSolutionDTO> dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)

Solutions (historical)

Gets solutions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetSolutionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetStatsHistorical**
> BuiltList<DexStatsDTO> dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id)

Stats (historical)

Gets stats.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetStatsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTokensHistorical**
> BuiltList<DexTokenDTO> dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String address = address_example; // String | 
final String symbol = symbol_example; // String | 
final String name = name_example; // String | 

try {
    final response = api.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 
 **address** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTradesHistorical**
> BuiltList<DexTradeDTO> dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Trades (historical)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String buyToken = buyToken_example; // String | 
final String sellToken = sellToken_example; // String | 

try {
    final response = api.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetTradesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 
 **buyToken** | **String**|  | [optional] 
 **sellToken** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetUsersHistorical**
> BuiltList<DexUserDTO> dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetUsersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawRequestsHistorical**
> BuiltList<DexWithdrawRequestDTO> dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user)

WithdrawRequests (historical)

Gets withdrawRequests.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (transaction hash)-(id).
final String user = user_example; // String | 

try {
    final response = api.dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetWithdrawRequestsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (transaction hash)-(id). | [optional] 
 **user** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawsHistorical**
> BuiltList<DexWithdrawDTO> dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Withdraws (historical)

Gets withdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (transaction hash)-(id).
final String user = user_example; // String | 

try {
    final response = api.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexGetWithdrawsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (transaction hash)-(id). | [optional] 
 **user** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexOrdersCurrent**
> BuiltList<DexOrderDTO> dexOrdersCurrent()

Orders (current)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexOrdersCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexOrdersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexPricesCurrent**
> BuiltList<DexPriceDTO> dexPricesCurrent()

Prices (current)

Gets prices.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexPricesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexPricesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexSolutionsCurrent**
> BuiltList<DexSolutionDTO> dexSolutionsCurrent()

Solutions (current)

Gets solutions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexSolutionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexSolutionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexStatsCurrent**
> BuiltList<DexStatsDTO> dexStatsCurrent()

Stats (current)

Gets stats.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexStatsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexStatsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexTokensCurrent**
> BuiltList<DexTokenDTO> dexTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexTradesCurrent**
> BuiltList<DexTradeDTO> dexTradesCurrent()

Trades (current)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexTradesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexUsersCurrent**
> BuiltList<DexUserDTO> dexUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexUsersCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexWithdrawRequestsCurrent**
> BuiltList<DexWithdrawRequestDTO> dexWithdrawRequestsCurrent()

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexWithdrawRequestsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexWithdrawRequestsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexWithdrawsCurrent**
> BuiltList<DexWithdrawDTO> dexWithdrawsCurrent()

Withdraws (current)

Gets withdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();

try {
    final response = api.dexWithdrawsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DexApi->dexWithdrawsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

