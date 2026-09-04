# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.ExchangeRatesApi;

public class ExchangeRatesApiExample {

    public static void main(String[] args) {
        ExchangeRatesApi apiInstance = new ExchangeRatesApi();
        String assetIdBase = null; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
        String assetIdQuote = null; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
        String time = null; // String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
        try {
            V1ExchangeRate result = apiInstance.getSpecificRate(assetIdBase, assetIdQuote, time);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ExchangeRatesApi#getSpecificRate");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://rest.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ExchangeRatesApi* | [**getSpecificRate**](docs/ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](docs/ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
*ExchangeRatesApi* | [**v1ExchangerateAssetIdBaseGet**](docs/ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
*ExchangeRatesApi* | [**v1ExchangerateHistoryPeriodsGet**](docs/ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods
*MetadataApi* | [**v1AssetsAssetIdGet**](docs/MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
*MetadataApi* | [**v1AssetsGet**](docs/MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
*MetadataApi* | [**v1AssetsIconsSizeGet**](docs/MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
*MetadataApi* | [**v1ChainsChainIdGet**](docs/MetadataApi.md#v1ChainsChainIdGet) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
*MetadataApi* | [**v1ChainsGet**](docs/MetadataApi.md#v1ChainsGet) | **GET** /v1/chains | List all blockchain chains
*MetadataApi* | [**v1ExchangesExchangeIdGet**](docs/MetadataApi.md#v1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
*MetadataApi* | [**v1ExchangesGet**](docs/MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
*MetadataApi* | [**v1ExchangesIconsSizeGet**](docs/MetadataApi.md#v1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
*MetadataApi* | [**v1SymbolsExchangeIdActiveGet**](docs/MetadataApi.md#v1SymbolsExchangeIdActiveGet) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
*MetadataApi* | [**v1SymbolsExchangeIdHistoryGet**](docs/MetadataApi.md#v1SymbolsExchangeIdHistoryGet) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
*MetadataApi* | [**v1SymbolsMapExchangeIdGet**](docs/MetadataApi.md#v1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange
*MetricsV1Api* | [**v1MetricsAssetCurrentGet**](docs/MetricsV1Api.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
*MetricsV1Api* | [**v1MetricsAssetHistoryGet**](docs/MetricsV1Api.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
*MetricsV1Api* | [**v1MetricsAssetListingGet**](docs/MetricsV1Api.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
*MetricsV1Api* | [**v1MetricsExchangeCurrentGet**](docs/MetricsV1Api.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
*MetricsV1Api* | [**v1MetricsExchangeHistoryGet**](docs/MetricsV1Api.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
*MetricsV1Api* | [**v1MetricsExchangeListingGet**](docs/MetricsV1Api.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
*MetricsV1Api* | [**v1MetricsListingGet**](docs/MetricsV1Api.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
*MetricsV1Api* | [**v1MetricsSymbolCurrentGet**](docs/MetricsV1Api.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
*MetricsV1Api* | [**v1MetricsSymbolHistoryGet**](docs/MetricsV1Api.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
*MetricsV1Api* | [**v1MetricsSymbolListingGet**](docs/MetricsV1Api.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol
*MetricsV2Api* | [**marketdataListMetricsV2AssetHistory**](docs/MetricsV2Api.md#marketdataListMetricsV2AssetHistory) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
*MetricsV2Api* | [**marketdataListMetricsV2AssetListing**](docs/MetricsV2Api.md#marketdataListMetricsV2AssetListing) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
*MetricsV2Api* | [**marketdataListMetricsV2ChainHistory**](docs/MetricsV2Api.md#marketdataListMetricsV2ChainHistory) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
*MetricsV2Api* | [**marketdataListMetricsV2ChainListing**](docs/MetricsV2Api.md#marketdataListMetricsV2ChainListing) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
*MetricsV2Api* | [**marketdataListMetricsV2ExchangeHistory**](docs/MetricsV2Api.md#marketdataListMetricsV2ExchangeHistory) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
*MetricsV2Api* | [**marketdataListMetricsV2ExchangeListing**](docs/MetricsV2Api.md#marketdataListMetricsV2ExchangeListing) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
*MetricsV2Api* | [**marketdataListMetricsV2Listing**](docs/MetricsV2Api.md#marketdataListMetricsV2Listing) | **GET** /v2/metrics/listing | Listing of all supported metrics
*OHLCVApi* | [**v1OhlcvExchangesExchangeIdHistoryGet**](docs/OHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
*OHLCVApi* | [**v1OhlcvPeriodsGet**](docs/OHLCVApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
*OHLCVApi* | [**v1OhlcvSymbolIdHistoryGet**](docs/OHLCVApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
*OHLCVApi* | [**v1OhlcvSymbolIdLatestGet**](docs/OHLCVApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data
*OptionsApi* | [**v1OptionsExchangeIdCurrentGet**](docs/OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange
*OrderBookApi* | [**v1OrderbooksSymbolIdCurrentGet**](docs/OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
*OrderBookApi* | [**v1OrderbooksSymbolIdDepthCurrentGet**](docs/OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
*OrderBookApi* | [**v1OrderbooksSymbolIdHistoryGet**](docs/OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
*OrderBookL3Api* | [**v1Orderbooks3CurrentGet**](docs/OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
*OrderBookL3Api* | [**v1Orderbooks3SymbolIdCurrentGet**](docs/OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id
*QuotesApi* | [**v1QuotesCurrentGet**](docs/QuotesApi.md#v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data
*QuotesApi* | [**v1QuotesLatestGet**](docs/QuotesApi.md#v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data
*QuotesApi* | [**v1QuotesSymbolIdCurrentGet**](docs/QuotesApi.md#v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
*QuotesApi* | [**v1QuotesSymbolIdHistoryGet**](docs/QuotesApi.md#v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data
*QuotesApi* | [**v1QuotesSymbolIdLatestGet**](docs/QuotesApi.md#v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol
*TradesApi* | [**v1TradesLatestGet**](docs/TradesApi.md#v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
*TradesApi* | [**v1TradesSymbolIdHistoryGet**](docs/TradesApi.md#v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
*TradesApi* | [**v1TradesSymbolIdLatestGet**](docs/TradesApi.md#v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


## Documentation for Models

 - [MarketDataMetadataAsset](docs/MarketDataMetadataAsset.md)
 - [MarketDataMetadataChain](docs/MarketDataMetadataChain.md)
 - [MarketDataMetadataExchange](docs/MarketDataMetadataExchange.md)
 - [MarketDataMetadataIcon](docs/MarketDataMetadataIcon.md)
 - [MarketDataMetadataSymbol](docs/MarketDataMetadataSymbol.md)
 - [OhlcvExchangeTimeseriesItem](docs/OhlcvExchangeTimeseriesItem.md)
 - [V1ChainNetworkAddress](docs/V1ChainNetworkAddress.md)
 - [V1ExchangeRate](docs/V1ExchangeRate.md)
 - [V1ExchangeRates](docs/V1ExchangeRates.md)
 - [V1ExchangeRatesRate](docs/V1ExchangeRatesRate.md)
 - [V1ExchangeRatesTimeseriesItem](docs/V1ExchangeRatesTimeseriesItem.md)
 - [V1GeneralData](docs/V1GeneralData.md)
 - [V1LastTrade](docs/V1LastTrade.md)
 - [V1ListingItem](docs/V1ListingItem.md)
 - [V1Metric](docs/V1Metric.md)
 - [V1MetricData](docs/V1MetricData.md)
 - [V1MetricInfo](docs/V1MetricInfo.md)
 - [V1OptionExchangeGroup](docs/V1OptionExchangeGroup.md)
 - [V1OrderBook](docs/V1OrderBook.md)
 - [V1OrderBookBase](docs/V1OrderBookBase.md)
 - [V1OrderBookDepth](docs/V1OrderBookDepth.md)
 - [V1Quote](docs/V1Quote.md)
 - [V1QuoteTrade](docs/V1QuoteTrade.md)
 - [V1Strike](docs/V1Strike.md)
 - [V1SymbolMapping](docs/V1SymbolMapping.md)
 - [V1TimeseriesItem](docs/V1TimeseriesItem.md)
 - [V1TimeseriesPeriod](docs/V1TimeseriesPeriod.md)
 - [V1Trade](docs/V1Trade.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### APIKey

- **Type**: API key

- **API key parameter name**: Authorization
- **Location**: HTTP header

### JWT

- **Type**: HTTP Bearer Token authentication (JWT)


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@apibricks.io

