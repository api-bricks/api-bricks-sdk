#' Get exchange rate for a base/quote pair
#'
#' @param assetIdBase
#' @param assetIdQuote
#' @param time
#'
#' @return
#' @export
#'
#' @examples
#' getExchangeRate("BTC", "USD")
getExchangeRate <- function(assetIdBase,
                            assetIdQuote,
                            time = NULL) {

  endpoint <- paste0(EXCHANGERATE_ENDPOINT, assetIdBase, "/", assetIdQuote)

  if(is.null(time)) {

    executeRequest("GET", endpoint)

  } else {

    executeRequest("GET", endpoint, params = list("time" = time))

  }

}

#' Get all exchange rates for a symbol
#'
#' @param assetIdBase
#' @param invert
#' @param filter_asset_id
#'
#' @return
#' @export
#'
#' @examples
#' getAllExchangeRates("BTC")
getAllExchangeRates <- function(assetIdBase,
                                invert = FALSE,
                                filter_asset_id = NULL) {

  endpoint <- paste0(EXCHANGERATE_ENDPOINT, assetIdBase)

  if(invert) inv <- "true" else inv <- "false"

  if(is.null(filter_asset_id)) {

    executeRequest("GET", endpoint, params = list("invert" = inv))

  } else {

    executeRequest("GET", endpoint, params = list("invert" = inv, "filter_asset_id" = listToStringArray(filter_asset_id)))

  }

}

#' Get valid periods for historical exchange rates queries
#'
#' @return
#' @export
#'
#' @examples
#' getHIstoricalExchangeRatePeriods()
getHistoricalExchangeRatePeriods <- function() {

  endpoint <- paste0(EXCHANGERATE_ENDPOINT, "history/periods")

  executeRequest("GET", endpoint)

}

#' Get the historical exchange rates between two assets as an XTS object
#'
#' @param assetIdBase
#' @param assetIdQuote
#' @param periodId
#' @param timeStart
#' @param timeEnd
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getHistoricalExchangeRates("BTC", "USD", "1HRS", "2016-01-01T00:00:00", "2016-02-01T00:00:00", limit = 25)
getHistoricalExchangeRates <- function(assetIdBase,
                                       assetIdQuote,
                                       periodId,
                                       timeStart,
                                       timeEnd,
                                       limit = 100) {

  symbolName <- paste0(assetIdBase, "/", assetIdQuote)

  endpoint <- paste0(EXCHANGERATE_ENDPOINT, assetIdBase, "/", assetIdQuote, "/history")

  xtsData <- executeXtsRequest("GET", endpoint, params = list("period_id" = periodId, "time_start" = timeStart, "time_end" = timeEnd, "limit" = as.character(limit)))

  renameOHLCVColumns(xtsData, symbolName)

}
