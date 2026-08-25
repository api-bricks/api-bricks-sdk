# OpenAPIClient-php

Cryptocurrency market data: metadata, quotes, books, trades, OHLCV, rates, metrics, options.

For more information, please visit [https://www.coinapi.io](https://www.coinapi.io).

## Installation & Usage

### Requirements

PHP 8.1 and later.

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



// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\ExchangeRatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id_base = 'asset_id_base_example'; // string | Requested exchange rate base asset identifier (from the Metadata -> Assets)
$asset_id_quote = 'asset_id_quote_example'; // string | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
$time = 'time_example'; // string | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)

try {
    $result = $apiInstance->getSpecificRate($asset_id_base, $asset_id_quote, $time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExchangeRatesApi->getSpecificRate: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://rest.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ExchangeRatesApi* | [**getSpecificRate**](docs/Api/ExchangeRatesApi.md#getspecificrate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](docs/Api/ExchangeRatesApi.md#v1exchangerateassetidbaseassetidquotehistoryget) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseGet**](docs/Api/ExchangeRatesApi.md#v1exchangerateassetidbaseget) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
*ExchangeRatesApi* | [**v1ExchangerateHistoryPeriodsGet**](docs/Api/ExchangeRatesApi.md#v1exchangeratehistoryperiodsget) | **GET** /v1/exchangerate/history/periods | Timeseries periods
*MetadataApi* | [**v1AssetsAssetIdGet**](docs/Api/MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
*MetadataApi* | [**v1AssetsGet**](docs/Api/MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets
*MetadataApi* | [**v1AssetsIconsSizeGet**](docs/Api/MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons
*MetadataApi* | [**v1ChainsChainIdGet**](docs/Api/MetadataApi.md#v1chainschainidget) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
*MetadataApi* | [**v1ChainsGet**](docs/Api/MetadataApi.md#v1chainsget) | **GET** /v1/chains | List all blockchain chains
*MetadataApi* | [**v1ExchangesExchangeIdGet**](docs/Api/MetadataApi.md#v1exchangesexchangeidget) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
*MetadataApi* | [**v1ExchangesGet**](docs/Api/MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List all exchanges
*MetadataApi* | [**v1ExchangesIconsSizeGet**](docs/Api/MetadataApi.md#v1exchangesiconssizeget) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
*MetadataApi* | [**v1SymbolsExchangeIdActiveGet**](docs/Api/MetadataApi.md#v1symbolsexchangeidactiveget) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
*MetadataApi* | [**v1SymbolsExchangeIdHistoryGet**](docs/Api/MetadataApi.md#v1symbolsexchangeidhistoryget) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
*MetadataApi* | [**v1SymbolsMapExchangeIdGet**](docs/Api/MetadataApi.md#v1symbolsmapexchangeidget) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange
*MetricsV1Api* | [**v1MetricsAssetCurrentGet**](docs/Api/MetricsV1Api.md#v1metricsassetcurrentget) | **GET** /v1/metrics/asset/current | Current metrics for given asset
*MetricsV1Api* | [**v1MetricsAssetHistoryGet**](docs/Api/MetricsV1Api.md#v1metricsassethistoryget) | **GET** /v1/metrics/asset/history | Historical metrics for asset
*MetricsV1Api* | [**v1MetricsAssetListingGet**](docs/Api/MetricsV1Api.md#v1metricsassetlistingget) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
*MetricsV1Api* | [**v1MetricsExchangeCurrentGet**](docs/Api/MetricsV1Api.md#v1metricsexchangecurrentget) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
*MetricsV1Api* | [**v1MetricsExchangeHistoryGet**](docs/Api/MetricsV1Api.md#v1metricsexchangehistoryget) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
*MetricsV1Api* | [**v1MetricsExchangeListingGet**](docs/Api/MetricsV1Api.md#v1metricsexchangelistingget) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
*MetricsV1Api* | [**v1MetricsListingGet**](docs/Api/MetricsV1Api.md#v1metricslistingget) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
*MetricsV1Api* | [**v1MetricsSymbolCurrentGet**](docs/Api/MetricsV1Api.md#v1metricssymbolcurrentget) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
*MetricsV1Api* | [**v1MetricsSymbolHistoryGet**](docs/Api/MetricsV1Api.md#v1metricssymbolhistoryget) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
*MetricsV1Api* | [**v1MetricsSymbolListingGet**](docs/Api/MetricsV1Api.md#v1metricssymbollistingget) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol
*MetricsV2Api* | [**marketdataListMetricsV2AssetHistory**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2assethistory) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
*MetricsV2Api* | [**marketdataListMetricsV2AssetListing**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2assetlisting) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
*MetricsV2Api* | [**marketdataListMetricsV2ChainHistory**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2chainhistory) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
*MetricsV2Api* | [**marketdataListMetricsV2ChainListing**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2chainlisting) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
*MetricsV2Api* | [**marketdataListMetricsV2ExchangeHistory**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2exchangehistory) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
*MetricsV2Api* | [**marketdataListMetricsV2ExchangeListing**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2exchangelisting) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
*MetricsV2Api* | [**marketdataListMetricsV2Listing**](docs/Api/MetricsV2Api.md#marketdatalistmetricsv2listing) | **GET** /v2/metrics/listing | Listing of all supported metrics
*OHLCVApi* | [**v1OhlcvExchangesExchangeIdHistoryGet**](docs/Api/OHLCVApi.md#v1ohlcvexchangesexchangeidhistoryget) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
*OHLCVApi* | [**v1OhlcvPeriodsGet**](docs/Api/OHLCVApi.md#v1ohlcvperiodsget) | **GET** /v1/ohlcv/periods | List all periods
*OHLCVApi* | [**v1OhlcvSymbolIdHistoryGet**](docs/Api/OHLCVApi.md#v1ohlcvsymbolidhistoryget) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
*OHLCVApi* | [**v1OhlcvSymbolIdLatestGet**](docs/Api/OHLCVApi.md#v1ohlcvsymbolidlatestget) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data
*OptionsApi* | [**v1OptionsExchangeIdCurrentGet**](docs/Api/OptionsApi.md#v1optionsexchangeidcurrentget) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange
*OrderBookApi* | [**v1OrderbooksSymbolIdCurrentGet**](docs/Api/OrderBookApi.md#v1orderbookssymbolidcurrentget) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
*OrderBookApi* | [**v1OrderbooksSymbolIdDepthCurrentGet**](docs/Api/OrderBookApi.md#v1orderbookssymboliddepthcurrentget) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
*OrderBookApi* | [**v1OrderbooksSymbolIdHistoryGet**](docs/Api/OrderBookApi.md#v1orderbookssymbolidhistoryget) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
*OrderBookL3Api* | [**v1Orderbooks3CurrentGet**](docs/Api/OrderBookL3Api.md#v1orderbooks3currentget) | **GET** /v1/orderbooks3/current | Current order books
*OrderBookL3Api* | [**v1Orderbooks3SymbolIdCurrentGet**](docs/Api/OrderBookL3Api.md#v1orderbooks3symbolidcurrentget) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id
*QuotesApi* | [**v1QuotesCurrentGet**](docs/Api/QuotesApi.md#v1quotescurrentget) | **GET** /v1/quotes/current | Current data
*QuotesApi* | [**v1QuotesLatestGet**](docs/Api/QuotesApi.md#v1quoteslatestget) | **GET** /v1/quotes/latest | Latest data
*QuotesApi* | [**v1QuotesSymbolIdCurrentGet**](docs/Api/QuotesApi.md#v1quotessymbolidcurrentget) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
*QuotesApi* | [**v1QuotesSymbolIdHistoryGet**](docs/Api/QuotesApi.md#v1quotessymbolidhistoryget) | **GET** /v1/quotes/{symbol_id}/history | Historical data
*QuotesApi* | [**v1QuotesSymbolIdLatestGet**](docs/Api/QuotesApi.md#v1quotessymbolidlatestget) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol
*TradesApi* | [**v1TradesLatestGet**](docs/Api/TradesApi.md#v1tradeslatestget) | **GET** /v1/trades/latest | Latest data
*TradesApi* | [**v1TradesSymbolIdHistoryGet**](docs/Api/TradesApi.md#v1tradessymbolidhistoryget) | **GET** /v1/trades/{symbol_id}/history | Historical data
*TradesApi* | [**v1TradesSymbolIdLatestGet**](docs/Api/TradesApi.md#v1tradessymbolidlatestget) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id

## Models

- [MarketDataMetadataAsset](docs/Model/MarketDataMetadataAsset.md)
- [MarketDataMetadataChain](docs/Model/MarketDataMetadataChain.md)
- [MarketDataMetadataExchange](docs/Model/MarketDataMetadataExchange.md)
- [MarketDataMetadataIcon](docs/Model/MarketDataMetadataIcon.md)
- [MarketDataMetadataSymbol](docs/Model/MarketDataMetadataSymbol.md)
- [OhlcvExchangeTimeseriesItem](docs/Model/OhlcvExchangeTimeseriesItem.md)
- [V1ChainNetworkAddress](docs/Model/V1ChainNetworkAddress.md)
- [V1ExchangeRate](docs/Model/V1ExchangeRate.md)
- [V1ExchangeRates](docs/Model/V1ExchangeRates.md)
- [V1ExchangeRatesRate](docs/Model/V1ExchangeRatesRate.md)
- [V1ExchangeRatesTimeseriesItem](docs/Model/V1ExchangeRatesTimeseriesItem.md)
- [V1GeneralData](docs/Model/V1GeneralData.md)
- [V1LastTrade](docs/Model/V1LastTrade.md)
- [V1ListingItem](docs/Model/V1ListingItem.md)
- [V1Metric](docs/Model/V1Metric.md)
- [V1MetricData](docs/Model/V1MetricData.md)
- [V1MetricInfo](docs/Model/V1MetricInfo.md)
- [V1OptionExchangeGroup](docs/Model/V1OptionExchangeGroup.md)
- [V1OrderBook](docs/Model/V1OrderBook.md)
- [V1OrderBookBase](docs/Model/V1OrderBookBase.md)
- [V1OrderBookDepth](docs/Model/V1OrderBookDepth.md)
- [V1Quote](docs/Model/V1Quote.md)
- [V1QuoteTrade](docs/Model/V1QuoteTrade.md)
- [V1Strike](docs/Model/V1Strike.md)
- [V1SymbolMapping](docs/Model/V1SymbolMapping.md)
- [V1TimeseriesItem](docs/Model/V1TimeseriesItem.md)
- [V1TimeseriesPeriod](docs/Model/V1TimeseriesPeriod.md)
- [V1Trade](docs/Model/V1Trade.md)

## Authorization

Authentication schemes defined for the API:
### APIKey

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


### JWT

- **Type**: Bearer authentication (JWT)

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@apibricks.io

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1`
    - Generator version: `7.25.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
