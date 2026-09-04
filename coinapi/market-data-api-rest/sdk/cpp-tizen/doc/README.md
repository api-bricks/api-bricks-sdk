# Documentation for CoinAPI Market Data REST API v1 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in CoinAPI Market Data REST API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://rest.coinapi.iohttps://rest.coinapi.io


### ExchangeRatesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*get specific rateSync* | *GET* /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate.
*get specific rateASync* | *GET* /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate.
*v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetSync* | *GET* /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data.
*v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetASync* | *GET* /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data.
*v1ExchangerateAssetIdBaseGetSync* | *GET* /v1/exchangerate/{asset_id_base} | Get all current rates.
*v1ExchangerateAssetIdBaseGetASync* | *GET* /v1/exchangerate/{asset_id_base} | Get all current rates.
*v1ExchangerateHistoryPeriodsGetSync* | *GET* /v1/exchangerate/history/periods | Timeseries periods.
*v1ExchangerateHistoryPeriodsGetASync* | *GET* /v1/exchangerate/history/periods | Timeseries periods.


### MetadataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1AssetsAssetIdGetSync* | *GET* /v1/assets/{asset_id} | List all assets by asset ID.
*v1AssetsAssetIdGetASync* | *GET* /v1/assets/{asset_id} | List all assets by asset ID.
*v1AssetsGetSync* | *GET* /v1/assets | List all assets.
*v1AssetsGetASync* | *GET* /v1/assets | List all assets.
*v1AssetsIconsSizeGetSync* | *GET* /v1/assets/icons/{size} | List all asset icons.
*v1AssetsIconsSizeGetASync* | *GET* /v1/assets/icons/{size} | List all asset icons.
*v1ChainsChainIdGetSync* | *GET* /v1/chains/{chain_id} | List all chains by chain ID.
*v1ChainsChainIdGetASync* | *GET* /v1/chains/{chain_id} | List all chains by chain ID.
*v1ChainsGetSync* | *GET* /v1/chains | List all blockchain chains.
*v1ChainsGetASync* | *GET* /v1/chains | List all blockchain chains.
*v1ExchangesExchangeIdGetSync* | *GET* /v1/exchanges/{exchange_id} | List all exchanges by exchange_id.
*v1ExchangesExchangeIdGetASync* | *GET* /v1/exchanges/{exchange_id} | List all exchanges by exchange_id.
*v1ExchangesGetSync* | *GET* /v1/exchanges | List all exchanges.
*v1ExchangesGetASync* | *GET* /v1/exchanges | List all exchanges.
*v1ExchangesIconsSizeGetSync* | *GET* /v1/exchanges/icons/{size} | List of icons for the exchanges.
*v1ExchangesIconsSizeGetASync* | *GET* /v1/exchanges/icons/{size} | List of icons for the exchanges.
*v1SymbolsExchangeIdActiveGetSync* | *GET* /v1/symbols/{exchange_id}/active | List all active symbols.
*v1SymbolsExchangeIdActiveGetASync* | *GET* /v1/symbols/{exchange_id}/active | List all active symbols.
*v1SymbolsExchangeIdHistoryGetSync* | *GET* /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange..
*v1SymbolsExchangeIdHistoryGetASync* | *GET* /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange..
*v1SymbolsMapExchangeIdGetSync* | *GET* /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange.
*v1SymbolsMapExchangeIdGetASync* | *GET* /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange.


### MetricsV1Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1MetricsAssetCurrentGetSync* | *GET* /v1/metrics/asset/current | Current metrics for given asset.
*v1MetricsAssetCurrentGetASync* | *GET* /v1/metrics/asset/current | Current metrics for given asset.
*v1MetricsAssetHistoryGetSync* | *GET* /v1/metrics/asset/history | Historical metrics for asset.
*v1MetricsAssetHistoryGetASync* | *GET* /v1/metrics/asset/history | Historical metrics for asset.
*v1MetricsAssetListingGetSync* | *GET* /v1/metrics/asset/listing | Listing of all supported metrics for asset.
*v1MetricsAssetListingGetASync* | *GET* /v1/metrics/asset/listing | Listing of all supported metrics for asset.
*v1MetricsExchangeCurrentGetSync* | *GET* /v1/metrics/exchange/current | Current metrics for given exchange.
*v1MetricsExchangeCurrentGetASync* | *GET* /v1/metrics/exchange/current | Current metrics for given exchange.
*v1MetricsExchangeHistoryGetSync* | *GET* /v1/metrics/exchange/history | Historical metrics for the exchange.
*v1MetricsExchangeHistoryGetASync* | *GET* /v1/metrics/exchange/history | Historical metrics for the exchange.
*v1MetricsExchangeListingGetSync* | *GET* /v1/metrics/exchange/listing | Listing of all supported exchange metrics.
*v1MetricsExchangeListingGetASync* | *GET* /v1/metrics/exchange/listing | Listing of all supported exchange metrics.
*v1MetricsListingGetSync* | *GET* /v1/metrics/listing | Listing of all supported metrics by CoinAPI.
*v1MetricsListingGetASync* | *GET* /v1/metrics/listing | Listing of all supported metrics by CoinAPI.
*v1MetricsSymbolCurrentGetSync* | *GET* /v1/metrics/symbol/current | Current metrics for given symbol.
*v1MetricsSymbolCurrentGetASync* | *GET* /v1/metrics/symbol/current | Current metrics for given symbol.
*v1MetricsSymbolHistoryGetSync* | *GET* /v1/metrics/symbol/history | Historical metrics for symbol.
*v1MetricsSymbolHistoryGetASync* | *GET* /v1/metrics/symbol/history | Historical metrics for symbol.
*v1MetricsSymbolListingGetSync* | *GET* /v1/metrics/symbol/listing | Listing of all supported metrics for symbol.
*v1MetricsSymbolListingGetASync* | *GET* /v1/metrics/symbol/listing | Listing of all supported metrics for symbol.


### MetricsV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*marketdataListMetricsV2AssetHistorySync* | *GET* /v2/metrics/asset/history | Historical metrics for the asset.
*marketdataListMetricsV2AssetHistoryASync* | *GET* /v2/metrics/asset/history | Historical metrics for the asset.
*marketdataListMetricsV2AssetListingSync* | *GET* /v2/metrics/asset/listing | Listing of metrics available for specific asset.
*marketdataListMetricsV2AssetListingASync* | *GET* /v2/metrics/asset/listing | Listing of metrics available for specific asset.
*marketdataListMetricsV2ChainHistorySync* | *GET* /v2/metrics/chain/history | Historical metrics for the chain.
*marketdataListMetricsV2ChainHistoryASync* | *GET* /v2/metrics/chain/history | Historical metrics for the chain.
*marketdataListMetricsV2ChainListingSync* | *GET* /v2/metrics/chain/listing | Listing of metrics available for specific chain.
*marketdataListMetricsV2ChainListingASync* | *GET* /v2/metrics/chain/listing | Listing of metrics available for specific chain.
*marketdataListMetricsV2ExchangeHistorySync* | *GET* /v2/metrics/exchange/history | Historical metrics for the exchange.
*marketdataListMetricsV2ExchangeHistoryASync* | *GET* /v2/metrics/exchange/history | Historical metrics for the exchange.
*marketdataListMetricsV2ExchangeListingSync* | *GET* /v2/metrics/exchange/listing | Listing of metrics available for specific exchange.
*marketdataListMetricsV2ExchangeListingASync* | *GET* /v2/metrics/exchange/listing | Listing of metrics available for specific exchange.
*marketdataListMetricsV2ListingSync* | *GET* /v2/metrics/listing | Listing of all supported metrics.
*marketdataListMetricsV2ListingASync* | *GET* /v2/metrics/listing | Listing of all supported metrics.


### OHLCVManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1OhlcvExchangesExchangeIdHistoryGetSync* | *GET* /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange.
*v1OhlcvExchangesExchangeIdHistoryGetASync* | *GET* /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange.
*v1OhlcvPeriodsGetSync* | *GET* /v1/ohlcv/periods | List all periods.
*v1OhlcvPeriodsGetASync* | *GET* /v1/ohlcv/periods | List all periods.
*v1OhlcvSymbolIdHistoryGetSync* | *GET* /v1/ohlcv/{symbol_id}/history | Historical data.
*v1OhlcvSymbolIdHistoryGetASync* | *GET* /v1/ohlcv/{symbol_id}/history | Historical data.
*v1OhlcvSymbolIdLatestGetSync* | *GET* /v1/ohlcv/{symbol_id}/latest | Latest data.
*v1OhlcvSymbolIdLatestGetASync* | *GET* /v1/ohlcv/{symbol_id}/latest | Latest data.


### OptionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1OptionsExchangeIdCurrentGetSync* | *GET* /v1/options/{exchange_id}/current | Current data by Exchange.
*v1OptionsExchangeIdCurrentGetASync* | *GET* /v1/options/{exchange_id}/current | Current data by Exchange.


### OrderBookManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1OrderbooksSymbolIdCurrentGetSync* | *GET* /v1/orderbooks/{symbol_id}/current | Get current order book.
*v1OrderbooksSymbolIdCurrentGetASync* | *GET* /v1/orderbooks/{symbol_id}/current | Get current order book.
*v1OrderbooksSymbolIdDepthCurrentGetSync* | *GET* /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book.
*v1OrderbooksSymbolIdDepthCurrentGetASync* | *GET* /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book.
*v1OrderbooksSymbolIdHistoryGetSync* | *GET* /v1/orderbooks/{symbol_id}/history | Historical data.
*v1OrderbooksSymbolIdHistoryGetASync* | *GET* /v1/orderbooks/{symbol_id}/history | Historical data.


### OrderBookL3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1Orderbooks3CurrentGetSync* | *GET* /v1/orderbooks3/current | Current order books.
*v1Orderbooks3CurrentGetASync* | *GET* /v1/orderbooks3/current | Current order books.
*v1Orderbooks3SymbolIdCurrentGetSync* | *GET* /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id.
*v1Orderbooks3SymbolIdCurrentGetASync* | *GET* /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id.


### QuotesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1QuotesCurrentGetSync* | *GET* /v1/quotes/current | Current data.
*v1QuotesCurrentGetASync* | *GET* /v1/quotes/current | Current data.
*v1QuotesLatestGetSync* | *GET* /v1/quotes/latest | Latest data.
*v1QuotesLatestGetASync* | *GET* /v1/quotes/latest | Latest data.
*v1QuotesSymbolIdCurrentGetSync* | *GET* /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol.
*v1QuotesSymbolIdCurrentGetASync* | *GET* /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol.
*v1QuotesSymbolIdHistoryGetSync* | *GET* /v1/quotes/{symbol_id}/history | Historical data.
*v1QuotesSymbolIdHistoryGetASync* | *GET* /v1/quotes/{symbol_id}/history | Historical data.
*v1QuotesSymbolIdLatestGetSync* | *GET* /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol.
*v1QuotesSymbolIdLatestGetASync* | *GET* /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol.


### TradesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1TradesLatestGetSync* | *GET* /v1/trades/latest | Latest data.
*v1TradesLatestGetASync* | *GET* /v1/trades/latest | Latest data.
*v1TradesSymbolIdHistoryGetSync* | *GET* /v1/trades/{symbol_id}/history | Historical data.
*v1TradesSymbolIdHistoryGetASync* | *GET* /v1/trades/{symbol_id}/history | Historical data.
*v1TradesSymbolIdLatestGetSync* | *GET* /v1/trades/{symbol_id}/latest | Latest data by symbol_id.
*v1TradesSymbolIdLatestGetASync* | *GET* /v1/trades/{symbol_id}/latest | Latest data by symbol_id.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *MarketDataMetadata.Asset* | Represents an asset.
 *MarketDataMetadata.Chain* | Represents a blockchain chain.
 *MarketDataMetadata.Exchange* | Represents an exchange.
 *MarketDataMetadata.Icon* | Represents an icon.
 *MarketDataMetadata.Symbol* | Represents a symbol data model.
 *Ohlcv.ExchangeTimeseriesItem* | Represents a timeseries item with price and volume information.
 *V1.ChainNetworkAddress* | Contains information about assets' chain network addresses
 *V1.ExchangeRate* | Represents an exchange rate.
 *V1.ExchangeRates* | Represents exchange rates for a specific base asset.
 *V1.ExchangeRatesRate* | Represents an exchange rate within a collection of exchange rates.
 *V1.ExchangeRatesTimeseriesItem* | Represents an item in the exchange rate timeseries.
 *V1.GeneralData* | Class representation of general metric data. This class is an XML type with name \"general_data\" and inherits from the BaseCsvModel class.
 *V1.LastTrade* | Represents the last executed transaction.
 *V1.ListingItem* | Represents a listing data item.
 *V1.Metric* | Represents a metric.
 *V1.MetricData* | Represents a data model for metric data.
 *V1.MetricInfo* | Represents a metric information.
 *V1.OptionExchangeGroup* | Represents an option exchange group data model.
 *V1.OrderBook* | Represents an order book with additional information and functionality.
 *V1.OrderBookBase* | Represents the base model for order book data.
 *V1.OrderBookDepth* | Represents the depth of an order book.
 *V1.Quote* | Represents a quote data model.
 *V1.QuoteTrade* | Represents a quote trade data model.
 *V1.Strike* | Represents a strike within the option exchange group.
 *V1.SymbolMapping* | Represents symbol mapping information for exchange symbols.
 *V1.TimeseriesItem* | Represents a timeseries item with price and volume information.
 *V1.TimeseriesPeriod* | Represents a timeseries period used in exchange rate data.
 *V1.Trade* | Represents a trade executed on the exchange.

