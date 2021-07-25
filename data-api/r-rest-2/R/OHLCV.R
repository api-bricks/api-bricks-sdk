#' Get valid period Ids for OHLCV requests
#'
#' @return
#' @export
#'
#' @examples
#' getOHLCVPeriods()
getOHLCVPeriods <- function() {

  endpoint <- paste0(OHLCV_ENDPOINT, "periods")

  executeRequest("GET", endpoint)

}

#' Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and symbol or asset pairs.
#' If asset pairs are used then timeseries in the response will contain data consolidated across all most legitimate SPOT markets which
#' contain both assets in any order.
#'
#' @param assetIdBase
#' @param assetIdQuote
#' @param periodId
#' @param includeEmptyItems
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getLatestOHLCV("BITSTAMP_SPOT_BTC_USD", "1MIN", limit = 25)
#' getLatestOHLCV("BTC", "USD", periodId = "1MIN", limit = 25)
getLatestOHLCV <- function(assetIdBase,
                           assetIdQuote = NULL,
                           periodId,
                           includeEmptyItems = FALSE,
                           limit = 100) {

  if(is.null(assetIdQuote)) {

    symbolName <- assetIdBase

    endpoint <- paste0(OHLCV_ENDPOINT, assetIdBase, "/latest")

  } else {

    symbolName <- paste0(assetIdBase, "_", assetIdQuote)

    endpoint <- paste0(OHLCV_ENDPOINT, assetIdBase, "/", assetIdQuote, "/latest")

  }

  xtsData <- executeXtsRequest("GET", endpoint, params = list("period_id" = periodId, "limit" = as.character(limit), "include_empty_items" = includeEmptyItems))

  data <- renameOHLCVColumns(xtsData, symbolName)

  assign(symbolName, data, envir = .GlobalEnv)

  symbolName

}

#' Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and symbol or asset pairs.
#' If asset pairs are used then timeseries in the response will contain data consolidated across all most legitimate SPOT
#' markets which contain both assets in any order..
#'
#' @param assetIdBase
#' @param assetIdQuote
#' @param periodId
#' @param timeStart
#' @param timeEnd
#' @param includeEmptyItems
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getHistoricalOHLCV("BTC", "USD", periodId = "1MIN", timeStart = "2016-01-01T00:00:00", limit = 25)
getHistoricalOHLCV <- function(assetIdBase,
                               assetIdQuote = NULL,
                               periodId,
                               timeStart,
                               timeEnd = NULL,
                               includeEmptyItems = FALSE,
                               limit = 100) {

  if(is.null(assetIdQuote)) {

    symbolName <- assetIdBase

    endpoint <- paste0(OHLCV_ENDPOINT, assetIdBase, "/history")

  } else {

    symbolName <- paste0(assetIdBase, "_", assetIdQuote)

    endpoint <- paste0(OHLCV_ENDPOINT, assetIdBase, "/", assetIdQuote, "/history")

  }

  if(is.null(timeEnd)) {

    xtsData <- executeXtsRequest("GET", endpoint, params = list("period_id" = periodId, "time_start" = timeStart, "limit" = as.character(limit), "include_empty_items" = includeEmptyItems))

  } else {

    xtsDate <- executeXtsRequest("GET", endpoint, params = list("period_id" = periodId, "time_start" = timeStart, "time_end" = timeEnd, "limit" = as.character(limit), "include_empty_items" = includeEmptyItems))

  }

  data <- renameOHLCVColumns(xtsData, symbolName)

  assign(symbolName, data, envir = .GlobalEnv)

  symbolName

}
