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
> List<UniswapV3BundleDTO> uniswapV3BundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3BundlesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3BundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3BundleDTO>**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3BurnsCurrent**
> List<UniswapV3BurnDTO> uniswapV3BurnsCurrent()

Burns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3BurnsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3BurnsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3BurnDTO>**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3FactoriesCurrent**
> List<UniswapV3FactoryDTO> uniswapV3FactoriesCurrent()

Factories (current)

Gets factories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3FactoriesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3FactoriesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3FactoryDTO>**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBundlesHistorical**
> List<UniswapV3BundleDTO> uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<UniswapV3BundleDTO>**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBurnsHistorical**
> List<UniswapV3BurnDTO> uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Burns (historical)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash + '#' + index in mints Transaction array.
final pool = pool_example; // String | Pool position is within.
final token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final result = api_instance.uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
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

[**List<UniswapV3BurnDTO>**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetFactoriesHistorical**
> List<UniswapV3FactoryDTO> uniswapV3GetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id)

Factories (historical)

Gets factories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Factory address.

try {
    final result = api_instance.uniswapV3GetFactoriesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<UniswapV3FactoryDTO>**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetMintsHistorical**
> List<UniswapV3MintDTO> uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Mints (historical)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash + '#' + index in mints Transaction array.
final pool = pool_example; // String | Pool address.
final token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final result = api_instance.uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
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

[**List<UniswapV3MintDTO>**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolDayDataHistorical**
> List<UniswapV3PoolDayDataDTO> uniswapV3GetPoolDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolDayData (historical)

Gets poolDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (pool address)-(day id).
final pool = pool_example; // String | Pointer to pool.

try {
    final result = api_instance.uniswapV3GetPoolDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
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

[**List<UniswapV3PoolDayDataDTO>**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolHourDataHistorical**
> List<UniswapV3PoolHourDataDTO> uniswapV3GetPoolHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolHourData (historical)

Gets poolHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (pool address)-(day id)
final pool = pool_example; // String | Pointer to pool.

try {
    final result = api_instance.uniswapV3GetPoolHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
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

[**List<UniswapV3PoolHourDataDTO>**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsHistorical**
> List<UniswapV3PoolDTO> uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

Pools (historical)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Pool address.
final token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final result = api_instance.uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(result);
} catch (e) {
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

[**List<UniswapV3PoolDTO>**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionSnapshotsHistorical**
> List<UniswapV3PositionSnapshotDTO> uniswapV3GetPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PositionSnapshots (historical)

Gets positionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | NFT token identifier, format: (NFT token id)#(block number).
final pool = pool_example; // String | Pool the position is within.

try {
    final result = api_instance.uniswapV3GetPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
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

[**List<UniswapV3PositionSnapshotDTO>**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsHistorical**
> List<UniswapV3PositionDTO> uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Positions (historical)

Gets positions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | NFT token identifier.
final pool = pool_example; // String | Pool position is within.
final token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final result = api_instance.uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
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

[**List<UniswapV3PositionDTO>**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetSwapsHistorical**
> List<UniswapV3SwapDTO> uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Swaps (historical)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
final pool = pool_example; // String | Pool swap occured within.
final token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final result = api_instance.uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
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

[**List<UniswapV3SwapDTO>**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTickDayDataHistorical**
> List<UniswapV3TickDayDataDTO> uniswapV3GetTickDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool)

TickDayData (historical)

Gets tickDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (pool address)-(tick index)-(timestamp).
final pool = pool_example; // String | Pointer to pool.

try {
    final result = api_instance.uniswapV3GetTickDayDataHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
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

[**List<UniswapV3TickDayDataDTO>**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksHistorical**
> List<UniswapV3TickDTO> uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, id, pool)

Ticks (historical)

Gets ticks.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (pool address)#(tick index)
final pool = pool_example; // String | Pool address.

try {
    final result = api_instance.uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
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

[**List<UniswapV3TickDTO>**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenHourDataHistorical**
> List<UniswapV3TokenHourDataDTO> uniswapV3GetTokenHourDataHistorical(startBlock, endBlock, startDate, endDate, id)

TokenHourData (historical)

Gets tokenHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address concatendated with date.

try {
    final result = api_instance.uniswapV3GetTokenHourDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<UniswapV3TokenHourDataDTO>**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenV3DayDataHistorical**
> List<UniswapV3TokenV3DayDataDTO> uniswapV3GetTokenV3DayDataHistorical(startBlock, endBlock, startDate, endDate, id)

TokenV3DayData (historical)

Gets tokenV3DayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address concatendated with date.

try {
    final result = api_instance.uniswapV3GetTokenV3DayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<UniswapV3TokenV3DayDataDTO>**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensHistorical**
> List<UniswapV3TokenDTO> uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address.
final symbol = symbol_example; // String | Token symbol.
final name = name_example; // String | Token name.

try {
    final result = api_instance.uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(result);
} catch (e) {
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

[**List<UniswapV3TokenDTO>**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTransactionsHistorical**
> List<UniswapV3TransactionDTO> uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash.

try {
    final result = api_instance.uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<UniswapV3TransactionDTO>**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetUniswapDayDataHistorical**
> List<UniswapV3UniswapDayDataDTO> uniswapV3GetUniswapDayDataHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayData (historical)

Gets uniswapDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Timestamp rounded to current day by dividing by 86400.

try {
    final result = api_instance.uniswapV3GetUniswapDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<UniswapV3UniswapDayDataDTO>**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3MintsCurrent**
> List<UniswapV3MintDTO> uniswapV3MintsCurrent()

Mints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3MintsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3MintsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3MintDTO>**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PoolDayDataCurrent**
> List<UniswapV3PoolDayDataDTO> uniswapV3PoolDayDataCurrent()

PoolDayData (current)

Gets poolDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3PoolDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PoolDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3PoolDayDataDTO>**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PoolHourDataCurrent**
> List<UniswapV3PoolHourDataDTO> uniswapV3PoolHourDataCurrent()

PoolHourData (current)

Gets poolHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3PoolHourDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PoolHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3PoolHourDataDTO>**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PoolsCurrent**
> List<UniswapV3PoolDTO> uniswapV3PoolsCurrent(id)

Pools (current)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final id = id_example; // String | Pool address.

try {
    final result = api_instance.uniswapV3PoolsCurrent(id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Pool address. | [optional] 

### Return type

[**List<UniswapV3PoolDTO>**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PositionSnapshotsCurrent**
> List<UniswapV3PositionSnapshotDTO> uniswapV3PositionSnapshotsCurrent()

PositionSnapshots (current)

Gets positionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3PositionSnapshotsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PositionSnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3PositionSnapshotDTO>**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3PositionsCurrent**
> List<UniswapV3PositionDTO> uniswapV3PositionsCurrent()

Positions (current)

Gets positions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3PositionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3PositionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3PositionDTO>**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3SwapsCurrent**
> List<UniswapV3SwapDTO> uniswapV3SwapsCurrent(pool)

Swaps (current)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final pool = pool_example; // String | Pool swap occured within.

try {
    final result = api_instance.uniswapV3SwapsCurrent(pool);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3SwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool** | **String**| Pool swap occured within. | [optional] 

### Return type

[**List<UniswapV3SwapDTO>**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TickDayDataCurrent**
> List<UniswapV3TickDayDataDTO> uniswapV3TickDayDataCurrent()

TickDayData (current)

Gets tickDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3TickDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TickDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3TickDayDataDTO>**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TicksCurrent**
> List<UniswapV3TickDTO> uniswapV3TicksCurrent()

Ticks (current)

Gets ticks.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3TicksCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TicksCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3TickDTO>**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TokenHourDataCurrent**
> List<UniswapV3TokenHourDataDTO> uniswapV3TokenHourDataCurrent()

TokenHourData (current)

Gets tokenHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3TokenHourDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TokenHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3TokenHourDataDTO>**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TokenV3DayDataCurrent**
> List<UniswapV3TokenV3DayDataDTO> uniswapV3TokenV3DayDataCurrent()

TokenV3DayData (current)

Gets tokenV3DayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3TokenV3DayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TokenV3DayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3TokenV3DayDataDTO>**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TokensCurrent**
> List<UniswapV3TokenDTO> uniswapV3TokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3TokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3TokenDTO>**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3TransactionsCurrent**
> List<UniswapV3TransactionDTO> uniswapV3TransactionsCurrent()

Transactions (current)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3TransactionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3TransactionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3TransactionDTO>**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3UniswapDayDataCurrent**
> List<UniswapV3UniswapDayDataDTO> uniswapV3UniswapDayDataCurrent()

UniswapDayData (current)

Gets uniswapDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3UniswapDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3UniswapDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3UniswapDayDataDTO>**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

