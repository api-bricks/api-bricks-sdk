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
#' getOrderbookL3(filterSymbol = "BTC", limitLevels = 1)
#' getOrderbookL3(symbol = "COINBASE_SPOT_BCH_USD", limitLevels = 1)
getOrderbookL3 <- function(symbol = NULL,
                           filterSymbol = NULL,
                           limitLevels = 0) {

  if(is.null(symbol)) {

    endpoint <- paste0(ORDERBOOKL3_ENDPOINT, "current")

    p <- list("filter_symbol_id" = filterSymbol, "limit_levels" = limitLevels)

  } else {

    endpoint <- paste0(QUOTES_ENDPOINT, symbol, "/current")

    p <- list("limit_levels" = limitLevels)

  }

  executeRequest("GET", endpoint, params = p)

}
