# openapi.api.CurveApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveAccountsCurrent**](CurveApi.md#curveaccountscurrent) | **GET** /dapps/curve/accounts/current | Accounts (current)
[**curveAddLiquidityEventsCurrent**](CurveApi.md#curveaddliquidityeventscurrent) | **GET** /dapps/curve/addLiquidityEvents/current | AddLiquidityEvents (current)
[**curveAdminFeeChangeLogsCurrent**](CurveApi.md#curveadminfeechangelogscurrent) | **GET** /dapps/curve/adminFeeChangeLogs/current | AdminFeeChangeLogs (current)
[**curveAmplificationCoeffChangeLogsCurrent**](CurveApi.md#curveamplificationcoeffchangelogscurrent) | **GET** /dapps/curve/amplificationCoeffChangeLogs/current | AmplificationCoeffChangeLogs (current)
[**curveCoinsCurrent**](CurveApi.md#curvecoinscurrent) | **GET** /dapps/curve/coins/current | Coins (current)
[**curveContractVersionsCurrent**](CurveApi.md#curvecontractversionscurrent) | **GET** /dapps/curve/contractVersions/current | ContractVersions (current)
[**curveContractsCurrent**](CurveApi.md#curvecontractscurrent) | **GET** /dapps/curve/contracts/current | Contracts (current)
[**curveDailyVolumesCurrent**](CurveApi.md#curvedailyvolumescurrent) | **GET** /dapps/curve/dailyVolumes/current | DailyVolumes (current)
[**curveExchangesCurrent**](CurveApi.md#curveexchangescurrent) | **GET** /dapps/curve/exchanges/current | Exchanges (current)
[**curveFeeChangeLogsCurrent**](CurveApi.md#curvefeechangelogscurrent) | **GET** /dapps/curve/feeChangeLogs/current | FeeChangeLogs (current)
[**curveGaugeDepositsCurrent**](CurveApi.md#curvegaugedepositscurrent) | **GET** /dapps/curve/gaugeDeposits/current | GaugeDeposits (current)
[**curveGaugeLiquiditiesCurrent**](CurveApi.md#curvegaugeliquiditiescurrent) | **GET** /dapps/curve/gaugeLiquidities/current | GaugeLiquidities (current)
[**curveGaugeTotalWeightsCurrent**](CurveApi.md#curvegaugetotalweightscurrent) | **GET** /dapps/curve/gaugeTotalWeights/current | GaugeTotalWeights (current)
[**curveGaugeTypeWeightsCurrent**](CurveApi.md#curvegaugetypeweightscurrent) | **GET** /dapps/curve/gaugeTypeWeights/current | GaugeTypeWeights (current)
[**curveGaugeTypesCurrent**](CurveApi.md#curvegaugetypescurrent) | **GET** /dapps/curve/gaugeTypes/current | GaugeTypes (current)
[**curveGaugeWeightVotesCurrent**](CurveApi.md#curvegaugeweightvotescurrent) | **GET** /dapps/curve/gaugeWeightVotes/current | GaugeWeightVotes (current)
[**curveGaugeWeightsCurrent**](CurveApi.md#curvegaugeweightscurrent) | **GET** /dapps/curve/gaugeWeights/current | GaugeWeights (current)
[**curveGaugeWithdrawsCurrent**](CurveApi.md#curvegaugewithdrawscurrent) | **GET** /dapps/curve/gaugeWithdraws/current | GaugeWithdraws (current)
[**curveGaugesCurrent**](CurveApi.md#curvegaugescurrent) | **GET** /dapps/curve/gauges/current | Gauges (current)
[**curveGetAccountsHistorical**](CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
[**curveGetAddLiquidityEventsHistorical**](CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
[**curveGetAdminFeeChangeLogsHistorical**](CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
[**curveGetAmplificationCoeffChangeLogsHistorical**](CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
[**curveGetCoinsHistorical**](CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical)
[**curveGetContractVersionsHistorical**](CurveApi.md#curvegetcontractversionshistorical) | **GET** /dapps/curve/contractVersions/historical | ContractVersions (historical)
[**curveGetContractsHistorical**](CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
[**curveGetDailyVolumesHistorical**](CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
[**curveGetExchangesHistorical**](CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical)
[**curveGetFeeChangeLogsHistorical**](CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
[**curveGetGaugeDepositsHistorical**](CurveApi.md#curvegetgaugedepositshistorical) | **GET** /dapps/curve/gaugeDeposits/historical | GaugeDeposits (historical)
[**curveGetGaugeLiquiditiesHistorical**](CurveApi.md#curvegetgaugeliquiditieshistorical) | **GET** /dapps/curve/gaugeLiquidities/historical | GaugeLiquidities (historical)
[**curveGetGaugeTotalWeightsHistorical**](CurveApi.md#curvegetgaugetotalweightshistorical) | **GET** /dapps/curve/gaugeTotalWeights/historical | GaugeTotalWeights (historical)
[**curveGetGaugeTypeWeightsHistorical**](CurveApi.md#curvegetgaugetypeweightshistorical) | **GET** /dapps/curve/gaugeTypeWeights/historical | GaugeTypeWeights (historical)
[**curveGetGaugeTypesHistorical**](CurveApi.md#curvegetgaugetypeshistorical) | **GET** /dapps/curve/gaugeTypes/historical | GaugeTypes (historical)
[**curveGetGaugeWeightVotesHistorical**](CurveApi.md#curvegetgaugeweightvoteshistorical) | **GET** /dapps/curve/gaugeWeightVotes/historical | GaugeWeightVotes (historical)
[**curveGetGaugeWeightsHistorical**](CurveApi.md#curvegetgaugeweightshistorical) | **GET** /dapps/curve/gaugeWeights/historical | GaugeWeights (historical)
[**curveGetGaugeWithdrawsHistorical**](CurveApi.md#curvegetgaugewithdrawshistorical) | **GET** /dapps/curve/gaugeWithdraws/historical | GaugeWithdraws (historical)
[**curveGetGaugesHistorical**](CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
[**curveGetHourlyVolumesHistorical**](CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
[**curveGetLpTokensHistorical**](CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
[**curveGetPoolsHistorical**](CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical)
[**curveGetProposalVotesHistorical**](CurveApi.md#curvegetproposalvoteshistorical) | **GET** /dapps/curve/proposalVotes/historical | ProposalVotes (historical)
[**curveGetProposalsHistorical**](CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
[**curveGetRemoveLiquidityEventsHistorical**](CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
[**curveGetRemoveLiquidityOneEventsHistorical**](CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
[**curveGetSystemStatesHistorical**](CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
[**curveGetTokensHistorical**](CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical)
[**curveGetTransferOwnershipEventsHistorical**](CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
[**curveGetUnderlyingCoinsHistorical**](CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
[**curveGetVotingAppsHistorical**](CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
[**curveGetWeeklyVolumesHistorical**](CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)
[**curveHourlyVolumesCurrent**](CurveApi.md#curvehourlyvolumescurrent) | **GET** /dapps/curve/hourlyVolumes/current | HourlyVolumes (current)
[**curveLpTokensCurrent**](CurveApi.md#curvelptokenscurrent) | **GET** /dapps/curve/lpTokens/current | LpTokens (current)
[**curvePoolsCurrent**](CurveApi.md#curvepoolscurrent) | **GET** /dapps/curve/pools/current | Pools (current)
[**curveProposalVotesCurrent**](CurveApi.md#curveproposalvotescurrent) | **GET** /dapps/curve/proposalVotes/current | ProposalVotes (current)
[**curveProposalsCurrent**](CurveApi.md#curveproposalscurrent) | **GET** /dapps/curve/proposals/current | Proposals (current)
[**curveRemoveLiquidityEventsCurrent**](CurveApi.md#curveremoveliquidityeventscurrent) | **GET** /dapps/curve/removeLiquidityEvents/current | RemoveLiquidityEvents (current)
[**curveRemoveLiquidityOneEventsCurrent**](CurveApi.md#curveremoveliquidityoneeventscurrent) | **GET** /dapps/curve/removeLiquidityOneEvents/current | RemoveLiquidityOneEvents (current)
[**curveSystemStatesCurrent**](CurveApi.md#curvesystemstatescurrent) | **GET** /dapps/curve/systemStates/current | SystemStates (current)
[**curveTokensCurrent**](CurveApi.md#curvetokenscurrent) | **GET** /dapps/curve/tokens/current | Tokens (current)
[**curveTransferOwnershipEventsCurrent**](CurveApi.md#curvetransferownershipeventscurrent) | **GET** /dapps/curve/transferOwnershipEvents/current | TransferOwnershipEvents (current)
[**curveUnderlyingCoinsCurrent**](CurveApi.md#curveunderlyingcoinscurrent) | **GET** /dapps/curve/underlyingCoins/current | UnderlyingCoins (current)
[**curveVotingAppsCurrent**](CurveApi.md#curvevotingappscurrent) | **GET** /dapps/curve/votingApps/current | VotingApps (current)
[**curveWeeklyVolumesCurrent**](CurveApi.md#curveweeklyvolumescurrent) | **GET** /dapps/curve/weeklyVolumes/current | WeeklyVolumes (current)


# **curveAccountsCurrent**
> BuiltList<CurveAccountDTO> curveAccountsCurrent()

Accounts (current)

Gets accounts.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveAccountsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveAccountsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveAccountDTO&gt;**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveAddLiquidityEventsCurrent**
> BuiltList<CurveAddLiquidityEventDTO> curveAddLiquidityEventsCurrent()

AddLiquidityEvents (current)

Gets addLiquidityEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveAddLiquidityEventsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveAddLiquidityEventsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveAddLiquidityEventDTO&gt;**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveAdminFeeChangeLogsCurrent**
> BuiltList<CurveAdminFeeChangeLogDTO> curveAdminFeeChangeLogsCurrent()

AdminFeeChangeLogs (current)

Gets adminFeeChangeLogs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveAdminFeeChangeLogsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveAdminFeeChangeLogsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveAdminFeeChangeLogDTO&gt;**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveAmplificationCoeffChangeLogsCurrent**
> BuiltList<CurveAmplificationCoeffChangeLogDTO> curveAmplificationCoeffChangeLogsCurrent()

AmplificationCoeffChangeLogs (current)

Gets amplificationCoeffChangeLogs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveAmplificationCoeffChangeLogsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveAmplificationCoeffChangeLogsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveAmplificationCoeffChangeLogDTO&gt;**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveCoinsCurrent**
> BuiltList<CurveCoinDTO> curveCoinsCurrent()

Coins (current)

Gets coins.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveCoinsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveCoinsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveCoinDTO&gt;**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveContractVersionsCurrent**
> BuiltList<CurveContractVersionDTO> curveContractVersionsCurrent()

ContractVersions (current)

Gets contractVersions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveContractVersionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveContractVersionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveContractVersionDTO&gt;**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveContractsCurrent**
> BuiltList<CurveContractDTO> curveContractsCurrent()

Contracts (current)

Gets contracts.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveContractsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveContractsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveContractDTO&gt;**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveDailyVolumesCurrent**
> BuiltList<CurveDailyVolumeDTO> curveDailyVolumesCurrent()

DailyVolumes (current)

Gets dailyVolumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveDailyVolumesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveDailyVolumesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveDailyVolumeDTO&gt;**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveExchangesCurrent**
> BuiltList<CurveExchangeDTO> curveExchangesCurrent(pool)

Exchanges (current)

Gets exchanges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final String pool = pool_example; // String | 

try {
    final response = api.curveExchangesCurrent(pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveExchangesCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveFeeChangeLogsCurrent**
> BuiltList<CurveFeeChangeLogDTO> curveFeeChangeLogsCurrent()

FeeChangeLogs (current)

Gets feeChangeLogs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveFeeChangeLogsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveFeeChangeLogsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveFeeChangeLogDTO&gt;**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeDepositsCurrent**
> BuiltList<CurveGaugeDepositDTO> curveGaugeDepositsCurrent()

GaugeDeposits (current)

Gets gaugeDeposits.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeDepositsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeDepositsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeDepositDTO&gt;**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeLiquiditiesCurrent**
> BuiltList<CurveGaugeLiquidityDTO> curveGaugeLiquiditiesCurrent()

GaugeLiquidities (current)

Gets gaugeLiquidities.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeLiquiditiesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeLiquiditiesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeLiquidityDTO&gt;**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeTotalWeightsCurrent**
> BuiltList<CurveGaugeTotalWeightDTO> curveGaugeTotalWeightsCurrent()

GaugeTotalWeights (current)

Gets gaugeTotalWeights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeTotalWeightsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeTotalWeightsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeTotalWeightDTO&gt;**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeTypeWeightsCurrent**
> BuiltList<CurveGaugeTypeWeightDTO> curveGaugeTypeWeightsCurrent()

GaugeTypeWeights (current)

Gets gaugeTypeWeights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeTypeWeightsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeTypeWeightsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeTypeWeightDTO&gt;**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeTypesCurrent**
> BuiltList<CurveGaugeTypeDTO> curveGaugeTypesCurrent()

GaugeTypes (current)

Gets gaugeTypes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeTypesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeTypesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeTypeDTO&gt;**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeWeightVotesCurrent**
> BuiltList<CurveGaugeWeightVoteDTO> curveGaugeWeightVotesCurrent()

GaugeWeightVotes (current)

Gets gaugeWeightVotes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeWeightVotesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeWeightVotesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeWeightVoteDTO&gt;**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeWeightsCurrent**
> BuiltList<CurveGaugeWeightDTO> curveGaugeWeightsCurrent()

GaugeWeights (current)

Gets gaugeWeights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeWeightsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeWeightsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeWeightDTO&gt;**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugeWithdrawsCurrent**
> BuiltList<CurveGaugeWithdrawDTO> curveGaugeWithdrawsCurrent()

GaugeWithdraws (current)

Gets gaugeWithdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugeWithdrawsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugeWithdrawsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeWithdrawDTO&gt;**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGaugesCurrent**
> BuiltList<CurveGaugeDTO> curveGaugesCurrent()

Gauges (current)

Gets gauges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveGaugesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGaugesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveGaugeDTO&gt;**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAccountsHistorical**
> BuiltList<CurveAccountDTO> curveGetAccountsHistorical(startBlock, endBlock, startDate, endDate, id, address)

Accounts (historical)

Gets accounts.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String address = address_example; // String | 

try {
    final response = api.curveGetAccountsHistorical(startBlock, endBlock, startDate, endDate, id, address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAccountsHistorical: $e\n');
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

### Return type

[**BuiltList&lt;CurveAccountDTO&gt;**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAddLiquidityEventsHistorical**
> BuiltList<CurveAddLiquidityEventDTO> curveGetAddLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

AddLiquidityEvents (historical)

Gets addLiquidityEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetAddLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAddLiquidityEventsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAddLiquidityEventDTO&gt;**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAdminFeeChangeLogsHistorical**
> BuiltList<CurveAdminFeeChangeLogDTO> curveGetAdminFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

AdminFeeChangeLogs (historical)

Gets adminFeeChangeLogs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetAdminFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAdminFeeChangeLogsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAdminFeeChangeLogDTO&gt;**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAmplificationCoeffChangeLogsHistorical**
> BuiltList<CurveAmplificationCoeffChangeLogDTO> curveGetAmplificationCoeffChangeLogsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

AmplificationCoeffChangeLogs (historical)

Gets amplificationCoeffChangeLogs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetAmplificationCoeffChangeLogsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAmplificationCoeffChangeLogsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAmplificationCoeffChangeLogDTO&gt;**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetCoinsHistorical**
> BuiltList<CurveCoinDTO> curveGetCoinsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

Coins (historical)

Gets coins.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Identifier, format: (pool_id)-(coin_index).
final String pool = pool_example; // String | 

try {
    final response = api.curveGetCoinsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetCoinsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (pool_id)-(coin_index). | [optional] 
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveCoinDTO&gt;**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetContractVersionsHistorical**
> BuiltList<CurveContractVersionDTO> curveGetContractVersionsHistorical(startBlock, endBlock, startDate, endDate, id, address)

ContractVersions (historical)

Gets contractVersions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String address = address_example; // String | 

try {
    final response = api.curveGetContractVersionsHistorical(startBlock, endBlock, startDate, endDate, id, address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetContractVersionsHistorical: $e\n');
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

### Return type

[**BuiltList&lt;CurveContractVersionDTO&gt;**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetContractsHistorical**
> BuiltList<CurveContractDTO> curveGetContractsHistorical(startBlock, endBlock, startDate, endDate, id)

Contracts (historical)

Gets contracts.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetContractsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetContractsHistorical: $e\n');
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

[**BuiltList&lt;CurveContractDTO&gt;**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetDailyVolumesHistorical**
> BuiltList<CurveDailyVolumeDTO> curveGetDailyVolumesHistorical(startBlock, endBlock, startDate, endDate, id, pool)

DailyVolumes (historical)

Gets dailyVolumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetDailyVolumesHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetDailyVolumesHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveDailyVolumeDTO&gt;**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetExchangesHistorical**
> BuiltList<CurveExchangeDTO> curveGetExchangesHistorical(startBlock, endBlock, startDate, endDate, id, pool)

Exchanges (historical)

Gets exchanges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetExchangesHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetExchangesHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetFeeChangeLogsHistorical**
> BuiltList<CurveFeeChangeLogDTO> curveGetFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

FeeChangeLogs (historical)

Gets feeChangeLogs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetFeeChangeLogsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveFeeChangeLogDTO&gt;**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeDepositsHistorical**
> BuiltList<CurveGaugeDepositDTO> curveGetGaugeDepositsHistorical(startBlock, endBlock, startDate, endDate, id)

GaugeDeposits (historical)

Gets gaugeDeposits.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetGaugeDepositsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeDepositsHistorical: $e\n');
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

[**BuiltList&lt;CurveGaugeDepositDTO&gt;**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeLiquiditiesHistorical**
> BuiltList<CurveGaugeLiquidityDTO> curveGetGaugeLiquiditiesHistorical(startBlock, endBlock, startDate, endDate, id, user)

GaugeLiquidities (historical)

Gets gaugeLiquidities.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String user = user_example; // String | 

try {
    final response = api.curveGetGaugeLiquiditiesHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeLiquiditiesHistorical: $e\n');
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
 **user** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeLiquidityDTO&gt;**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeTotalWeightsHistorical**
> BuiltList<CurveGaugeTotalWeightDTO> curveGetGaugeTotalWeightsHistorical(startBlock, endBlock, startDate, endDate, id)

GaugeTotalWeights (historical)

Gets gaugeTotalWeights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetGaugeTotalWeightsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeTotalWeightsHistorical: $e\n');
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

[**BuiltList&lt;CurveGaugeTotalWeightDTO&gt;**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeTypeWeightsHistorical**
> BuiltList<CurveGaugeTypeWeightDTO> curveGetGaugeTypeWeightsHistorical(startBlock, endBlock, startDate, endDate, id)

GaugeTypeWeights (historical)

Gets gaugeTypeWeights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetGaugeTypeWeightsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeTypeWeightsHistorical: $e\n');
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

[**BuiltList&lt;CurveGaugeTypeWeightDTO&gt;**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeTypesHistorical**
> BuiltList<CurveGaugeTypeDTO> curveGetGaugeTypesHistorical(startBlock, endBlock, startDate, endDate, id, name)

GaugeTypes (historical)

Gets gaugeTypes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String name = name_example; // String | 

try {
    final response = api.curveGetGaugeTypesHistorical(startBlock, endBlock, startDate, endDate, id, name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeTypesHistorical: $e\n');
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
 **name** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTypeDTO&gt;**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeWeightVotesHistorical**
> BuiltList<CurveGaugeWeightVoteDTO> curveGetGaugeWeightVotesHistorical(startBlock, endBlock, startDate, endDate, id, user)

GaugeWeightVotes (historical)

Gets gaugeWeightVotes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String user = user_example; // String | 

try {
    final response = api.curveGetGaugeWeightVotesHistorical(startBlock, endBlock, startDate, endDate, id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeWeightVotesHistorical: $e\n');
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
 **user** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWeightVoteDTO&gt;**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeWeightsHistorical**
> BuiltList<CurveGaugeWeightDTO> curveGetGaugeWeightsHistorical(startBlock, endBlock, startDate, endDate, id)

GaugeWeights (historical)

Gets gaugeWeights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetGaugeWeightsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeWeightsHistorical: $e\n');
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

[**BuiltList&lt;CurveGaugeWeightDTO&gt;**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeWithdrawsHistorical**
> BuiltList<CurveGaugeWithdrawDTO> curveGetGaugeWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id)

GaugeWithdraws (historical)

Gets gaugeWithdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetGaugeWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeWithdrawsHistorical: $e\n');
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

[**BuiltList&lt;CurveGaugeWithdrawDTO&gt;**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesHistorical**
> BuiltList<CurveGaugeDTO> curveGetGaugesHistorical(startBlock, endBlock, startDate, endDate, id, address, pool)

Gauges (historical)

Gets gauges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String address = address_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetGaugesHistorical(startBlock, endBlock, startDate, endDate, id, address, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeDTO&gt;**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetHourlyVolumesHistorical**
> BuiltList<CurveHourlyVolumeDTO> curveGetHourlyVolumesHistorical(startBlock, endBlock, startDate, endDate, id, pool)

HourlyVolumes (historical)

Gets hourlyVolumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetHourlyVolumesHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetHourlyVolumesHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveHourlyVolumeDTO&gt;**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetLpTokensHistorical**
> BuiltList<CurveLpTokenDTO> curveGetLpTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol, pool)

LpTokens (historical)

Gets lpTokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String address = address_example; // String | 
final String name = name_example; // String | 
final String symbol = symbol_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetLpTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetLpTokensHistorical: $e\n');
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
 **name** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveLpTokenDTO&gt;**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetPoolsHistorical**
> BuiltList<CurvePoolDTO> curveGetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, name)

Pools (historical)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Pool address.
final String name = name_example; // String | Pool's human-readable name.

try {
    final response = api.curveGetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetPoolsHistorical: $e\n');
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
 **name** | **String**| Pool's human-readable name. | [optional] 

### Return type

[**BuiltList&lt;CurvePoolDTO&gt;**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetProposalVotesHistorical**
> BuiltList<CurveProposalVoteDTO> curveGetProposalVotesHistorical(startBlock, endBlock, startDate, endDate, id)

ProposalVotes (historical)

Gets proposalVotes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetProposalVotesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetProposalVotesHistorical: $e\n');
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

[**BuiltList&lt;CurveProposalVoteDTO&gt;**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetProposalsHistorical**
> BuiltList<CurveProposalDTO> curveGetProposalsHistorical(startBlock, endBlock, startDate, endDate, id)

Proposals (historical)

Gets proposals.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.curveGetProposalsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetProposalsHistorical: $e\n');
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

[**BuiltList&lt;CurveProposalDTO&gt;**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetRemoveLiquidityEventsHistorical**
> BuiltList<CurveRemoveLiquidityEventDTO> curveGetRemoveLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

RemoveLiquidityEvents (historical)

Gets removeLiquidityEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetRemoveLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetRemoveLiquidityEventsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveRemoveLiquidityEventDTO&gt;**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetRemoveLiquidityOneEventsHistorical**
> BuiltList<CurveRemoveLiquidityOneEventDTO> curveGetRemoveLiquidityOneEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

RemoveLiquidityOneEvents (historical)

Gets removeLiquidityOneEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetRemoveLiquidityOneEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetRemoveLiquidityOneEventsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveRemoveLiquidityOneEventDTO&gt;**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetSystemStatesHistorical**
> BuiltList<CurveSystemStateDTO> curveGetSystemStatesHistorical(startBlock, endBlock, startDate, endDate, id)

SystemStates (historical)

Gets systemStates.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Singleton ID, equals to 'current'.

try {
    final response = api.curveGetSystemStatesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetSystemStatesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Singleton ID, equals to 'current'. | [optional] 

### Return type

[**BuiltList&lt;CurveSystemStateDTO&gt;**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetTokensHistorical**
> BuiltList<CurveTokenDTO> curveGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)

Tokens (historical)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String address = address_example; // String | 
final String name = name_example; // String | 
final String symbol = symbol_example; // String | 

try {
    final response = api.curveGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetTokensHistorical: $e\n');
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
 **name** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveTokenDTO&gt;**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetTransferOwnershipEventsHistorical**
> BuiltList<CurveTransferOwnershipEventDTO> curveGetTransferOwnershipEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

TransferOwnershipEvents (historical)

Gets transferOwnershipEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetTransferOwnershipEventsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetTransferOwnershipEventsHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveTransferOwnershipEventDTO&gt;**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetUnderlyingCoinsHistorical**
> BuiltList<CurveUnderlyingCoinDTO> curveGetUnderlyingCoinsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

UnderlyingCoins (historical)

Gets underlyingCoins.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | Equals to: (pool_id)-(coin_index).
final String pool = pool_example; // String | 

try {
    final response = api.curveGetUnderlyingCoinsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetUnderlyingCoinsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Equals to: (pool_id)-(coin_index). | [optional] 
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveUnderlyingCoinDTO&gt;**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetVotingAppsHistorical**
> BuiltList<CurveVotingAppDTO> curveGetVotingAppsHistorical(startBlock, endBlock, startDate, endDate, id, address)

VotingApps (historical)

Gets votingApps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | App address.
final String address = address_example; // String | 

try {
    final response = api.curveGetVotingAppsHistorical(startBlock, endBlock, startDate, endDate, id, address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetVotingAppsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| App address. | [optional] 
 **address** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveVotingAppDTO&gt;**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetWeeklyVolumesHistorical**
> BuiltList<CurveWeeklyVolumeDTO> curveGetWeeklyVolumesHistorical(startBlock, endBlock, startDate, endDate, id, pool)

WeeklyVolumes (historical)

Gets weeklyVolumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 
final String pool = pool_example; // String | 

try {
    final response = api.curveGetWeeklyVolumesHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetWeeklyVolumesHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveWeeklyVolumeDTO&gt;**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveHourlyVolumesCurrent**
> BuiltList<CurveHourlyVolumeDTO> curveHourlyVolumesCurrent()

HourlyVolumes (current)

Gets hourlyVolumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveHourlyVolumesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveHourlyVolumesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveHourlyVolumeDTO&gt;**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveLpTokensCurrent**
> BuiltList<CurveLpTokenDTO> curveLpTokensCurrent()

LpTokens (current)

Gets lpTokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveLpTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveLpTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveLpTokenDTO&gt;**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curvePoolsCurrent**
> BuiltList<CurvePoolDTO> curvePoolsCurrent(id)

Pools (current)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final String id = id_example; // String | Pool address.

try {
    final response = api.curvePoolsCurrent(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curvePoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Pool address. | [optional] 

### Return type

[**BuiltList&lt;CurvePoolDTO&gt;**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveProposalVotesCurrent**
> BuiltList<CurveProposalVoteDTO> curveProposalVotesCurrent()

ProposalVotes (current)

Gets proposalVotes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveProposalVotesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveProposalVotesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveProposalVoteDTO&gt;**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveProposalsCurrent**
> BuiltList<CurveProposalDTO> curveProposalsCurrent()

Proposals (current)

Gets proposals.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveProposalsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveProposalsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveProposalDTO&gt;**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveRemoveLiquidityEventsCurrent**
> BuiltList<CurveRemoveLiquidityEventDTO> curveRemoveLiquidityEventsCurrent()

RemoveLiquidityEvents (current)

Gets removeLiquidityEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveRemoveLiquidityEventsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveRemoveLiquidityEventsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveRemoveLiquidityEventDTO&gt;**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveRemoveLiquidityOneEventsCurrent**
> BuiltList<CurveRemoveLiquidityOneEventDTO> curveRemoveLiquidityOneEventsCurrent()

RemoveLiquidityOneEvents (current)

Gets removeLiquidityOneEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveRemoveLiquidityOneEventsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveRemoveLiquidityOneEventsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveRemoveLiquidityOneEventDTO&gt;**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveSystemStatesCurrent**
> BuiltList<CurveSystemStateDTO> curveSystemStatesCurrent()

SystemStates (current)

Gets systemStates.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveSystemStatesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveSystemStatesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveSystemStateDTO&gt;**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveTokensCurrent**
> BuiltList<CurveTokenDTO> curveTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveTokenDTO&gt;**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveTransferOwnershipEventsCurrent**
> BuiltList<CurveTransferOwnershipEventDTO> curveTransferOwnershipEventsCurrent()

TransferOwnershipEvents (current)

Gets transferOwnershipEvents.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveTransferOwnershipEventsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveTransferOwnershipEventsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveTransferOwnershipEventDTO&gt;**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveUnderlyingCoinsCurrent**
> BuiltList<CurveUnderlyingCoinDTO> curveUnderlyingCoinsCurrent()

UnderlyingCoins (current)

Gets underlyingCoins.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveUnderlyingCoinsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveUnderlyingCoinsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveUnderlyingCoinDTO&gt;**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveVotingAppsCurrent**
> BuiltList<CurveVotingAppDTO> curveVotingAppsCurrent()

VotingApps (current)

Gets votingApps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveVotingAppsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveVotingAppsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveVotingAppDTO&gt;**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveWeeklyVolumesCurrent**
> BuiltList<CurveWeeklyVolumeDTO> curveWeeklyVolumesCurrent()

WeeklyVolumes (current)

Gets weeklyVolumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();

try {
    final response = api.curveWeeklyVolumesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveWeeklyVolumesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveWeeklyVolumeDTO&gt;**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

