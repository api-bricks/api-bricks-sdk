#' Get latest trades from all symbols up to 1 minute ago or get latest trades from a specific symbol without time limitation. Latest data is always returned in time descending order.
#'
#' @param symbol
#' @param limit
#' @param filterSymbol
#' @param include
#'
#' @return
#' @export
#'
#' @examples
#' getTrades()
#' getTrades(filterSymbol = "BTC", limit = 25)
#' getTrades(symbol = "BITSTAMP_SPOT_BTC_USD", limit = 25)
getTrades <- function(symbol = NULL,
                      limit = 100,
                      filterSymbol = NULL,
                      include = FALSE) {

  if(is.null(symbol)) {

    endpoint <- paste0(TRADES_ENDPOINT, "latest")

    if(is.null(filterSymbol)) {

      p <- list("limit" = limit)

    } else {

      p <- list("limit" = limit, "filter_symbol_id" = filterSymbol)

    }


  } else {

    endpoint <- paste0(TRADES_ENDPOINT, symbol, "/latest")

    p <- list("limit" = limit, "include_id" = include)

  }

  executeRequest("GET", endpoint, params = p)

}

#' Get historical transactions from specific symbol, returned in time ascending order.
#'
#' @param symbol
#' @param timeStart
#' @param timeEnd
#' @param limit
#' @param include
#'
#' @return
#' @export
#'
#' @examples
#' getHistoricalTrades(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", limit = 25)
#' getHistoricalTrades(symbol = "BITSTAMP_SPOT_BTC_USD", timeStart = "2016-01-01T00:00:00", timeEnd = "2016-01-01T00:10:00", limit = 25)
getHistoricalTrades <- function(symbol,
                                timeStart,
                                timeEnd = NULL,
                                limit = 100,
                                include = FALSE) {

  endpoint <- paste0(TRADES_ENDPOINT, symbol, "/history")

  p <- list("time_start" = timeStart, "time_end" = timeEnd, "limit" = limit, "include_id" = include)

  executeXtsRequest("GET", endpoint, params = p, indexBy = "time_exchange")

}
