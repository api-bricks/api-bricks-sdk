# openapi.api.UniswapV2Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2BundlesCurrent**](UniswapV2Api.md#uniswapv2bundlescurrent) | **GET** /dapps/uniswapv2/bundles/current | Bundles (current)
[**uniswapV2BurnsCurrent**](UniswapV2Api.md#uniswapv2burnscurrent) | **GET** /dapps/uniswapv2/burns/current | Burns (current)
[**uniswapV2GetBundlesHistorical**](UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
[**uniswapV2GetBurnsHistorical**](UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
[**uniswapV2GetLiquidityPositionSnapshotsHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical)
[**uniswapV2GetLiquidityPositionsHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
[**uniswapV2GetMintsHistorical**](UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
[**uniswapV2GetPairDayDataHistorical**](UniswapV2Api.md#uniswapv2getpairdaydatahistorical) | **GET** /dapps/uniswapv2/pairDayData/historical | PairDayData (historical)
[**uniswapV2GetPairHourDataHistorical**](UniswapV2Api.md#uniswapv2getpairhourdatahistorical) | **GET** /dapps/uniswapv2/pairHourData/historical | PairHourData (historical)
[**uniswapV2GetPairsHistorical**](UniswapV2Api.md#uniswapv2getpairshistorical) | **GET** /dapps/uniswapv2/pairs/historical | Pairs (historical)
[**uniswapV2GetSwapsHistorical**](UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical)
[**uniswapV2GetTokenDayDataHistorical**](UniswapV2Api.md#uniswapv2gettokendaydatahistorical) | **GET** /dapps/uniswapv2/tokenDayData/historical | TokenDayData (historical)
[**uniswapV2GetTokensHistorical**](UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical)
[**uniswapV2GetTransactionsHistorical**](UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
[**uniswapV2GetUniswapDayDataHistorical**](UniswapV2Api.md#uniswapv2getuniswapdaydatahistorical) | **GET** /dapps/uniswapv2/uniswapDayData/historical | UniswapDayData (historical)
[**uniswapV2GetUniswapFactoriesHistorical**](UniswapV2Api.md#uniswapv2getuniswapfactorieshistorical) | **GET** /dapps/uniswapv2/uniswapFactories/historical | UniswapFactories (historical)
[**uniswapV2GetUsersHistorical**](UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)
[**uniswapV2LiquidityPositionSnapshotsCurrent**](UniswapV2Api.md#uniswapv2liquiditypositionsnapshotscurrent) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
[**uniswapV2LiquidityPositionsCurrent**](UniswapV2Api.md#uniswapv2liquiditypositionscurrent) | **GET** /dapps/uniswapv2/liquidityPositions/current | LiquidityPositions (current)
[**uniswapV2MintsCurrent**](UniswapV2Api.md#uniswapv2mintscurrent) | **GET** /dapps/uniswapv2/mints/current | Mints (current)
[**uniswapV2PairDayDataCurrent**](UniswapV2Api.md#uniswapv2pairdaydatacurrent) | **GET** /dapps/uniswapv2/pairDayData/current | PairDayData (current)
[**uniswapV2PairHourDataCurrent**](UniswapV2Api.md#uniswapv2pairhourdatacurrent) | **GET** /dapps/uniswapv2/pairHourData/current | PairHourData (current)
[**uniswapV2PairsCurrent**](UniswapV2Api.md#uniswapv2pairscurrent) | **GET** /dapps/uniswapv2/pairs/current | Pairs (current)
[**uniswapV2SwapsCurrent**](UniswapV2Api.md#uniswapv2swapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current)
[**uniswapV2TokenDayDataCurrent**](UniswapV2Api.md#uniswapv2tokendaydatacurrent) | **GET** /dapps/uniswapv2/tokenDayData/current | TokenDayData (current)
[**uniswapV2TokensCurrent**](UniswapV2Api.md#uniswapv2tokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current)
[**uniswapV2TransactionsCurrent**](UniswapV2Api.md#uniswapv2transactionscurrent) | **GET** /dapps/uniswapv2/transactions/current | Transactions (current)
[**uniswapV2UniswapDayDataCurrent**](UniswapV2Api.md#uniswapv2uniswapdaydatacurrent) | **GET** /dapps/uniswapv2/uniswapDayData/current | UniswapDayData (current)
[**uniswapV2UniswapFactoriesCurrent**](UniswapV2Api.md#uniswapv2uniswapfactoriescurrent) | **GET** /dapps/uniswapv2/uniswapFactories/current | UniswapFactories (current)
[**uniswapV2UsersCurrent**](UniswapV2Api.md#uniswapv2userscurrent) | **GET** /dapps/uniswapv2/users/current | Users (current)


# **uniswapV2BundlesCurrent**
> List<UniswapV2BundleDTO> uniswapV2BundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2BundlesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2BundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2BundleDTO>**](UniswapV2BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2BurnsCurrent**
> List<UniswapV2BurnDTO> uniswapV2BurnsCurrent()

Burns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2BurnsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2BurnsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2BurnDTO>**](UniswapV2BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBundlesHistorical**
> List<UniswapV2BundleDTO> uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Constant 1.

try {
    final result = api_instance.uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBundlesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Constant 1. | [optional] 

### Return type

[**List<UniswapV2BundleDTO>**](UniswapV2BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBurnsHistorical**
> List<UniswapV2BurnDTO> uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Burns (historical)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in the transaction burn array
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBurnsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash plus index in the transaction burn array | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<UniswapV2BurnDTO>**](UniswapV2BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionSnapshotsHistorical**
> List<UniswapV2LiquidityPositionSnapshotDTO> uniswapV2GetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: (pair address)-(user address)
final user = user_example; // String | Reference to user.
final pair = pair_example; // String | Reference to the pair liquidity is being provided on.

try {
    final result = api_instance.uniswapV2GetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionSnapshotsHistorical: $e\n');
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
 **user** | **String**| Reference to user. | [optional] 
 **pair** | **String**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**List<UniswapV2LiquidityPositionSnapshotDTO>**](UniswapV2LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionsHistorical**
> List<UniswapV2LiquidityPositionDTO> uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositions (historical)

Gets liquidityPositions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User address and pair address concatenated with a dash.
final user = user_example; // String | Reference to user.
final pair = pair_example; // String | Reference to the pair liquidity is being provided on.

try {
    final result = api_instance.uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| User address and pair address concatenated with a dash. | [optional] 
 **user** | **String**| Reference to user. | [optional] 
 **pair** | **String**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**List<UniswapV2LiquidityPositionDTO>**](UniswapV2LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetMintsHistorical**
> List<UniswapV2MintDTO> uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Mints (historical)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in the transaction mint array.
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetMintsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash plus index in the transaction mint array. | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<UniswapV2MintDTO>**](UniswapV2MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairDayDataHistorical**
> List<UniswapV2PairDayDataDTO> uniswapV2GetPairDayDataHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairDayData (historical)

Gets pairDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 
final token0 = token0_example; // String | Reference to token0.
final token1 = token1_example; // String | Reference to token1.

try {
    final result = api_instance.uniswapV2GetPairDayDataHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairDayDataHistorical: $e\n');
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
 **token0** | **String**| Reference to token0. | [optional] 
 **token1** | **String**| Reference to token1. | [optional] 

### Return type

[**List<UniswapV2PairDayDataDTO>**](UniswapV2PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairHourDataHistorical**
> List<UniswapV2PairHourDataDTO> uniswapV2GetPairHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourData (historical)

Gets pairHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 
final pair = pair_example; // String | Address for pair contract.

try {
    final result = api_instance.uniswapV2GetPairHourDataHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairHourDataHistorical: $e\n');
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
 **pair** | **String**| Address for pair contract. | [optional] 

### Return type

[**List<UniswapV2PairHourDataDTO>**](UniswapV2PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairsHistorical**
> List<UniswapV2PairDTO> uniswapV2GetPairsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

Pairs (historical)

Gets pairs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Pair contract address.
final token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final result = api_instance.uniswapV2GetPairsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairsHistorical: $e\n');
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
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**List<UniswapV2PairDTO>**](UniswapV2PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapsHistorical**
> List<UniswapV2SwapDTO> uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Swaps (historical)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in Transaction swap array.
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetSwapsHistorical: $e\n');
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

[**List<UniswapV2SwapDTO>**](UniswapV2SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokenDayDataHistorical**
> List<UniswapV2TokenDayDataDTO> uniswapV2GetTokenDayDataHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayData (historical)

Gets tokenDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.

try {
    final result = api_instance.uniswapV2GetTokenDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokenDayDataHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] 

### Return type

[**List<UniswapV2TokenDayDataDTO>**](UniswapV2TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensHistorical**
> List<UniswapV2TokenDTO> uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address.
final symbol = symbol_example; // String | Token symbol.
final name = name_example; // String | Token name.

try {
    final result = api_instance.uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokensHistorical: $e\n');
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

[**List<UniswapV2TokenDTO>**](UniswapV2TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTransactionsHistorical**
> List<UniswapV2TransactionDTO> uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Ethereum transaction hash.

try {
    final result = api_instance.uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTransactionsHistorical: $e\n');
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

[**List<UniswapV2TransactionDTO>**](UniswapV2TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapDayDataHistorical**
> List<UniswapV2UniswapDayDataDTO> uniswapV2GetUniswapDayDataHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayData (historical)

Gets uniswapDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Unix timestamp for start of day / 86400 giving a unique day index.

try {
    final result = api_instance.uniswapV2GetUniswapDayDataHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUniswapDayDataHistorical: $e\n');
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

[**List<UniswapV2UniswapDayDataDTO>**](UniswapV2UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapFactoriesHistorical**
> List<UniswapV2UniswapFactoryDTO> uniswapV2GetUniswapFactoriesHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapFactories (historical)

Gets uniswapFactories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Factory address.

try {
    final result = api_instance.uniswapV2GetUniswapFactoriesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUniswapFactoriesHistorical: $e\n');
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

[**List<UniswapV2UniswapFactoryDTO>**](UniswapV2UniswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUsersHistorical**
> List<UniswapV2UserDTO> uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User address.

try {
    final result = api_instance.uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUsersHistorical: $e\n');
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

[**List<UniswapV2UserDTO>**](UniswapV2UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2LiquidityPositionSnapshotsCurrent**
> List<UniswapV2LiquidityPositionSnapshotDTO> uniswapV2LiquidityPositionSnapshotsCurrent()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2LiquidityPositionSnapshotsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2LiquidityPositionSnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2LiquidityPositionSnapshotDTO>**](UniswapV2LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2LiquidityPositionsCurrent**
> List<UniswapV2LiquidityPositionDTO> uniswapV2LiquidityPositionsCurrent()

LiquidityPositions (current)

Gets liquidityPositions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2LiquidityPositionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2LiquidityPositionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2LiquidityPositionDTO>**](UniswapV2LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2MintsCurrent**
> List<UniswapV2MintDTO> uniswapV2MintsCurrent()

Mints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2MintsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2MintsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2MintDTO>**](UniswapV2MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2PairDayDataCurrent**
> List<UniswapV2PairDayDataDTO> uniswapV2PairDayDataCurrent()

PairDayData (current)

Gets pairDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2PairDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2PairDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2PairDayDataDTO>**](UniswapV2PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2PairHourDataCurrent**
> List<UniswapV2PairHourDataDTO> uniswapV2PairHourDataCurrent()

PairHourData (current)

Gets pairHourData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2PairHourDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2PairHourDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2PairHourDataDTO>**](UniswapV2PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2PairsCurrent**
> List<UniswapV2PairDTO> uniswapV2PairsCurrent(id)

Pairs (current)

Gets pairs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final id = id_example; // String | Pair contract address.

try {
    final result = api_instance.uniswapV2PairsCurrent(id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2PairsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Pair contract address. | [optional] 

### Return type

[**List<UniswapV2PairDTO>**](UniswapV2PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2SwapsCurrent**
> List<UniswapV2SwapDTO> uniswapV2SwapsCurrent(pair)

Swaps (current)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2SwapsCurrent(pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2SwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<UniswapV2SwapDTO>**](UniswapV2SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2TokenDayDataCurrent**
> List<UniswapV2TokenDayDataDTO> uniswapV2TokenDayDataCurrent()

TokenDayData (current)

Gets tokenDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2TokenDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2TokenDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2TokenDayDataDTO>**](UniswapV2TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2TokensCurrent**
> List<UniswapV2TokenDTO> uniswapV2TokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2TokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2TokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2TokenDTO>**](UniswapV2TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2TransactionsCurrent**
> List<UniswapV2TransactionDTO> uniswapV2TransactionsCurrent()

Transactions (current)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2TransactionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2TransactionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2TransactionDTO>**](UniswapV2TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2UniswapDayDataCurrent**
> List<UniswapV2UniswapDayDataDTO> uniswapV2UniswapDayDataCurrent()

UniswapDayData (current)

Gets uniswapDayData.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2UniswapDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2UniswapDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2UniswapDayDataDTO>**](UniswapV2UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2UniswapFactoriesCurrent**
> List<UniswapV2UniswapFactoryDTO> uniswapV2UniswapFactoriesCurrent()

UniswapFactories (current)

Gets uniswapFactories.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2UniswapFactoriesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2UniswapFactoriesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2UniswapFactoryDTO>**](UniswapV2UniswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2UsersCurrent**
> List<UniswapV2UserDTO> uniswapV2UsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2UsersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2UsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2UserDTO>**](UniswapV2UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

