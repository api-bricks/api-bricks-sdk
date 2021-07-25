#' Get current order book snapshot for all or a specific symbol.
#'
#' @param symbol
#' @param filterSymbol
#' @param limitLevels
#'
#' @return
#' @export
#'
#' @examples
#' getOrderbook(symbol = "BITSTAMP_SPOT_BTC_USD", limitLevels = 1)
#' getOrderbook(filterSymbol = "BTC")
getOrderbook <- function(symbol = NULL,
                         filterSymbol = NULL,
                         limitLevels = 0) {

  if(is.null(symbol)) {

    endpoint <- paste0(ORDERBOOK_ENDPOINT, "current")

    p <- list("filter_symbol_id" = filterSymbol, "limit_levels" = limitLevels)

  } else {

    endpoint <- paste0(QUOTES_ENDPOINT, symbol, "/current")

    p <- list("limit_levels" = limitLevels)

  }

  executeRequest("GET", endpoint, params = p)

}

#' Get latest order book snapshots for a specific symbol, returned in time descending order.
#'
#' @param symbol
#' @param limitLevels
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getLatestOrderbook(symbol = "BITSTAMP_SPOT_BTC_USD", limitLevels = 1, limit = 25)
getLatestOrderbook <- function(symbol,
                               limitLevels = 0,
                               limit = 100) {

  endpoint <- paste0(ORDERBOOK_ENDPOINT, symbol, "/latest")

  executeRequest("GET", endpoint, params = list("limit" = limit, "limit_levels" = limitLevels))

}

#' Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.
#'
#' @param symbol
#' @param limitLevels
#' @param timeStart
#' @param timeEnd
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getHistoricalOrderbook(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", timeEnd = "2016-01-01T00:10:00", limitLevels = 1, limit = 25)
getHistoricalOrderbook <- function(symbol,
                                   limitLevels = 0,
                                   timeStart,
                                   timeEnd = NULL,
                                   limit = 100) {

  endpoint <- paste0(ORDERBOOK_ENDPOINT, symbol, "/history")

  p <- list("time_start" = timeStart, "time_end" = timeEnd, "limit" = limit, "limit_levels" = limitLevels)

  executeRequest("GET", endpoint, params = p)

}
