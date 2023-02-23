
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rcoinapi

<!-- badges: start -->
<!-- badges: end -->

R package for the CoinAPI.io REST API.

Requires an API key: <https://www.coinapi.io/pricing?apikey>

Documentation: <https://docs.coinapi.io/>

## Installation

<!-- You can install the released version of rcoinapi from [CRAN](https://CRAN.R-project.org) with: -->
<!-- ``` r -->
<!-- install.packages("rcoinapi") -->
<!-- ``` -->

You can install the development version from
[GitHub](https://github.com/) with:

``` r
install.packages("devtools")
library("devtools")
devtools::install_github("coinapi/coinapi-sdk", subdir="data-api/r-rest-2")
```

## Setup

Load the library

``` r
library(rcoinapi)
```

Set your API key (Get your API key at
<https://www.coinapi.io/pricing?apikey>)

``` r
setApiKey("XXXXXXXXXXXXXXX")
```

## Usage

# Metadata

List all Exchanges, with details

``` r
getExchanges()
getExchanges("FTX")
```

List all Exchange Icons

``` r
getExchangeIcons(32)
```

List all Assets

``` r
getAssets()
getAssets("BTC")
```

List all Asset Icons

``` r
getAssetIcons(32)
```

List all Symbols

``` r
getCryptoSymbols()
getCryptoSymbols(filterSymbolId = "BTC")
getCryptoSymbols(filterSymbolId = "BTC", filterAssetId = "USD")
getCryptoSymbols(filterSymbolId = "BTC", filterAssetId = "USD", exchangeId = "FTX")
```

# Exchange Rates

Get exchange rate between pair of requested assets at specific or
current time.

``` r
getExchangeRate("BTC", "USD")
```

Get the current exchange rate between requested asset and all other
assets.

``` r
getAllExchangeRates("BTC")
```

Get valid periods for historical exchange rates queries

``` r
getHistoricalExchangeRatePeriods()
```

Get the historical exchange rates between two assets as an XTS object
for a given time period

``` r
getHistoricalExchangeRates("BTC", "USD", "1HRS", "2016-01-01T00:00:00", "2016-02-01T00:00:00", limit = 25)
```

# OHLCV

Get valid period ids for OHLCV requests

``` r
getOHLCVPeriods()
```

Get OHLCV latest timeseries data returned in time descending order. Data
can be requested by the period and symbol or asset pairs. If asset pairs
are used then timeseries in the response will contain data consolidated
across all most legitimate SPOT markets which contain both assets in any
order.

``` r
getLatestOHLCV("BITSTAMP_SPOT_BTC_USD", periodId = "1MIN", limit = 25)
getLatestOHLCV("BTC", "USD", periodId = "1MIN", limit = 25)
```

Get OHLCV timeseries data returned in time ascending order. Data can be
requested by the period and symbol or asset pairs. If asset pairs are
used then timeseries in the response will contain data consolidated
across all most legitimate SPOT markets which contain both assets in any
order..

``` r
getHistoricalOHLCV("BTC", "USD", periodId = "1MIN", timeStart = "2016-01-01T00:00:00", limit = 25)
```

# Trades

Get latest trades from all symbols up to 1 minute ago or get latest
trades from a specific symbol without time limitation. Latest data is
always returned in time descending order.

``` r
getTrades()
getTrades(filterSymbol = "BTC", limit = 25)
getTrades(symbol = "BITSTAMP_SPOT_BTC_USD", limit = 25)
```

Get historical transactions from specific symbol, returned in time
ascending order.

``` r
getHistoricalTrades(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", limit = 25)
getHistoricalTrades(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", timeEnd = "2016-01-01T00:10:00", limit = 25)
```

# Quotes

Get current quotes for all symbols or for a specific symbol.

``` r
getQuotes()
getQuotes(symbol = "BITSTAMP_SPOT_BTC_USD")
getQuotes(filterSymbol = "BTC")
```

Get latest quote updates up to 1 minute ago or get updates for a
specific symbol without time limit. Latest data is always returned in
time descending order.

``` r
getLatestQuotes()
#' getLatestQuotes(symbol = "BITSTAMP_SPOT_BTC_USD")
#' getLatestQuotes(filterSymbol = "BTC")
```

Get historical quote updates within requested time range, returned in
time ascending order.

``` r
getHistoricalQuotes(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", timeEnd = "2016-01-01T00:10:00", limit = 25)
```

# Orderbook

Get current order book snapshot for all or a specific symbol.

``` r
getOrderbook(symbol = "BITSTAMP_SPOT_BTC_USD", limitLevels = 1)
getOrderbook(filterSymbol = "BTC")
```

Get latest order book snapshots for a specific symbol, returned in time
descending order.

``` r
getLatestOrderbook(symbol = "BITSTAMP_SPOT_BTC_USD", limitLevels = 1, limit = 25)
```

Get historical order book snapshots for a specific symbol within time
range, returned in time ascending order.

``` r
getHistoricalOrderbook(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", timeEnd = "2016-01-01T00:10:00", limitLevels = 1, limit = 25)
```

# OrderbookL3

Get current order book snapshot for all or a specific symbol.

``` r
getOrderbookL3(filterSymbol = "BTC", limitLevels = 1)
getOrderbookL3(symbol = "COINBASE_SPOT_BCH_USD", limitLevels = 1)
```
