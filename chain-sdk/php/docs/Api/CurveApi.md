# OpenAPI\Client\CurveApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**curveAccountsCurrent()**](CurveApi.md#curveAccountsCurrent) | **GET** /dapps/curve/accounts/current | Accounts (current) |
| [**curveAddLiquidityEventsCurrent()**](CurveApi.md#curveAddLiquidityEventsCurrent) | **GET** /dapps/curve/addLiquidityEvents/current | AddLiquidityEvents (current) |
| [**curveAdminFeeChangeLogsCurrent()**](CurveApi.md#curveAdminFeeChangeLogsCurrent) | **GET** /dapps/curve/adminFeeChangeLogs/current | AdminFeeChangeLogs (current) |
| [**curveAmplificationCoeffChangeLogsCurrent()**](CurveApi.md#curveAmplificationCoeffChangeLogsCurrent) | **GET** /dapps/curve/amplificationCoeffChangeLogs/current | AmplificationCoeffChangeLogs (current) |
| [**curveCoinsCurrent()**](CurveApi.md#curveCoinsCurrent) | **GET** /dapps/curve/coins/current | Coins (current) |
| [**curveContractVersionsCurrent()**](CurveApi.md#curveContractVersionsCurrent) | **GET** /dapps/curve/contractVersions/current | ContractVersions (current) |
| [**curveContractsCurrent()**](CurveApi.md#curveContractsCurrent) | **GET** /dapps/curve/contracts/current | Contracts (current) |
| [**curveDailyVolumesCurrent()**](CurveApi.md#curveDailyVolumesCurrent) | **GET** /dapps/curve/dailyVolumes/current | DailyVolumes (current) |
| [**curveExchangesCurrent()**](CurveApi.md#curveExchangesCurrent) | **GET** /dapps/curve/exchanges/current | Exchanges (current) |
| [**curveFeeChangeLogsCurrent()**](CurveApi.md#curveFeeChangeLogsCurrent) | **GET** /dapps/curve/feeChangeLogs/current | FeeChangeLogs (current) |
| [**curveGaugeDepositsCurrent()**](CurveApi.md#curveGaugeDepositsCurrent) | **GET** /dapps/curve/gaugeDeposits/current | GaugeDeposits (current) |
| [**curveGaugeLiquiditiesCurrent()**](CurveApi.md#curveGaugeLiquiditiesCurrent) | **GET** /dapps/curve/gaugeLiquidities/current | GaugeLiquidities (current) |
| [**curveGaugeTotalWeightsCurrent()**](CurveApi.md#curveGaugeTotalWeightsCurrent) | **GET** /dapps/curve/gaugeTotalWeights/current | GaugeTotalWeights (current) |
| [**curveGaugeTypeWeightsCurrent()**](CurveApi.md#curveGaugeTypeWeightsCurrent) | **GET** /dapps/curve/gaugeTypeWeights/current | GaugeTypeWeights (current) |
| [**curveGaugeTypesCurrent()**](CurveApi.md#curveGaugeTypesCurrent) | **GET** /dapps/curve/gaugeTypes/current | GaugeTypes (current) |
| [**curveGaugeWeightVotesCurrent()**](CurveApi.md#curveGaugeWeightVotesCurrent) | **GET** /dapps/curve/gaugeWeightVotes/current | GaugeWeightVotes (current) |
| [**curveGaugeWeightsCurrent()**](CurveApi.md#curveGaugeWeightsCurrent) | **GET** /dapps/curve/gaugeWeights/current | GaugeWeights (current) |
| [**curveGaugeWithdrawsCurrent()**](CurveApi.md#curveGaugeWithdrawsCurrent) | **GET** /dapps/curve/gaugeWithdraws/current | GaugeWithdraws (current) |
| [**curveGaugesCurrent()**](CurveApi.md#curveGaugesCurrent) | **GET** /dapps/curve/gauges/current | Gauges (current) |
| [**curveGetAccountsHistorical()**](CurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) |
| [**curveGetAddLiquidityEventsHistorical()**](CurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical) |
| [**curveGetAdminFeeChangeLogsHistorical()**](CurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical) |
| [**curveGetAmplificationCoeffChangeLogsHistorical()**](CurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical) |
| [**curveGetCoinsHistorical()**](CurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) |
| [**curveGetContractVersionsHistorical()**](CurveApi.md#curveGetContractVersionsHistorical) | **GET** /dapps/curve/contractVersions/historical | ContractVersions (historical) |
| [**curveGetContractsHistorical()**](CurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) |
| [**curveGetDailyVolumesHistorical()**](CurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical) |
| [**curveGetExchangesHistorical()**](CurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) |
| [**curveGetFeeChangeLogsHistorical()**](CurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical) |
| [**curveGetGaugeDepositsHistorical()**](CurveApi.md#curveGetGaugeDepositsHistorical) | **GET** /dapps/curve/gaugeDeposits/historical | GaugeDeposits (historical) |
| [**curveGetGaugeLiquiditiesHistorical()**](CurveApi.md#curveGetGaugeLiquiditiesHistorical) | **GET** /dapps/curve/gaugeLiquidities/historical | GaugeLiquidities (historical) |
| [**curveGetGaugeTotalWeightsHistorical()**](CurveApi.md#curveGetGaugeTotalWeightsHistorical) | **GET** /dapps/curve/gaugeTotalWeights/historical | GaugeTotalWeights (historical) |
| [**curveGetGaugeTypeWeightsHistorical()**](CurveApi.md#curveGetGaugeTypeWeightsHistorical) | **GET** /dapps/curve/gaugeTypeWeights/historical | GaugeTypeWeights (historical) |
| [**curveGetGaugeTypesHistorical()**](CurveApi.md#curveGetGaugeTypesHistorical) | **GET** /dapps/curve/gaugeTypes/historical | GaugeTypes (historical) |
| [**curveGetGaugeWeightVotesHistorical()**](CurveApi.md#curveGetGaugeWeightVotesHistorical) | **GET** /dapps/curve/gaugeWeightVotes/historical | GaugeWeightVotes (historical) |
| [**curveGetGaugeWeightsHistorical()**](CurveApi.md#curveGetGaugeWeightsHistorical) | **GET** /dapps/curve/gaugeWeights/historical | GaugeWeights (historical) |
| [**curveGetGaugeWithdrawsHistorical()**](CurveApi.md#curveGetGaugeWithdrawsHistorical) | **GET** /dapps/curve/gaugeWithdraws/historical | GaugeWithdraws (historical) |
| [**curveGetGaugesHistorical()**](CurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) |
| [**curveGetHourlyVolumesHistorical()**](CurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical) |
| [**curveGetLpTokensHistorical()**](CurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical) |
| [**curveGetPoolsHistorical()**](CurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) |
| [**curveGetProposalVotesHistorical()**](CurveApi.md#curveGetProposalVotesHistorical) | **GET** /dapps/curve/proposalVotes/historical | ProposalVotes (historical) |
| [**curveGetProposalsHistorical()**](CurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) |
| [**curveGetRemoveLiquidityEventsHistorical()**](CurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical) |
| [**curveGetRemoveLiquidityOneEventsHistorical()**](CurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical) |
| [**curveGetSystemStatesHistorical()**](CurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical) |
| [**curveGetTokensHistorical()**](CurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) |
| [**curveGetTransferOwnershipEventsHistorical()**](CurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical) |
| [**curveGetUnderlyingCoinsHistorical()**](CurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical) |
| [**curveGetVotingAppsHistorical()**](CurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical) |
| [**curveGetWeeklyVolumesHistorical()**](CurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical) |
| [**curveHourlyVolumesCurrent()**](CurveApi.md#curveHourlyVolumesCurrent) | **GET** /dapps/curve/hourlyVolumes/current | HourlyVolumes (current) |
| [**curveLpTokensCurrent()**](CurveApi.md#curveLpTokensCurrent) | **GET** /dapps/curve/lpTokens/current | LpTokens (current) |
| [**curvePoolsCurrent()**](CurveApi.md#curvePoolsCurrent) | **GET** /dapps/curve/pools/current | Pools (current) |
| [**curveProposalVotesCurrent()**](CurveApi.md#curveProposalVotesCurrent) | **GET** /dapps/curve/proposalVotes/current | ProposalVotes (current) |
| [**curveProposalsCurrent()**](CurveApi.md#curveProposalsCurrent) | **GET** /dapps/curve/proposals/current | Proposals (current) |
| [**curveRemoveLiquidityEventsCurrent()**](CurveApi.md#curveRemoveLiquidityEventsCurrent) | **GET** /dapps/curve/removeLiquidityEvents/current | RemoveLiquidityEvents (current) |
| [**curveRemoveLiquidityOneEventsCurrent()**](CurveApi.md#curveRemoveLiquidityOneEventsCurrent) | **GET** /dapps/curve/removeLiquidityOneEvents/current | RemoveLiquidityOneEvents (current) |
| [**curveSystemStatesCurrent()**](CurveApi.md#curveSystemStatesCurrent) | **GET** /dapps/curve/systemStates/current | SystemStates (current) |
| [**curveTokensCurrent()**](CurveApi.md#curveTokensCurrent) | **GET** /dapps/curve/tokens/current | Tokens (current) |
| [**curveTransferOwnershipEventsCurrent()**](CurveApi.md#curveTransferOwnershipEventsCurrent) | **GET** /dapps/curve/transferOwnershipEvents/current | TransferOwnershipEvents (current) |
| [**curveUnderlyingCoinsCurrent()**](CurveApi.md#curveUnderlyingCoinsCurrent) | **GET** /dapps/curve/underlyingCoins/current | UnderlyingCoins (current) |
| [**curveVotingAppsCurrent()**](CurveApi.md#curveVotingAppsCurrent) | **GET** /dapps/curve/votingApps/current | VotingApps (current) |
| [**curveWeeklyVolumesCurrent()**](CurveApi.md#curveWeeklyVolumesCurrent) | **GET** /dapps/curve/weeklyVolumes/current | WeeklyVolumes (current) |


## `curveAccountsCurrent()`

```php
curveAccountsCurrent(): \OpenAPI\Client\Model\CurveAccountDTO[]
```

Accounts (current)

Gets accounts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveAccountsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveAccountsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveAccountDTO[]**](../Model/CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveAddLiquidityEventsCurrent()`

```php
curveAddLiquidityEventsCurrent(): \OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]
```

AddLiquidityEvents (current)

Gets addLiquidityEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveAddLiquidityEventsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveAddLiquidityEventsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]**](../Model/CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveAdminFeeChangeLogsCurrent()`

```php
curveAdminFeeChangeLogsCurrent(): \OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]
```

AdminFeeChangeLogs (current)

Gets adminFeeChangeLogs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveAdminFeeChangeLogsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveAdminFeeChangeLogsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]**](../Model/CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveAmplificationCoeffChangeLogsCurrent()`

```php
curveAmplificationCoeffChangeLogsCurrent(): \OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]
```

AmplificationCoeffChangeLogs (current)

Gets amplificationCoeffChangeLogs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveAmplificationCoeffChangeLogsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveAmplificationCoeffChangeLogsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]**](../Model/CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveCoinsCurrent()`

```php
curveCoinsCurrent(): \OpenAPI\Client\Model\CurveCoinDTO[]
```

Coins (current)

Gets coins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveCoinsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveCoinsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveCoinDTO[]**](../Model/CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveContractVersionsCurrent()`

```php
curveContractVersionsCurrent(): \OpenAPI\Client\Model\CurveContractVersionDTO[]
```

ContractVersions (current)

Gets contractVersions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveContractVersionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveContractVersionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveContractVersionDTO[]**](../Model/CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveContractsCurrent()`

```php
curveContractsCurrent(): \OpenAPI\Client\Model\CurveContractDTO[]
```

Contracts (current)

Gets contracts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveContractsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveContractsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveContractDTO[]**](../Model/CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveDailyVolumesCurrent()`

```php
curveDailyVolumesCurrent(): \OpenAPI\Client\Model\CurveDailyVolumeDTO[]
```

DailyVolumes (current)

Gets dailyVolumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveDailyVolumesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveDailyVolumesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveDailyVolumeDTO[]**](../Model/CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveExchangesCurrent()`

```php
curveExchangesCurrent($pool): \OpenAPI\Client\Model\CurveExchangeDTO[]
```

Exchanges (current)

Gets exchanges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveExchangesCurrent($pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveExchangesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveExchangeDTO[]**](../Model/CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveFeeChangeLogsCurrent()`

```php
curveFeeChangeLogsCurrent(): \OpenAPI\Client\Model\CurveFeeChangeLogDTO[]
```

FeeChangeLogs (current)

Gets feeChangeLogs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveFeeChangeLogsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveFeeChangeLogsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveFeeChangeLogDTO[]**](../Model/CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeDepositsCurrent()`

```php
curveGaugeDepositsCurrent(): \OpenAPI\Client\Model\CurveGaugeDepositDTO[]
```

GaugeDeposits (current)

Gets gaugeDeposits.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeDepositsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeDepositsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeDepositDTO[]**](../Model/CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeLiquiditiesCurrent()`

```php
curveGaugeLiquiditiesCurrent(): \OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]
```

GaugeLiquidities (current)

Gets gaugeLiquidities.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeLiquiditiesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeLiquiditiesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]**](../Model/CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeTotalWeightsCurrent()`

```php
curveGaugeTotalWeightsCurrent(): \OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]
```

GaugeTotalWeights (current)

Gets gaugeTotalWeights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeTotalWeightsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeTotalWeightsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]**](../Model/CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeTypeWeightsCurrent()`

```php
curveGaugeTypeWeightsCurrent(): \OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]
```

GaugeTypeWeights (current)

Gets gaugeTypeWeights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeTypeWeightsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeTypeWeightsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]**](../Model/CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeTypesCurrent()`

```php
curveGaugeTypesCurrent(): \OpenAPI\Client\Model\CurveGaugeTypeDTO[]
```

GaugeTypes (current)

Gets gaugeTypes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeTypesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeTypesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeTypeDTO[]**](../Model/CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeWeightVotesCurrent()`

```php
curveGaugeWeightVotesCurrent(): \OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]
```

GaugeWeightVotes (current)

Gets gaugeWeightVotes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeWeightVotesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeWeightVotesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]**](../Model/CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeWeightsCurrent()`

```php
curveGaugeWeightsCurrent(): \OpenAPI\Client\Model\CurveGaugeWeightDTO[]
```

GaugeWeights (current)

Gets gaugeWeights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeWeightsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeWeightsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeWeightDTO[]**](../Model/CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugeWithdrawsCurrent()`

```php
curveGaugeWithdrawsCurrent(): \OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]
```

GaugeWithdraws (current)

Gets gaugeWithdraws.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugeWithdrawsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugeWithdrawsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]**](../Model/CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGaugesCurrent()`

```php
curveGaugesCurrent(): \OpenAPI\Client\Model\CurveGaugeDTO[]
```

Gauges (current)

Gets gauges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveGaugesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGaugesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveGaugeDTO[]**](../Model/CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAccountsHistorical()`

```php
curveGetAccountsHistorical($start_block, $end_block, $start_date, $end_date, $id, $address): \OpenAPI\Client\Model\CurveAccountDTO[]
```

Accounts (historical)

Gets accounts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$address = 'address_example'; // string | 

try {
    $result = $apiInstance->curveGetAccountsHistorical($start_block, $end_block, $start_date, $end_date, $id, $address);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAccountsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **address** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveAccountDTO[]**](../Model/CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAddLiquidityEventsHistorical()`

```php
curveGetAddLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]
```

AddLiquidityEvents (historical)

Gets addLiquidityEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetAddLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAddLiquidityEventsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]**](../Model/CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAdminFeeChangeLogsHistorical()`

```php
curveGetAdminFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]
```

AdminFeeChangeLogs (historical)

Gets adminFeeChangeLogs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetAdminFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAdminFeeChangeLogsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]**](../Model/CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAmplificationCoeffChangeLogsHistorical()`

```php
curveGetAmplificationCoeffChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]
```

AmplificationCoeffChangeLogs (historical)

Gets amplificationCoeffChangeLogs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetAmplificationCoeffChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAmplificationCoeffChangeLogsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]**](../Model/CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetCoinsHistorical()`

```php
curveGetCoinsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveCoinDTO[]
```

Coins (historical)

Gets coins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pool_id)-(coin_index).
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetCoinsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetCoinsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pool_id)-(coin_index). | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveCoinDTO[]**](../Model/CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetContractVersionsHistorical()`

```php
curveGetContractVersionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $address): \OpenAPI\Client\Model\CurveContractVersionDTO[]
```

ContractVersions (historical)

Gets contractVersions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$address = 'address_example'; // string | 

try {
    $result = $apiInstance->curveGetContractVersionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $address);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetContractVersionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **address** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveContractVersionDTO[]**](../Model/CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetContractsHistorical()`

```php
curveGetContractsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveContractDTO[]
```

Contracts (historical)

Gets contracts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetContractsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetContractsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveContractDTO[]**](../Model/CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetDailyVolumesHistorical()`

```php
curveGetDailyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveDailyVolumeDTO[]
```

DailyVolumes (historical)

Gets dailyVolumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetDailyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetDailyVolumesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveDailyVolumeDTO[]**](../Model/CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetExchangesHistorical()`

```php
curveGetExchangesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveExchangeDTO[]
```

Exchanges (historical)

Gets exchanges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetExchangesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetExchangesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveExchangeDTO[]**](../Model/CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetFeeChangeLogsHistorical()`

```php
curveGetFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveFeeChangeLogDTO[]
```

FeeChangeLogs (historical)

Gets feeChangeLogs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetFeeChangeLogsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveFeeChangeLogDTO[]**](../Model/CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeDepositsHistorical()`

```php
curveGetGaugeDepositsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveGaugeDepositDTO[]
```

GaugeDeposits (historical)

Gets gaugeDeposits.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeDepositsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeDepositsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeDepositDTO[]**](../Model/CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeLiquiditiesHistorical()`

```php
curveGetGaugeLiquiditiesHistorical($start_block, $end_block, $start_date, $end_date, $id, $user): \OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]
```

GaugeLiquidities (historical)

Gets gaugeLiquidities.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$user = 'user_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeLiquiditiesHistorical($start_block, $end_block, $start_date, $end_date, $id, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeLiquiditiesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **user** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]**](../Model/CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeTotalWeightsHistorical()`

```php
curveGetGaugeTotalWeightsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]
```

GaugeTotalWeights (historical)

Gets gaugeTotalWeights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeTotalWeightsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeTotalWeightsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]**](../Model/CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeTypeWeightsHistorical()`

```php
curveGetGaugeTypeWeightsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]
```

GaugeTypeWeights (historical)

Gets gaugeTypeWeights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeTypeWeightsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeTypeWeightsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]**](../Model/CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeTypesHistorical()`

```php
curveGetGaugeTypesHistorical($start_block, $end_block, $start_date, $end_date, $id, $name): \OpenAPI\Client\Model\CurveGaugeTypeDTO[]
```

GaugeTypes (historical)

Gets gaugeTypes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$name = 'name_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeTypesHistorical($start_block, $end_block, $start_date, $end_date, $id, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeTypesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **name** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeTypeDTO[]**](../Model/CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeWeightVotesHistorical()`

```php
curveGetGaugeWeightVotesHistorical($start_block, $end_block, $start_date, $end_date, $id, $user): \OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]
```

GaugeWeightVotes (historical)

Gets gaugeWeightVotes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$user = 'user_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeWeightVotesHistorical($start_block, $end_block, $start_date, $end_date, $id, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeWeightVotesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **user** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]**](../Model/CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeWeightsHistorical()`

```php
curveGetGaugeWeightsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveGaugeWeightDTO[]
```

GaugeWeights (historical)

Gets gaugeWeights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeWeightsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeWeightsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeWeightDTO[]**](../Model/CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeWithdrawsHistorical()`

```php
curveGetGaugeWithdrawsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]
```

GaugeWithdraws (historical)

Gets gaugeWithdraws.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugeWithdrawsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeWithdrawsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]**](../Model/CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesHistorical()`

```php
curveGetGaugesHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $pool): \OpenAPI\Client\Model\CurveGaugeDTO[]
```

Gauges (historical)

Gets gauges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$address = 'address_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetGaugesHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **address** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveGaugeDTO[]**](../Model/CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetHourlyVolumesHistorical()`

```php
curveGetHourlyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveHourlyVolumeDTO[]
```

HourlyVolumes (historical)

Gets hourlyVolumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetHourlyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetHourlyVolumesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveHourlyVolumeDTO[]**](../Model/CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetLpTokensHistorical()`

```php
curveGetLpTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $name, $symbol, $pool): \OpenAPI\Client\Model\CurveLpTokenDTO[]
```

LpTokens (historical)

Gets lpTokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$address = 'address_example'; // string | 
$name = 'name_example'; // string | 
$symbol = 'symbol_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetLpTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $name, $symbol, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetLpTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **address** | **string**|  | [optional] |
| **name** | **string**|  | [optional] |
| **symbol** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveLpTokenDTO[]**](../Model/CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetPoolsHistorical()`

```php
curveGetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $id, $name): \OpenAPI\Client\Model\CurvePoolDTO[]
```

Pools (historical)

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Pool address.
$name = 'name_example'; // string | Pool's human-readable name.

try {
    $result = $apiInstance->curveGetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $id, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetPoolsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Pool address. | [optional] |
| **name** | **string**| Pool&#39;s human-readable name. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurvePoolDTO[]**](../Model/CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetProposalVotesHistorical()`

```php
curveGetProposalVotesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveProposalVoteDTO[]
```

ProposalVotes (historical)

Gets proposalVotes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetProposalVotesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetProposalVotesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveProposalVoteDTO[]**](../Model/CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetProposalsHistorical()`

```php
curveGetProposalsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveProposalDTO[]
```

Proposals (historical)

Gets proposals.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->curveGetProposalsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetProposalsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveProposalDTO[]**](../Model/CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetRemoveLiquidityEventsHistorical()`

```php
curveGetRemoveLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]
```

RemoveLiquidityEvents (historical)

Gets removeLiquidityEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetRemoveLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetRemoveLiquidityEventsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]**](../Model/CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetRemoveLiquidityOneEventsHistorical()`

```php
curveGetRemoveLiquidityOneEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]
```

RemoveLiquidityOneEvents (historical)

Gets removeLiquidityOneEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetRemoveLiquidityOneEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetRemoveLiquidityOneEventsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]**](../Model/CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetSystemStatesHistorical()`

```php
curveGetSystemStatesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CurveSystemStateDTO[]
```

SystemStates (historical)

Gets systemStates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Singleton ID, equals to 'current'.

try {
    $result = $apiInstance->curveGetSystemStatesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetSystemStatesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Singleton ID, equals to &#39;current&#39;. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveSystemStateDTO[]**](../Model/CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetTokensHistorical()`

```php
curveGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $name, $symbol): \OpenAPI\Client\Model\CurveTokenDTO[]
```

Tokens (historical)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$address = 'address_example'; // string | 
$name = 'name_example'; // string | 
$symbol = 'symbol_example'; // string | 

try {
    $result = $apiInstance->curveGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $name, $symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **address** | **string**|  | [optional] |
| **name** | **string**|  | [optional] |
| **symbol** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveTokenDTO[]**](../Model/CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetTransferOwnershipEventsHistorical()`

```php
curveGetTransferOwnershipEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]
```

TransferOwnershipEvents (historical)

Gets transferOwnershipEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetTransferOwnershipEventsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetTransferOwnershipEventsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]**](../Model/CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetUnderlyingCoinsHistorical()`

```php
curveGetUnderlyingCoinsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]
```

UnderlyingCoins (historical)

Gets underlyingCoins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Equals to: (pool_id)-(coin_index).
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetUnderlyingCoinsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetUnderlyingCoinsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Equals to: (pool_id)-(coin_index). | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]**](../Model/CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetVotingAppsHistorical()`

```php
curveGetVotingAppsHistorical($start_block, $end_block, $start_date, $end_date, $id, $address): \OpenAPI\Client\Model\CurveVotingAppDTO[]
```

VotingApps (historical)

Gets votingApps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | App address.
$address = 'address_example'; // string | 

try {
    $result = $apiInstance->curveGetVotingAppsHistorical($start_block, $end_block, $start_date, $end_date, $id, $address);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetVotingAppsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| App address. | [optional] |
| **address** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveVotingAppDTO[]**](../Model/CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetWeeklyVolumesHistorical()`

```php
curveGetWeeklyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]
```

WeeklyVolumes (historical)

Gets weeklyVolumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pool = 'pool_example'; // string | 

try {
    $result = $apiInstance->curveGetWeeklyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetWeeklyVolumesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **pool** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]**](../Model/CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveHourlyVolumesCurrent()`

```php
curveHourlyVolumesCurrent(): \OpenAPI\Client\Model\CurveHourlyVolumeDTO[]
```

HourlyVolumes (current)

Gets hourlyVolumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveHourlyVolumesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveHourlyVolumesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveHourlyVolumeDTO[]**](../Model/CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveLpTokensCurrent()`

```php
curveLpTokensCurrent(): \OpenAPI\Client\Model\CurveLpTokenDTO[]
```

LpTokens (current)

Gets lpTokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveLpTokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveLpTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveLpTokenDTO[]**](../Model/CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curvePoolsCurrent()`

```php
curvePoolsCurrent($id): \OpenAPI\Client\Model\CurvePoolDTO[]
```

Pools (current)

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 'id_example'; // string | Pool address.

try {
    $result = $apiInstance->curvePoolsCurrent($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curvePoolsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Pool address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CurvePoolDTO[]**](../Model/CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveProposalVotesCurrent()`

```php
curveProposalVotesCurrent(): \OpenAPI\Client\Model\CurveProposalVoteDTO[]
```

ProposalVotes (current)

Gets proposalVotes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveProposalVotesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveProposalVotesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveProposalVoteDTO[]**](../Model/CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveProposalsCurrent()`

```php
curveProposalsCurrent(): \OpenAPI\Client\Model\CurveProposalDTO[]
```

Proposals (current)

Gets proposals.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveProposalsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveProposalsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveProposalDTO[]**](../Model/CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveRemoveLiquidityEventsCurrent()`

```php
curveRemoveLiquidityEventsCurrent(): \OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]
```

RemoveLiquidityEvents (current)

Gets removeLiquidityEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveRemoveLiquidityEventsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveRemoveLiquidityEventsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]**](../Model/CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveRemoveLiquidityOneEventsCurrent()`

```php
curveRemoveLiquidityOneEventsCurrent(): \OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]
```

RemoveLiquidityOneEvents (current)

Gets removeLiquidityOneEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveRemoveLiquidityOneEventsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveRemoveLiquidityOneEventsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]**](../Model/CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveSystemStatesCurrent()`

```php
curveSystemStatesCurrent(): \OpenAPI\Client\Model\CurveSystemStateDTO[]
```

SystemStates (current)

Gets systemStates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveSystemStatesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveSystemStatesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveSystemStateDTO[]**](../Model/CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveTokensCurrent()`

```php
curveTokensCurrent(): \OpenAPI\Client\Model\CurveTokenDTO[]
```

Tokens (current)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveTokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveTokenDTO[]**](../Model/CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveTransferOwnershipEventsCurrent()`

```php
curveTransferOwnershipEventsCurrent(): \OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]
```

TransferOwnershipEvents (current)

Gets transferOwnershipEvents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveTransferOwnershipEventsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveTransferOwnershipEventsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]**](../Model/CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveUnderlyingCoinsCurrent()`

```php
curveUnderlyingCoinsCurrent(): \OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]
```

UnderlyingCoins (current)

Gets underlyingCoins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveUnderlyingCoinsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveUnderlyingCoinsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]**](../Model/CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveVotingAppsCurrent()`

```php
curveVotingAppsCurrent(): \OpenAPI\Client\Model\CurveVotingAppDTO[]
```

VotingApps (current)

Gets votingApps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveVotingAppsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveVotingAppsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveVotingAppDTO[]**](../Model/CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveWeeklyVolumesCurrent()`

```php
curveWeeklyVolumesCurrent(): \OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]
```

WeeklyVolumes (current)

Gets weeklyVolumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->curveWeeklyVolumesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveWeeklyVolumesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]**](../Model/CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
