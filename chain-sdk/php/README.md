# OpenAPIClient-php


This section will provide necessary information about the `OnChain API` protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        
                    

For more information, please visit [https://www.coinapi.io](https://www.coinapi.io).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | User's address.

try {
    $result = $apiInstance->cowGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetOrdersHistorical: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrdersHistorical**](docs/Api/CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) 🔥
*CowApi* | [**cowGetSettlementsHistorical**](docs/Api/CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) 🔥
*CowApi* | [**cowGetTokensHistorical**](docs/Api/CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/Api/CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/Api/CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical) 🔥
*CurveApi* | [**curveGetAccountsHistorical**](docs/Api/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) 🔥
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/Api/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addliquidityevents/historical | AddLiquidityEvents (historical) 🔥
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminfeechangelogs/historical | AdminFeeChangeLogs (historical) 🔥
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationcoeffchangelogs/historical | AmplificationCoeffChangeLogs (historical) 🔥
*CurveApi* | [**curveGetCoinsHistorical**](docs/Api/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) 🔥
*CurveApi* | [**curveGetContractVersionsHistorical**](docs/Api/CurveApi.md#curvegetcontractversionshistorical) | **GET** /dapps/curve/contractversions/historical | ContractVersions (historical) 🔥
*CurveApi* | [**curveGetContractsHistorical**](docs/Api/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) 🔥
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/Api/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyvolumes/historical | DailyVolumes (historical) 🔥
*CurveApi* | [**curveGetExchangesHistorical**](docs/Api/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feechangelogs/historical | FeeChangeLogs (historical) 🔥
*CurveApi* | [**curveGetGaugeDepositsHistorical**](docs/Api/CurveApi.md#curvegetgaugedepositshistorical) | **GET** /dapps/curve/gaugedeposits/historical | GaugeDeposits (historical) 🔥
*CurveApi* | [**curveGetGaugeLiquiditysHistorical**](docs/Api/CurveApi.md#curvegetgaugeliquidityshistorical) | **GET** /dapps/curve/gaugeliquiditys/historical | GaugeLiquiditys (historical) 🔥
*CurveApi* | [**curveGetGaugeTotalWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugetotalweightshistorical) | **GET** /dapps/curve/gaugetotalweights/historical | GaugeTotalWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugetypeweightshistorical) | **GET** /dapps/curve/gaugetypeweights/historical | GaugeTypeWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeTypesHistorical**](docs/Api/CurveApi.md#curvegetgaugetypeshistorical) | **GET** /dapps/curve/gaugetypes/historical | GaugeTypes (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightVotesHistorical**](docs/Api/CurveApi.md#curvegetgaugeweightvoteshistorical) | **GET** /dapps/curve/gaugeweightvotes/historical | GaugeWeightVotes (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugeweightshistorical) | **GET** /dapps/curve/gaugeweights/historical | GaugeWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeWithdrawsHistorical**](docs/Api/CurveApi.md#curvegetgaugewithdrawshistorical) | **GET** /dapps/curve/gaugewithdraws/historical | GaugeWithdraws (historical) 🔥
*CurveApi* | [**curveGetGaugesHistorical**](docs/Api/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) 🔥
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/Api/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyvolumes/historical | HourlyVolumes (historical) 🔥
*CurveApi* | [**curveGetLpTokensHistorical**](docs/Api/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lptokens/historical | LpTokens (historical) 🔥
*CurveApi* | [**curveGetPoolsHistorical**](docs/Api/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalVotesHistorical**](docs/Api/CurveApi.md#curvegetproposalvoteshistorical) | **GET** /dapps/curve/proposalvotes/historical | ProposalVotes (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/Api/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeliquidityevents/historical | RemoveLiquidityEvents (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeliquidityoneevents/historical | RemoveLiquidityOneEvents (historical) 🔥
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/Api/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemstates/historical | SystemStates (historical) 🔥
*CurveApi* | [**curveGetTokensHistorical**](docs/Api/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/Api/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferownershipevents/historical | TransferOwnershipEvents (historical) 🔥
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/Api/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingcoins/historical | UnderlyingCoins (historical) 🔥
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/Api/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingapps/historical | VotingApps (historical) 🔥
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/Api/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyvolumes/historical | WeeklyVolumes (historical) 🔥
*DexApi* | [**dexGetBatchsHistorical**](docs/Api/DexApi.md#dexgetbatchshistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
*DexApi* | [**dexGetDepositsHistorical**](docs/Api/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
*DexApi* | [**dexGetOrdersHistorical**](docs/Api/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
*DexApi* | [**dexGetPricesHistorical**](docs/Api/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
*DexApi* | [**dexGetSolutionsHistorical**](docs/Api/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
*DexApi* | [**dexGetStatssHistorical**](docs/Api/DexApi.md#dexgetstatsshistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
*DexApi* | [**dexGetTokensHistorical**](docs/Api/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/Api/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/Api/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
*DexApi* | [**dexGetWithdrawRequestsHistorical**](docs/Api/DexApi.md#dexgetwithdrawrequestshistorical) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
*DexApi* | [**dexGetWithdrawsHistorical**](docs/Api/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/Api/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/Api/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/Api/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
*SushiswapApi* | [**sushiswapGetDayDatasHistorical**](docs/Api/SushiswapApi.md#sushiswapgetdaydatashistorical) | **GET** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetFactorysHistorical**](docs/Api/SushiswapApi.md#sushiswapgetfactoryshistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
*SushiswapApi* | [**sushiswapGetHourDatasHistorical**](docs/Api/SushiswapApi.md#sushiswapgethourdatashistorical) | **GET** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairDayDatasHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpairdaydatashistorical) | **GET** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairHourDatasHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpairhourdatashistorical) | **GET** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/Api/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/Api/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDayDatasHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokendaydatashistorical) | **GET** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/Api/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/Api/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/Api/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBundleV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getbundlev2shistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBurnV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getburnv2shistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotv2shistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionv2shistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetMintV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getmintv2shistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairDayDataV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpairdaydatav2shistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairHourDataV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpairhourdatav2shistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpairv2shistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/Api/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getswapv2shistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/Api/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenDayDataV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokendaydatav2shistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokenv2shistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/Api/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettransactionv2shistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapDayDataV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getuniswapdaydatav2shistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapFactoryV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getuniswapfactoryv2shistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUserV2sHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getuserv2shistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundleV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getbundlev3shistorical) | **GET** /dapps/uniswapv3/bundlev3s/historical | BundleV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBurnV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getburnv3shistorical) | **GET** /dapps/uniswapv3/burnv3s/historical | BurnV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getfactoryv3shistorical) | **GET** /dapps/uniswapv3/factoryv3s/historical | FactoryV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getmintv3shistorical) | **GET** /dapps/uniswapv3/mintv3s/historical | MintV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetPoolDayDataV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpooldaydatav3shistorical) | **GET** /dapps/uniswapv3/pooldaydatav3s/historical | PoolDayDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolHourDataV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolhourdatav3shistorical) | **GET** /dapps/uniswapv3/poolhourdatav3s/historical | PoolHourDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolv3shistorical) | **GET** /dapps/uniswapv3/poolv3s/historical | PoolV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPositionSnapshotV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionsnapshotv3shistorical) | **GET** /dapps/uniswapv3/positionsnapshotv3s/historical | PositionSnapshotV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionv3shistorical) | **GET** /dapps/uniswapv3/positionv3s/historical | PositionV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getswapv3shistorical) | **GET** /dapps/uniswapv3/swapv3s/historical | SwapV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTickDayDataV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettickdaydatav3shistorical) | **GET** /dapps/uniswapv3/tickdaydatav3s/historical | TickDayDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettickv3shistorical) | **GET** /dapps/uniswapv3/tickv3s/historical | TickV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokenHourDataV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenhourdatav3shistorical) | **GET** /dapps/uniswapv3/tokenhourdatav3s/historical | TokenHourDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DayDatasHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenv3daydatashistorical) | **GET** /dapps/uniswapv3/tokenv3daydatas/historical | TokenV3DayDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenv3shistorical) | **GET** /dapps/uniswapv3/tokenv3s/historical | TokenV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTransactionV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettransactionv3shistorical) | **GET** /dapps/uniswapv3/transactionv3s/historical | TransactionV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetUniswapDayDataV3sHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getuniswapdaydatav3shistorical) | **GET** /dapps/uniswapv3/uniswapdaydatav3s/historical | UniswapDayDataV3s (historical) 🔥

## Models

- [CowOrderDTO](docs/Model/CowOrderDTO.md)
- [CowSettlementDTO](docs/Model/CowSettlementDTO.md)
- [CowTokenDTO](docs/Model/CowTokenDTO.md)
- [CowTradeDTO](docs/Model/CowTradeDTO.md)
- [CowUserDTO](docs/Model/CowUserDTO.md)
- [CurveAccountDTO](docs/Model/CurveAccountDTO.md)
- [CurveAddLiquidityEventDTO](docs/Model/CurveAddLiquidityEventDTO.md)
- [CurveAdminFeeChangeLogDTO](docs/Model/CurveAdminFeeChangeLogDTO.md)
- [CurveAmplificationCoeffChangeLogDTO](docs/Model/CurveAmplificationCoeffChangeLogDTO.md)
- [CurveCoinDTO](docs/Model/CurveCoinDTO.md)
- [CurveContractDTO](docs/Model/CurveContractDTO.md)
- [CurveContractVersionDTO](docs/Model/CurveContractVersionDTO.md)
- [CurveDailyVolumeDTO](docs/Model/CurveDailyVolumeDTO.md)
- [CurveExchangeDTO](docs/Model/CurveExchangeDTO.md)
- [CurveFeeChangeLogDTO](docs/Model/CurveFeeChangeLogDTO.md)
- [CurveGaugeDTO](docs/Model/CurveGaugeDTO.md)
- [CurveGaugeDepositDTO](docs/Model/CurveGaugeDepositDTO.md)
- [CurveGaugeLiquidityDTO](docs/Model/CurveGaugeLiquidityDTO.md)
- [CurveGaugeTotalWeightDTO](docs/Model/CurveGaugeTotalWeightDTO.md)
- [CurveGaugeTypeDTO](docs/Model/CurveGaugeTypeDTO.md)
- [CurveGaugeTypeWeightDTO](docs/Model/CurveGaugeTypeWeightDTO.md)
- [CurveGaugeWeightDTO](docs/Model/CurveGaugeWeightDTO.md)
- [CurveGaugeWeightVoteDTO](docs/Model/CurveGaugeWeightVoteDTO.md)
- [CurveGaugeWithdrawDTO](docs/Model/CurveGaugeWithdrawDTO.md)
- [CurveHourlyVolumeDTO](docs/Model/CurveHourlyVolumeDTO.md)
- [CurveLpTokenDTO](docs/Model/CurveLpTokenDTO.md)
- [CurvePoolDTO](docs/Model/CurvePoolDTO.md)
- [CurveProposalDTO](docs/Model/CurveProposalDTO.md)
- [CurveProposalVoteDTO](docs/Model/CurveProposalVoteDTO.md)
- [CurveRemoveLiquidityEventDTO](docs/Model/CurveRemoveLiquidityEventDTO.md)
- [CurveRemoveLiquidityOneEventDTO](docs/Model/CurveRemoveLiquidityOneEventDTO.md)
- [CurveSystemStateDTO](docs/Model/CurveSystemStateDTO.md)
- [CurveTokenDTO](docs/Model/CurveTokenDTO.md)
- [CurveTransferOwnershipEventDTO](docs/Model/CurveTransferOwnershipEventDTO.md)
- [CurveUnderlyingCoinDTO](docs/Model/CurveUnderlyingCoinDTO.md)
- [CurveVotingAppDTO](docs/Model/CurveVotingAppDTO.md)
- [CurveWeeklyVolumeDTO](docs/Model/CurveWeeklyVolumeDTO.md)
- [DexBatchDTO](docs/Model/DexBatchDTO.md)
- [DexDepositDTO](docs/Model/DexDepositDTO.md)
- [DexOrderDTO](docs/Model/DexOrderDTO.md)
- [DexPriceDTO](docs/Model/DexPriceDTO.md)
- [DexSolutionDTO](docs/Model/DexSolutionDTO.md)
- [DexStatsDTO](docs/Model/DexStatsDTO.md)
- [DexTokenDTO](docs/Model/DexTokenDTO.md)
- [DexTradeDTO](docs/Model/DexTradeDTO.md)
- [DexUserDTO](docs/Model/DexUserDTO.md)
- [DexWithdrawDTO](docs/Model/DexWithdrawDTO.md)
- [DexWithdrawRequestDTO](docs/Model/DexWithdrawRequestDTO.md)
- [NumericsBigInteger](docs/Model/NumericsBigInteger.md)
- [SushiswapBundleDTO](docs/Model/SushiswapBundleDTO.md)
- [SushiswapBurnDTO](docs/Model/SushiswapBurnDTO.md)
- [SushiswapDayDataDTO](docs/Model/SushiswapDayDataDTO.md)
- [SushiswapFactoryDTO](docs/Model/SushiswapFactoryDTO.md)
- [SushiswapHourDataDTO](docs/Model/SushiswapHourDataDTO.md)
- [SushiswapLiquidityPositionDTO](docs/Model/SushiswapLiquidityPositionDTO.md)
- [SushiswapLiquidityPositionSnapshotDTO](docs/Model/SushiswapLiquidityPositionSnapshotDTO.md)
- [SushiswapMintDTO](docs/Model/SushiswapMintDTO.md)
- [SushiswapPairDTO](docs/Model/SushiswapPairDTO.md)
- [SushiswapPairDayDataDTO](docs/Model/SushiswapPairDayDataDTO.md)
- [SushiswapPairHourDataDTO](docs/Model/SushiswapPairHourDataDTO.md)
- [SushiswapSwapDTO](docs/Model/SushiswapSwapDTO.md)
- [SushiswapTokenDTO](docs/Model/SushiswapTokenDTO.md)
- [SushiswapTokenDayDataDTO](docs/Model/SushiswapTokenDayDataDTO.md)
- [SushiswapTransactionDTO](docs/Model/SushiswapTransactionDTO.md)
- [SushiswapUserDTO](docs/Model/SushiswapUserDTO.md)
- [TransactionsETradeAggressiveSide](docs/Model/TransactionsETradeAggressiveSide.md)
- [UniswapV2BundleV2DTO](docs/Model/UniswapV2BundleV2DTO.md)
- [UniswapV2BurnV2DTO](docs/Model/UniswapV2BurnV2DTO.md)
- [UniswapV2LiquidityPositionSnapshotV2DTO](docs/Model/UniswapV2LiquidityPositionSnapshotV2DTO.md)
- [UniswapV2LiquidityPositionV2DTO](docs/Model/UniswapV2LiquidityPositionV2DTO.md)
- [UniswapV2MintV2DTO](docs/Model/UniswapV2MintV2DTO.md)
- [UniswapV2PairDayDataV2DTO](docs/Model/UniswapV2PairDayDataV2DTO.md)
- [UniswapV2PairHourDataV2DTO](docs/Model/UniswapV2PairHourDataV2DTO.md)
- [UniswapV2PairV2DTO](docs/Model/UniswapV2PairV2DTO.md)
- [UniswapV2SwapV2DTO](docs/Model/UniswapV2SwapV2DTO.md)
- [UniswapV2TokenDayDataV2DTO](docs/Model/UniswapV2TokenDayDataV2DTO.md)
- [UniswapV2TokenV2DTO](docs/Model/UniswapV2TokenV2DTO.md)
- [UniswapV2TransactionV2DTO](docs/Model/UniswapV2TransactionV2DTO.md)
- [UniswapV2UniswapDayDataV2DTO](docs/Model/UniswapV2UniswapDayDataV2DTO.md)
- [UniswapV2UniswapFactoryV2DTO](docs/Model/UniswapV2UniswapFactoryV2DTO.md)
- [UniswapV2UserV2DTO](docs/Model/UniswapV2UserV2DTO.md)
- [UniswapV3BundleV3DTO](docs/Model/UniswapV3BundleV3DTO.md)
- [UniswapV3BurnV3DTO](docs/Model/UniswapV3BurnV3DTO.md)
- [UniswapV3FactoryV3DTO](docs/Model/UniswapV3FactoryV3DTO.md)
- [UniswapV3MintV3DTO](docs/Model/UniswapV3MintV3DTO.md)
- [UniswapV3PoolDayDataV3DTO](docs/Model/UniswapV3PoolDayDataV3DTO.md)
- [UniswapV3PoolHourDataV3DTO](docs/Model/UniswapV3PoolHourDataV3DTO.md)
- [UniswapV3PoolV3DTO](docs/Model/UniswapV3PoolV3DTO.md)
- [UniswapV3PositionSnapshotV3DTO](docs/Model/UniswapV3PositionSnapshotV3DTO.md)
- [UniswapV3PositionV3DTO](docs/Model/UniswapV3PositionV3DTO.md)
- [UniswapV3SwapV3DTO](docs/Model/UniswapV3SwapV3DTO.md)
- [UniswapV3TickDayDataV3DTO](docs/Model/UniswapV3TickDayDataV3DTO.md)
- [UniswapV3TickV3DTO](docs/Model/UniswapV3TickV3DTO.md)
- [UniswapV3TokenHourDataV3DTO](docs/Model/UniswapV3TokenHourDataV3DTO.md)
- [UniswapV3TokenV3DTO](docs/Model/UniswapV3TokenV3DTO.md)
- [UniswapV3TokenV3DayDataDTO](docs/Model/UniswapV3TokenV3DayDataDTO.md)
- [UniswapV3TransactionV3DTO](docs/Model/UniswapV3TransactionV3DTO.md)
- [UniswapV3UniswapDayDataV3DTO](docs/Model/UniswapV3UniswapDayDataV3DTO.md)

## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@coinapi.io

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
