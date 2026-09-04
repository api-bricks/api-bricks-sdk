# CoinAPI Market Data REST API API Client


Cryptocurrency market data: metadata, quotes, books, trades, OHLCV, rates, metrics, options.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASExchangeRatesApi api = new OASExchangeRatesApi();
OASClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'assetIdBase' => 'null',
    'assetIdQuote' => 'null',
    'r_time' => 'null'
};

try {
    // cross your fingers
    OASV1ExchangeRate result = api.getSpecificRate(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://rest.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASExchangeRatesApi* | [**getSpecificRate**](OASExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
*OASExchangeRatesApi* | [**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](OASExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
*OASExchangeRatesApi* | [**v1ExchangerateAssetIdBaseGet**](OASExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
*OASExchangeRatesApi* | [**v1ExchangerateHistoryPeriodsGet**](OASExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods
*OASMetadataApi* | [**v1AssetsAssetIdGet**](OASMetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
*OASMetadataApi* | [**v1AssetsGet**](OASMetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
*OASMetadataApi* | [**v1AssetsIconsSizeGet**](OASMetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
*OASMetadataApi* | [**v1ChainsChainIdGet**](OASMetadataApi.md#v1ChainsChainIdGet) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
*OASMetadataApi* | [**v1ChainsGet**](OASMetadataApi.md#v1ChainsGet) | **GET** /v1/chains | List all blockchain chains
*OASMetadataApi* | [**v1ExchangesExchangeIdGet**](OASMetadataApi.md#v1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
*OASMetadataApi* | [**v1ExchangesGet**](OASMetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
*OASMetadataApi* | [**v1ExchangesIconsSizeGet**](OASMetadataApi.md#v1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
*OASMetadataApi* | [**v1SymbolsExchangeIdActiveGet**](OASMetadataApi.md#v1SymbolsExchangeIdActiveGet) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
*OASMetadataApi* | [**v1SymbolsExchangeIdHistoryGet**](OASMetadataApi.md#v1SymbolsExchangeIdHistoryGet) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
*OASMetadataApi* | [**v1SymbolsMapExchangeIdGet**](OASMetadataApi.md#v1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange
*OASMetricsV1Api* | [**v1MetricsAssetCurrentGet**](OASMetricsV1Api.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
*OASMetricsV1Api* | [**v1MetricsAssetHistoryGet**](OASMetricsV1Api.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
*OASMetricsV1Api* | [**v1MetricsAssetListingGet**](OASMetricsV1Api.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
*OASMetricsV1Api* | [**v1MetricsExchangeCurrentGet**](OASMetricsV1Api.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
*OASMetricsV1Api* | [**v1MetricsExchangeHistoryGet**](OASMetricsV1Api.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
*OASMetricsV1Api* | [**v1MetricsExchangeListingGet**](OASMetricsV1Api.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
*OASMetricsV1Api* | [**v1MetricsListingGet**](OASMetricsV1Api.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
*OASMetricsV1Api* | [**v1MetricsSymbolCurrentGet**](OASMetricsV1Api.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
*OASMetricsV1Api* | [**v1MetricsSymbolHistoryGet**](OASMetricsV1Api.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
*OASMetricsV1Api* | [**v1MetricsSymbolListingGet**](OASMetricsV1Api.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol
*OASMetricsV2Api* | [**marketdataListMetricsV2AssetHistory**](OASMetricsV2Api.md#marketdataListMetricsV2AssetHistory) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
*OASMetricsV2Api* | [**marketdataListMetricsV2AssetListing**](OASMetricsV2Api.md#marketdataListMetricsV2AssetListing) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
*OASMetricsV2Api* | [**marketdataListMetricsV2ChainHistory**](OASMetricsV2Api.md#marketdataListMetricsV2ChainHistory) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
*OASMetricsV2Api* | [**marketdataListMetricsV2ChainListing**](OASMetricsV2Api.md#marketdataListMetricsV2ChainListing) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
*OASMetricsV2Api* | [**marketdataListMetricsV2ExchangeHistory**](OASMetricsV2Api.md#marketdataListMetricsV2ExchangeHistory) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
*OASMetricsV2Api* | [**marketdataListMetricsV2ExchangeListing**](OASMetricsV2Api.md#marketdataListMetricsV2ExchangeListing) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
*OASMetricsV2Api* | [**marketdataListMetricsV2Listing**](OASMetricsV2Api.md#marketdataListMetricsV2Listing) | **GET** /v2/metrics/listing | Listing of all supported metrics
*OASOHLCVApi* | [**v1OhlcvExchangesExchangeIdHistoryGet**](OASOHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
*OASOHLCVApi* | [**v1OhlcvPeriodsGet**](OASOHLCVApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
*OASOHLCVApi* | [**v1OhlcvSymbolIdHistoryGet**](OASOHLCVApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
*OASOHLCVApi* | [**v1OhlcvSymbolIdLatestGet**](OASOHLCVApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data
*OASOptionsApi* | [**v1OptionsExchangeIdCurrentGet**](OASOptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange
*OASOrderBookApi* | [**v1OrderbooksSymbolIdCurrentGet**](OASOrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
*OASOrderBookApi* | [**v1OrderbooksSymbolIdDepthCurrentGet**](OASOrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
*OASOrderBookApi* | [**v1OrderbooksSymbolIdHistoryGet**](OASOrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
*OASOrderBookL3Api* | [**v1Orderbooks3CurrentGet**](OASOrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
*OASOrderBookL3Api* | [**v1Orderbooks3SymbolIdCurrentGet**](OASOrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id
*OASQuotesApi* | [**v1QuotesCurrentGet**](OASQuotesApi.md#v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data
*OASQuotesApi* | [**v1QuotesLatestGet**](OASQuotesApi.md#v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data
*OASQuotesApi* | [**v1QuotesSymbolIdCurrentGet**](OASQuotesApi.md#v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
*OASQuotesApi* | [**v1QuotesSymbolIdHistoryGet**](OASQuotesApi.md#v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data
*OASQuotesApi* | [**v1QuotesSymbolIdLatestGet**](OASQuotesApi.md#v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol
*OASTradesApi* | [**v1TradesLatestGet**](OASTradesApi.md#v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
*OASTradesApi* | [**v1TradesSymbolIdHistoryGet**](OASTradesApi.md#v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
*OASTradesApi* | [**v1TradesSymbolIdLatestGet**](OASTradesApi.md#v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


## Documentation for Models

 - [OASMarketDataMetadataAsset](OASMarketDataMetadataAsset.md)
 - [OASMarketDataMetadataChain](OASMarketDataMetadataChain.md)
 - [OASMarketDataMetadataExchange](OASMarketDataMetadataExchange.md)
 - [OASMarketDataMetadataIcon](OASMarketDataMetadataIcon.md)
 - [OASMarketDataMetadataSymbol](OASMarketDataMetadataSymbol.md)
 - [OASOhlcvExchangeTimeseriesItem](OASOhlcvExchangeTimeseriesItem.md)
 - [OASV1ChainNetworkAddress](OASV1ChainNetworkAddress.md)
 - [OASV1ExchangeRate](OASV1ExchangeRate.md)
 - [OASV1ExchangeRates](OASV1ExchangeRates.md)
 - [OASV1ExchangeRatesRate](OASV1ExchangeRatesRate.md)
 - [OASV1ExchangeRatesTimeseriesItem](OASV1ExchangeRatesTimeseriesItem.md)
 - [OASV1GeneralData](OASV1GeneralData.md)
 - [OASV1LastTrade](OASV1LastTrade.md)
 - [OASV1ListingItem](OASV1ListingItem.md)
 - [OASV1Metric](OASV1Metric.md)
 - [OASV1MetricData](OASV1MetricData.md)
 - [OASV1MetricInfo](OASV1MetricInfo.md)
 - [OASV1OptionExchangeGroup](OASV1OptionExchangeGroup.md)
 - [OASV1OrderBook](OASV1OrderBook.md)
 - [OASV1OrderBookBase](OASV1OrderBookBase.md)
 - [OASV1OrderBookDepth](OASV1OrderBookDepth.md)
 - [OASV1Quote](OASV1Quote.md)
 - [OASV1QuoteTrade](OASV1QuoteTrade.md)
 - [OASV1Strike](OASV1Strike.md)
 - [OASV1SymbolMapping](OASV1SymbolMapping.md)
 - [OASV1TimeseriesItem](OASV1TimeseriesItem.md)
 - [OASV1TimeseriesPeriod](OASV1TimeseriesPeriod.md)
 - [OASV1Trade](OASV1Trade.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### APIKey

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

### JWT

- **Type**: HTTP Bearer Token authentication (JWT)


## Author

support@apibricks.io

