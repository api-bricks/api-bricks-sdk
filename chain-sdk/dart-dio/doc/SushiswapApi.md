# openapi.api.SushiswapApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswapBundlesCurrent**](SushiswapApi.md#sushiswapbundlescurrent) | **GET** /dapps/sushiswap/bundles/current | Bundles (current)
[**sushiswapBurnsCurrent**](SushiswapApi.md#sushiswapburnscurrent) | **GET** /dapps/sushiswap/burns/current | Burns (current)
[**sushiswapDayDataCurrent**](SushiswapApi.md#sushiswapdaydatacurrent) | **GET** /dapps/sushiswap/dayData/current | DayData (current)
[**sushiswapFactoriesCurrent**](SushiswapApi.md#sushiswapfactoriescurrent) | **GET** /dapps/sushiswap/factories/current | Factories (current)
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
[**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
[**sushiswapGetFactoriesHistorical**](SushiswapApi.md#sushiswapgetfactorieshistorical) | **GET** /dapps/sushiswap/factories/historical | Factories (historical)
[**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
[**sushiswapGetLiquidityPositionSnapshotsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical)
[**sushiswapGetLiquidityPositionsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical)
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
[**sushiswapGetPairDayDataHistorical**](SushiswapApi.md#sushiswapgetpairdaydatahistorical) | **GET** /dapps/sushiswap/pairDayData/historical | PairDayData (historical)
[**sushiswapGetPairHourDataHistorical**](SushiswapApi.md#sushiswapgetpairhourdatahistorical) | **GET** /dapps/sushiswap/pairHourData/historical | PairHourData (historical)
[**sushiswapGetPairsHistorical**](SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical)
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical)
[**sushiswapGetTokenDayDataHistorical**](SushiswapApi.md#sushiswapgettokendaydatahistorical) | **GET** /dapps/sushiswap/tokenDayData/historical | TokenDayData (historical)
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical)
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical)
[**sushiswapHourDataCurrent**](SushiswapApi.md#sushiswaphourdatacurrent) | **GET** /dapps/sushiswap/hourData/current | HourData (current)
[**sushiswapLiquidityPositionSnapshotsCurrent**](SushiswapApi.md#sushiswapliquiditypositionsnapshotscurrent) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
[**sushiswapLiquidityPositionsCurrent**](SushiswapApi.md#sushiswapliquiditypositionscurrent) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current)
[**sushiswapMintsCurrent**](SushiswapApi.md#sushiswapmintscurrent) | **GET** /dapps/sushiswap/mints/current | Mints (current)
[**sushiswapPairDayDataCurrent**](SushiswapApi.md#sushiswappairdaydatacurrent) | **GET** /dapps/sushiswap/pairDayData/current | PairDayData (current)
[**sushiswapPairHourDataCurrent**](SushiswapApi.md#sushiswappairhourdatacurrent) | **GET** /dapps/sushiswap/pairHourData/current | PairHourData (current)
[**sushiswapPairsCurrent**](SushiswapApi.md#sushiswappairscurrent) | **GET** /dapps/sushiswap/pairs/current | Pairs (current)
[**sushiswapSwapsCurrent**](SushiswapApi.md#sushiswapswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current)
[**sushiswapTokenDayDataCurrent**](SushiswapApi.md#sushiswaptokendaydatacurrent) | **GET** /dapps/sushiswap/tokenDayData/current | TokenDayData (current)
[**sushiswapTokensCurrent**](SushiswapApi.md#sushiswaptokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current)
[**sushiswapTransactionsCurrent**](SushiswapApi.md#sushiswaptransactionscurrent) | **GET** /dapps/sushiswap/transactions/current | Transactions (current)
[**sushiswapUsersCurrent**](SushiswapApi.md#sushiswapuserscurrent) | **GET** /dapps/sushiswap/users/current | Users (current)


# **sushiswapBundlesCurrent**
> BuiltList<SushiswapBundleDTO> sushiswapBundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapBundlesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapBundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapBurnsCurrent**
> BuiltList<SushiswapBurnDTO> sushiswapBurnsCurrent()

Burns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapBurnsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapBurnsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapDayDataCurrent**
> BuiltList<SushiswapDayDataDTO> sushiswapDayDataCurrent()

DayData (current)

Gets dayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapFactoriesCurrent**
> BuiltList<SushiswapFactoryDTO> sushiswapFactoriesCurrent()

Factories (current)

Gets factories.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapFactoriesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapFactoriesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBundlesHistorical**
> BuiltList<SushiswapBundleDTO> sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Hardcoded to '1'.

try {
    final response = api.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBundlesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Hardcoded to '1'. | [optional] 

### Return type

[**BuiltList&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBurnsHistorical**
> BuiltList<SushiswapBurnDTO> sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Burns (historical)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (transaction id):(transaction.burns.length).
final String pair = pair_example; // String | Reference to pair.

try {
    final response = api.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBurnsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**BuiltList&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetDayDataHistorical**
> BuiltList<SushiswapDayDataDTO> sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate, id)

DayData (historical)

Gets dayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Unix timestamp for start of day / 86400 giving a unique day index.

try {
    final response = api.sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] 

### Return type

[**BuiltList&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetFactoriesHistorical**
> BuiltList<SushiswapFactoryDTO> sushiswapGetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id)

Factories (historical)

Gets factories.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Factory address.

try {
    final response = api.sushiswapGetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetFactoriesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Factory address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetHourDataHistorical**
> BuiltList<SushiswapHourDataDTO> sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate, id)

HourData (historical)

Gets hourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Start of hour timestamp.

try {
    final response = api.sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetHourDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Start of hour timestamp. | [optional] 

### Return type

[**BuiltList&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionSnapshotsHistorical**
> BuiltList<SushiswapLiquidityPositionSnapshotDTO> sushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pair address)-(user address)-(timestamp)
final String user = user_example; // String | Reference to user.
final String pair = pair_example; // String | Reference to the pair liquidity is being provided on.

try {
    final response = api.sushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionSnapshotsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
 **user** | **String**| Reference to user. | [optional] 
 **pair** | **String**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**BuiltList&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionsHistorical**
> BuiltList<SushiswapLiquidityPositionDTO> sushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositions (historical)

Gets liquidityPositions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pair address)-(user address)
final String user = user_example; // String | User address.
final String pair = pair_example; // String | Pair address.

try {
    final response = api.sushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pair address)-(user address) | [optional] 
 **user** | **String**| User address. | [optional] 
 **pair** | **String**| Pair address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetMintsHistorical**
> BuiltList<SushiswapMintDTO> sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Mints (historical)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (transaction hash)-(index in the transaction mint array).
final String pair = pair_example; // String | Reference to pair.

try {
    final response = api.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetMintsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**BuiltList&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairDayDataHistorical**
> BuiltList<SushiswapPairDayDataDTO> sushiswapGetPairDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1)

PairDayData (historical)

Gets pairDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pair id)-(day start timestamp).
final String pair = pair_example; // String | Reference to pair.
final String token0 = token0_example; // String | Reference to token0.
final String token1 = token1_example; // String | Reference to token1.

try {
    final response = api.sushiswapGetPairDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pair id)-(day start timestamp). | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 
 **token0** | **String**| Reference to token0. | [optional] 
 **token1** | **String**| Reference to token1. | [optional] 

### Return type

[**BuiltList&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairHourDataHistorical**
> BuiltList<SushiswapPairHourDataDTO> sushiswapGetPairHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourData (historical)

Gets pairHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pair id)-(hour start timestamp).
final String pair = pair_example; // String | Reference to pair.

try {
    final response = api.sushiswapGetPairHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairHourDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pair id)-(hour start timestamp). | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**BuiltList&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairsHistorical**
> BuiltList<SushiswapPairDTO> sushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1)

Pairs (historical)

Gets pairs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Pair contract address.
final String name = name_example; // String | Friendly name, format: (token0 name)-(token1 name)
final String token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final String token1 = token1_example; // String | Reference to token0 as stored in pair contract.

try {
    final response = api.sushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Pair contract address. | [optional] 
 **name** | **String**| Friendly name, format: (token0 name)-(token1 name) | [optional] 
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token0 as stored in pair contract. | [optional] 

### Return type

[**BuiltList&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapsHistorical**
> BuiltList<SushiswapSwapDTO> sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Swaps (historical)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Transaction hash plus index in Transaction swap array.
final String pair = pair_example; // String | Reference to pair.

try {
    final response = api.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash plus index in Transaction swap array. | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**BuiltList&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokenDayDataHistorical**
> BuiltList<SushiswapTokenDayDataDTO> sushiswapGetTokenDayDataHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayData (historical)

Gets tokenDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, day start timestamp in unix / 86400.

try {
    final response = api.sushiswapGetTokenDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokenDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, day start timestamp in unix / 86400. | [optional] 

### Return type

[**BuiltList&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensHistorical**
> BuiltList<SushiswapTokenDTO> sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Token address.
final String symbol = symbol_example; // String | Token symbol.
final String name = name_example; // String | Token name.

try {
    final response = api.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address. | [optional] 
 **symbol** | **String**| Token symbol. | [optional] 
 **name** | **String**| Token name. | [optional] 

### Return type

[**BuiltList&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTransactionsHistorical**
> BuiltList<SushiswapTransactionDTO> sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Ethereum transaction hash.

try {
    final response = api.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTransactionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Ethereum transaction hash. | [optional] 

### Return type

[**BuiltList&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetUsersHistorical**
> BuiltList<SushiswapUserDTO> sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | User address.

try {
    final response = api.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetUsersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| User address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapHourDataCurrent**
> BuiltList<SushiswapHourDataDTO> sushiswapHourDataCurrent()

HourData (current)

Gets hourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapHourDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapLiquidityPositionSnapshotsCurrent**
> BuiltList<SushiswapLiquidityPositionSnapshotDTO> sushiswapLiquidityPositionSnapshotsCurrent()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapLiquidityPositionSnapshotsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapLiquidityPositionSnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapLiquidityPositionsCurrent**
> BuiltList<SushiswapLiquidityPositionDTO> sushiswapLiquidityPositionsCurrent()

LiquidityPositions (current)

Gets liquidityPositions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapLiquidityPositionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapLiquidityPositionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapMintsCurrent**
> BuiltList<SushiswapMintDTO> sushiswapMintsCurrent()

Mints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapMintsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapMintsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapPairDayDataCurrent**
> BuiltList<SushiswapPairDayDataDTO> sushiswapPairDayDataCurrent()

PairDayData (current)

Gets pairDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapPairDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapPairDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapPairHourDataCurrent**
> BuiltList<SushiswapPairHourDataDTO> sushiswapPairHourDataCurrent()

PairHourData (current)

Gets pairHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapPairHourDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapPairHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapPairsCurrent**
> BuiltList<SushiswapPairDTO> sushiswapPairsCurrent(id)

Pairs (current)

Gets pairs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final String id = id_example; // String | Pair contract address.

try {
    final response = api.sushiswapPairsCurrent(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapPairsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Pair contract address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapSwapsCurrent**
> BuiltList<SushiswapSwapDTO> sushiswapSwapsCurrent(pair)

Swaps (current)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final String pair = pair_example; // String | Reference to pair.

try {
    final response = api.sushiswapSwapsCurrent(pair);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapSwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**BuiltList&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapTokenDayDataCurrent**
> BuiltList<SushiswapTokenDayDataDTO> sushiswapTokenDayDataCurrent()

TokenDayData (current)

Gets tokenDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapTokenDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapTokenDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapTokensCurrent**
> BuiltList<SushiswapTokenDTO> sushiswapTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapTransactionsCurrent**
> BuiltList<SushiswapTransactionDTO> sushiswapTransactionsCurrent()

Transactions (current)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapTransactionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapTransactionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapUsersCurrent**
> BuiltList<SushiswapUserDTO> sushiswapUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapUsersCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

