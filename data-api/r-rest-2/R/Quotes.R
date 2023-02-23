#' Get current quotes for all symbols or for a specific symbol.
#'
#' @param symbol
#' @param filterSymbol
#'
#' @return
#' @export
#'
#' @examples
#' getQuotes()
#' getQuotes(symbol = "BITSTAMP_SPOT_BTC_USD")
#' getQuotes(filterSymbol = "BTC")
getQuotes <- function(symbol = NULL,
                      filterSymbol = NULL) {

  if(is.null(symbol)) {

    endpoint <- paste0(QUOTES_ENDPOINT, "current")

    executeRequest("GET", endpoint, params = list("filter_symbol_id" = filterSymbol))

  } else {

    endpoint <- paste0(QUOTES_ENDPOINT, symbol, "/current")

    executeRequest("GET", endpoint)

  }

}

#' Get latest quote updates up to 1 minute ago or get updates for a specific symbol without time limit.
#' Latest data is always returned in time descending order.
#'
#' @param symbol
#' @param filterSymbol
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getLatestQuotes()
#' getLatestQuotes(symbol = "BITSTAMP_SPOT_BTC_USD")
#' getLatestQuotes(filterSymbol = "BTC")
getLatestQuotes <- function(symbol = NULL,
                            filterSymbol = NULL,
                            limit = 100) {

  if(is.null(symbol)) {

    endpoint <- paste0(QUOTES_ENDPOINT, "latest")

    executeRequest("GET", endpoint, params = list("filter_symbol_id" = filterSymbol, "limit" = limit))

  } else {

    endpoint <- paste0(QUOTES_ENDPOINT, symbol, "/latest")

    executeRequest("GET", endpoint, params = list("limit" = limit))

  }

}

#' Get historical quote updates within requested time range, returned in time ascending order.
#'
#' @param symbol
#' @param timeStart
#' @param timeEnd
#' @param limit
#'
#' @return
#' @export
#'
#' @examples
#' getHistoricalQuotes(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", timeEnd = "2016-01-01T00:10:00", limit = 25)
getHistoricalQuotes <- function(symbol,
                                timeStart,
                                timeEnd = NULL,
                                limit = 100) {

  endpoint <- paste0(QUOTES_ENDPOINT, symbol, "/history")

  p <- list("time_start" = timeStart, "time_end" = timeEnd, "limit" = limit)

  executeXtsRequest("GET", endpoint, params = p, indexBy = "time_exchange")

}
