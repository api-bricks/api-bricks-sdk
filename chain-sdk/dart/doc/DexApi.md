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
> List<DexBatchDTO> dexBatchesCurrent()

Batches (current)

Gets batches.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexBatchesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexBatchesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexBatchDTO>**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexDepositsCurrent**
> List<DexDepositDTO> dexDepositsCurrent()

Deposits (current)

Gets deposits.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexDepositsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexDepositsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexDepositDTO>**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetBatchesHistorical**
> List<DexBatchDTO> dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id)

Batches (historical)

Gets batches.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier.

try {
    final result = api_instance.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<DexBatchDTO>**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetDepositsHistorical**
> List<DexDepositDTO> dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Deposits (historical)

Gets deposits.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (transaction hash)-(token id).
final user = user_example; // String | User address.

try {
    final result = api_instance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(result);
} catch (e) {
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

[**List<DexDepositDTO>**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetOrdersHistorical**
> List<DexOrderDTO> dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (owner address)-(order id)
final buyToken = buyToken_example; // String | Identifier of token that was bought.
final sellToken = sellToken_example; // String | Identifier of token that was sold.

try {
    final result = api_instance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    print(result);
} catch (e) {
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

[**List<DexOrderDTO>**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetPricesHistorical**
> List<DexPriceDTO> dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)

Prices (historical)

Gets prices.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (token id)-(batch id).

try {
    final result = api_instance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<DexPriceDTO>**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetSolutionsHistorical**
> List<DexSolutionDTO> dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)

Solutions (historical)

Gets solutions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<DexSolutionDTO>**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetStatsHistorical**
> List<DexStatsDTO> dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id)

Stats (historical)

Gets stats.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<DexStatsDTO>**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTokensHistorical**
> List<DexTokenDTO> dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 
final address = address_example; // String | 
final symbol = symbol_example; // String | 
final name = name_example; // String | 

try {
    final result = api_instance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
    print(result);
} catch (e) {
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

[**List<DexTokenDTO>**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTradesHistorical**
> List<DexTradeDTO> dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)

Trades (historical)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 
final buyToken = buyToken_example; // String | 
final sellToken = sellToken_example; // String | 

try {
    final result = api_instance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    print(result);
} catch (e) {
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

[**List<DexTradeDTO>**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetUsersHistorical**
> List<DexUserDTO> dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<DexUserDTO>**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawRequestsHistorical**
> List<DexWithdrawRequestDTO> dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user)

WithdrawRequests (historical)

Gets withdrawRequests.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (transaction hash)-(id).
final user = user_example; // String | 

try {
    final result = api_instance.dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(result);
} catch (e) {
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

[**List<DexWithdrawRequestDTO>**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawsHistorical**
> List<DexWithdrawDTO> dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user)

Withdraws (historical)

Gets withdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (transaction hash)-(id).
final user = user_example; // String | 

try {
    final result = api_instance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(result);
} catch (e) {
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

[**List<DexWithdrawDTO>**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexOrdersCurrent**
> List<DexOrderDTO> dexOrdersCurrent()

Orders (current)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexOrdersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexOrdersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexOrderDTO>**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexPricesCurrent**
> List<DexPriceDTO> dexPricesCurrent()

Prices (current)

Gets prices.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexPricesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexPricesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexPriceDTO>**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexSolutionsCurrent**
> List<DexSolutionDTO> dexSolutionsCurrent()

Solutions (current)

Gets solutions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexSolutionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexSolutionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexSolutionDTO>**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexStatsCurrent**
> List<DexStatsDTO> dexStatsCurrent()

Stats (current)

Gets stats.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexStatsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexStatsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexStatsDTO>**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexTokensCurrent**
> List<DexTokenDTO> dexTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexTokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexTokenDTO>**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexTradesCurrent**
> List<DexTradeDTO> dexTradesCurrent()

Trades (current)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexTradesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexTradeDTO>**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexUsersCurrent**
> List<DexUserDTO> dexUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexUsersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexUserDTO>**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexWithdrawRequestsCurrent**
> List<DexWithdrawRequestDTO> dexWithdrawRequestsCurrent()

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexWithdrawRequestsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexWithdrawRequestsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexWithdrawRequestDTO>**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexWithdrawsCurrent**
> List<DexWithdrawDTO> dexWithdrawsCurrent()

Withdraws (current)

Gets withdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();

try {
    final result = api_instance.dexWithdrawsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexWithdrawsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DexWithdrawDTO>**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

