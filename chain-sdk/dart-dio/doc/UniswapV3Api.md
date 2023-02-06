# openapi.api.UniswapV3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3BundlesCurrent**](UniswapV3Api.md#uniswapv3bundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswapV3BurnsCurrent**](UniswapV3Api.md#uniswapv3burnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswapV3FactoriesCurrent**](UniswapV3Api.md#uniswapv3factoriescurrent) | **GET** /dapps/uniswapv3/factories/current | Factories (current)
[**uniswapV3GetBundlesHistorical**](UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical)
[**uniswapV3GetBurnsHistorical**](UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical)
[**uniswapV3GetFactoriesHistorical**](UniswapV3Api.md#uniswapv3getfactorieshistorical) | **GET** /dapps/uniswapv3/factories/historical | Factories (historical)
[**uniswapV3GetMintsHistorical**](UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical)
[**uniswapV3GetPoolDayDataHistorical**](UniswapV3Api.md#uniswapv3getpooldaydatahistorical) | **GET** /dapps/uniswapv3/poolDayData/historical | PoolDayData (historical)
[**uniswapV3GetPoolHourDataHistorical**](UniswapV3Api.md#uniswapv3getpoolhourdatahistorical) | **GET** /dapps/uniswapv3/poolHourData/historical | PoolHourData (historical)
[**uniswapV3GetPoolsHistorical**](UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical)
[**uniswapV3GetPositionSnapshotsHistorical**](UniswapV3Api.md#uniswapv3getpositionsnapshotshistorical) | **GET** /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical)
[**uniswapV3GetPositionsHistorical**](UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical)
[**uniswapV3GetSwapsHistorical**](UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical)
[**uniswapV3GetTickDayDataHistorical**](UniswapV3Api.md#uniswapv3gettickdaydatahistorical) | **GET** /dapps/uniswapv3/tickDayData/historical | TickDayData (historical)
[**uniswapV3GetTicksHistorical**](UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical)
[**uniswapV3GetTokenHourDataHistorical**](UniswapV3Api.md#uniswapv3gettokenhourdatahistorical) | **GET** /dapps/uniswapv3/tokenHourData/historical | TokenHourData (historical)
[**uniswapV3GetTokenV3DayDataHistorical**](UniswapV3Api.md#uniswapv3gettokenv3daydatahistorical) | **GET** /dapps/uniswapv3/tokenV3DayData/historical | TokenV3DayData (historical)
[**uniswapV3GetTokensHistorical**](UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical)
[**uniswapV3GetTransactionsHistorical**](UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical)
[**uniswapV3GetUniswapDayDataHistorical**](UniswapV3Api.md#uniswapv3getuniswapdaydatahistorical) | **GET** /dapps/uniswapv3/uniswapDayData/historical | UniswapDayData (historical)
[**uniswapV3MintsCurrent**](UniswapV3Api.md#uniswapv3mintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswapV3PoolDayDataCurrent**](UniswapV3Api.md#uniswapv3pooldaydatacurrent) | **GET** /dapps/uniswapv3/poolDayData/current | PoolDayData (current)
[**uniswapV3PoolHourDataCurrent**](UniswapV3Api.md#uniswapv3poolhourdatacurrent) | **GET** /dapps/uniswapv3/poolHourData/current | PoolHourData (current)
[**uniswapV3PoolsCurrent**](UniswapV3Api.md#uniswapv3poolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current)
[**uniswapV3PositionSnapshotsCurrent**](UniswapV3Api.md#uniswapv3positionsnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current)
[**uniswapV3PositionsCurrent**](UniswapV3Api.md#uniswapv3positionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswapV3SwapsCurrent**](UniswapV3Api.md#uniswapv3swapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current)
[**uniswapV3TickDayDataCurrent**](UniswapV3Api.md#uniswapv3tickdaydatacurrent) | **GET** /dapps/uniswapv3/tickDayData/current | TickDayData (current)
[**uniswapV3TicksCurrent**](UniswapV3Api.md#uniswapv3tickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswapV3TokenHourDataCurrent**](UniswapV3Api.md#uniswapv3tokenhourdatacurrent) | **GET** /dapps/uniswapv3/tokenHourData/current | TokenHourData (current)
[**uniswapV3TokenV3DayDataCurrent**](UniswapV3Api.md#uniswapv3tokenv3daydatacurrent) | **GET** /dapps/uniswapv3/tokenV3DayData/current | TokenV3DayData (current)
[**uniswapV3TokensCurrent**](UniswapV3Api.md#uniswapv3tokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current)
[**uniswapV3TransactionsCurrent**](UniswapV3Api.md#uniswapv3transactionscurrent) | **GET** /dapps/uniswapv3/transactions/current | Transactions (current)
[**uniswapV3UniswapDayDataCurrent**](UniswapV3Api.md#uniswapv3uniswapdaydatacurrent) | **GET** /dapps/uniswapv3/uniswapDayData/current | UniswapDayData (current)


# **uniswapV3BundlesCurrent**
> BuiltList<UniswapV3BundleDTO> uniswapV3BundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3BundlesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3BundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3BundleDTO&gt;**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3BurnsCurrent**
> BuiltList<UniswapV3BurnDTO> uniswapV3BurnsCurrent()

Burns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3BurnsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3BurnsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3BurnDTO&gt;**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3FactoriesCurrent**
> BuiltList<UniswapV3FactoryDTO> uniswapV3FactoriesCurrent()

Factories (current)

Gets factories.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3FactoriesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3FactoriesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3FactoryDTO&gt;**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBundlesHistorical**
> BuiltList<UniswapV3BundleDTO> uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBundlesHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3BundleDTO&gt;**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBurnsHistorical**
> BuiltList<UniswapV3BurnDTO> uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Burns (historical)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Transaction hash + '#' + index in mints Transaction array.
final String pool = pool_example; // String | Pool position is within.
final String token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final String token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final response = api.uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBurnsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash + '#' + index in mints Transaction array. | [optional] 
 **pool** | **String**| Pool position is within. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3BurnDTO&gt;**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetFactoriesHistorical**
> BuiltList<UniswapV3FactoryDTO> uniswapV3GetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id)

Factories (historical)

Gets factories.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Factory address.

try {
    final response = api.uniswapV3GetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetFactoriesHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3FactoryDTO&gt;**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetMintsHistorical**
> BuiltList<UniswapV3MintDTO> uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Mints (historical)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Transaction hash + '#' + index in mints Transaction array.
final String pool = pool_example; // String | Pool address.
final String token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final String token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final response = api.uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetMintsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash + '#' + index in mints Transaction array. | [optional] 
 **pool** | **String**| Pool address. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3MintDTO&gt;**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolDayDataHistorical**
> BuiltList<UniswapV3PoolDayDataDTO> uniswapV3GetPoolDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolDayData (historical)

Gets poolDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pool address)-(day id).
final String pool = pool_example; // String | Pointer to pool.

try {
    final response = api.uniswapV3GetPoolDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pool address)-(day id). | [optional] 
 **pool** | **String**| Pointer to pool. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolDayDataDTO&gt;**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolHourDataHistorical**
> BuiltList<UniswapV3PoolHourDataDTO> uniswapV3GetPoolHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolHourData (historical)

Gets poolHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pool address)-(day id)
final String pool = pool_example; // String | Pointer to pool.

try {
    final response = api.uniswapV3GetPoolHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolHourDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pool address)-(day id) | [optional] 
 **pool** | **String**| Pointer to pool. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolHourDataDTO&gt;**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsHistorical**
> BuiltList<UniswapV3PoolDTO> uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

Pools (historical)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Pool address.
final String token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final String token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final response = api.uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Pool address. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolDTO&gt;**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionSnapshotsHistorical**
> BuiltList<UniswapV3PositionSnapshotDTO> uniswapV3GetPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PositionSnapshots (historical)

Gets positionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | NFT token identifier, format: (NFT token id)#(block number).
final String pool = pool_example; // String | Pool the position is within.

try {
    final response = api.uniswapV3GetPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionSnapshotsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| NFT token identifier, format: (NFT token id)#(block number). | [optional] 
 **pool** | **String**| Pool the position is within. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PositionSnapshotDTO&gt;**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsHistorical**
> BuiltList<UniswapV3PositionDTO> uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Positions (historical)

Gets positions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | NFT token identifier.
final String pool = pool_example; // String | Pool position is within.
final String token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final String token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final response = api.uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| NFT token identifier. | [optional] 
 **pool** | **String**| Pool position is within. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PositionDTO&gt;**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetSwapsHistorical**
> BuiltList<UniswapV3SwapDTO> uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Swaps (historical)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
final String pool = pool_example; // String | Pool swap occured within.
final String token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final String token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final response = api.uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetSwapsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
 **pool** | **String**| Pool swap occured within. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3SwapDTO&gt;**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTickDayDataHistorical**
> BuiltList<UniswapV3TickDayDataDTO> uniswapV3GetTickDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool)

TickDayData (historical)

Gets tickDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pool address)-(tick index)-(timestamp).
final String pool = pool_example; // String | Pointer to pool.

try {
    final response = api.uniswapV3GetTickDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTickDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
 **pool** | **String**| Pointer to pool. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TickDayDataDTO&gt;**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksHistorical**
> BuiltList<UniswapV3TickDTO> uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, id, pool)

Ticks (historical)

Gets ticks.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pool address)#(tick index)
final String pool = pool_example; // String | Pool address.

try {
    final response = api.uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pool address)#(tick index) | [optional] 
 **pool** | **String**| Pool address. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TickDTO&gt;**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenHourDataHistorical**
> BuiltList<UniswapV3TokenHourDataDTO> uniswapV3GetTokenHourDataHistorical(startBlock, endBlock, startDate, endDate, id)

TokenHourData (historical)

Gets tokenHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Token address concatendated with date.

try {
    final response = api.uniswapV3GetTokenHourDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokenHourDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address concatendated with date. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TokenHourDataDTO&gt;**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenV3DayDataHistorical**
> BuiltList<UniswapV3TokenV3DayDataDTO> uniswapV3GetTokenV3DayDataHistorical(startBlock, endBlock, startDate, endDate, id)

TokenV3DayData (historical)

Gets tokenV3DayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Token address concatendated with date.

try {
    final response = api.uniswapV3GetTokenV3DayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokenV3DayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address concatendated with date. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensHistorical**
> BuiltList<UniswapV3TokenDTO> uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Token address.
final String symbol = symbol_example; // String | Token symbol.
final String name = name_example; // String | Token name.

try {
    final response = api.uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TokenDTO&gt;**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTransactionsHistorical**
> BuiltList<UniswapV3TransactionDTO> uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Transaction hash.

try {
    final response = api.uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTransactionsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TransactionDTO&gt;**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetUniswapDayDataHistorical**
> BuiltList<UniswapV3UniswapDayDataDTO> uniswapV3GetUniswapDayDataHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayData (historical)

Gets uniswapDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Timestamp rounded to current day by dividing by 86400.

try {
    final response = api.uniswapV3GetUniswapDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetUniswapDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Timestamp rounded to current day by dividing by 86400. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3UniswapDayDataDTO&gt;**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3MintsCurrent**
> BuiltList<UniswapV3MintDTO> uniswapV3MintsCurrent()

Mints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3MintsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3MintsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3MintDTO&gt;**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PoolDayDataCurrent**
> BuiltList<UniswapV3PoolDayDataDTO> uniswapV3PoolDayDataCurrent()

PoolDayData (current)

Gets poolDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3PoolDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PoolDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3PoolDayDataDTO&gt;**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PoolHourDataCurrent**
> BuiltList<UniswapV3PoolHourDataDTO> uniswapV3PoolHourDataCurrent()

PoolHourData (current)

Gets poolHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3PoolHourDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PoolHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3PoolHourDataDTO&gt;**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PoolsCurrent**
> BuiltList<UniswapV3PoolDTO> uniswapV3PoolsCurrent(id)

Pools (current)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String id = id_example; // String | Pool address.

try {
    final response = api.uniswapV3PoolsCurrent(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Pool address. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolDTO&gt;**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PositionSnapshotsCurrent**
> BuiltList<UniswapV3PositionSnapshotDTO> uniswapV3PositionSnapshotsCurrent()

PositionSnapshots (current)

Gets positionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3PositionSnapshotsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PositionSnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3PositionSnapshotDTO&gt;**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PositionsCurrent**
> BuiltList<UniswapV3PositionDTO> uniswapV3PositionsCurrent()

Positions (current)

Gets positions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3PositionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PositionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3PositionDTO&gt;**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3SwapsCurrent**
> BuiltList<UniswapV3SwapDTO> uniswapV3SwapsCurrent(pool)

Swaps (current)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String pool = pool_example; // String | Pool swap occured within.

try {
    final response = api.uniswapV3SwapsCurrent(pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3SwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool** | **String**| Pool swap occured within. | [optional] 

### Return type

[**BuiltList&lt;UniswapV3SwapDTO&gt;**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TickDayDataCurrent**
> BuiltList<UniswapV3TickDayDataDTO> uniswapV3TickDayDataCurrent()

TickDayData (current)

Gets tickDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3TickDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TickDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3TickDayDataDTO&gt;**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TicksCurrent**
> BuiltList<UniswapV3TickDTO> uniswapV3TicksCurrent()

Ticks (current)

Gets ticks.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3TicksCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TicksCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3TickDTO&gt;**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TokenHourDataCurrent**
> BuiltList<UniswapV3TokenHourDataDTO> uniswapV3TokenHourDataCurrent()

TokenHourData (current)

Gets tokenHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3TokenHourDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TokenHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3TokenHourDataDTO&gt;**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TokenV3DayDataCurrent**
> BuiltList<UniswapV3TokenV3DayDataDTO> uniswapV3TokenV3DayDataCurrent()

TokenV3DayData (current)

Gets tokenV3DayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3TokenV3DayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TokenV3DayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TokensCurrent**
> BuiltList<UniswapV3TokenDTO> uniswapV3TokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3TokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3TokenDTO&gt;**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TransactionsCurrent**
> BuiltList<UniswapV3TransactionDTO> uniswapV3TransactionsCurrent()

Transactions (current)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3TransactionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TransactionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3TransactionDTO&gt;**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3UniswapDayDataCurrent**
> BuiltList<UniswapV3UniswapDayDataDTO> uniswapV3UniswapDayDataCurrent()

UniswapDayData (current)

Gets uniswapDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3UniswapDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3UniswapDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3UniswapDayDataDTO&gt;**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

