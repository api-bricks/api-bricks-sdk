#' Get list of all exchanges provided by CoinAPI
#'
#' @param exchangeId
#'
#' @return
#' @export
#'
#' @examples
#' getExchanges()
#' getExchanges("FTX")
getExchanges <- function(exchangeId = NULL) {

  if(is.list(exchangeId)) {

    endpoint <- EXCHANGES_ENDPOINT

    executeRequest("GET", endpoint, params = list("filter_exchange_id" = listToStringArray(exchangeId)))

  } else {

    endpoint <- paste0(EXCHANGES_ENDPOINT, exchangeId)

    executeRequest("GET", endpoint)

  }

}

#' Get URLs of all exchange icons by size
#'
#' @param sizeText
#'
#' @return
#' @export
#'
#' @examples
#' getExchangeIcons(32)
getExchangeIcons <- function(sizeText) {

  endpoint <- paste0(EXCHANGES_ENDPOINT, "icons/", sizeText)

  executeRequest("GET", endpoint)

}

#' Get all Assets listed by CoinAPI
#'
#' @param assetId
#'
#' @return
#' @export
#'
#' @examples
#' getAssets()
#' getAssets("BTC")
getAssets <- function(assetId = NULL) {

  if(is.list(assetId)) {

    endpoint <- ASSETS_ENDPOINT

    executeRequest("GET", endpoint, params = list("filter_asset_id" = listToStringArray(assetId)))

  } else {

    endpoint <- paste0(ASSETS_ENDPOINT, assetId)

    executeRequest("GET", endpoint)

  }

}

#' Get icon URLs for all listed Assets
#'
#' @param sizeText
#'
#' @return
#' @export
#'
#' @examples
#' getAssetIcons(32)
getAssetIcons <- function(sizeText) {

  endpoint <- paste0(ASSETS_ENDPOINT, "icons/", sizeText)

  executeRequest("GET", endpoint)

}

#' Get all symbols listed by CoinAPI - named to not clash with Quantmod
#'
#' @param symbolId
#' @param exchangeId
#' @param assetId
#'
#' @return
#' @export
#'
#' @examples
#' getCryptoSymbols()
#' getCryptoSymbols(filterSymbolId = "BTC")
#' getCryptoSymbols(filterSymbolId = "BTC", filterAssetId = "USD")
#' getCryptoSymbols(filterSymbolId = "BTC", filterAssetId = "USD", exchangeId = "FTX")
getCryptoSymbols <- function(filterSymbolId = NULL,
                             exchangeId = NULL,
                             filterAssetId = NULL) {

  if(is.list(filterSymbolId) & is.list(exchangeId) & is.list(filterAssetId)) {

    endpoint <- SYMBOLS_ENDPOINT

    executeRequest("GET", endpoint, params = list("filter_symbol_id" = listToStringArray(filterSymbolId),
                                                  "filter_exchange_id" = listToStringArray(exchangeId),
                                                  "filter_asset_id" = listToStringArray(filterAssetId)))

  } else {

    endpoint <- paste0(SYMBOLS_ENDPOINT, exchangeId)

    executeRequest("GET", endpoint)

  }

}
