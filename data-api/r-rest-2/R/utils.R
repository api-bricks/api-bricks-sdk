executeRequest <- function(method, path, params = NULL, body = NULL, retries = 0) {

  apiKey <- Sys.getenv("COIN_API_KEY")

  if(apiKey == "") stop("No API Key!! Please set CoinAPI key with setAPIKey(<yourkeygoeshere>)")

  url <- paste0(BASE_URL, path)
  switch (method,
    "GET" = res <- tryCatch(

      httr::GET(url,
             query = params,
             body,
             httr::add_headers(`X-CoinAPI-Key` = apiKey)
      ),

      error = function(e) e

    ),

    "POST" = res <- tryCatch(

      httr::GET(url,
                query = params,
                body,
                httr::add_headers(`X-CoinAPI-Key` = apiKey)
      ),

      error = function(e) e

    ),

    stop("Only 'GET' and 'POST' allowed")

  )

  httr::stop_for_status(res)

  parseJSONResponse(res)

}

executeXtsRequest <- function(method, path, params = NULL, body = NULL, retries = 0, indexBy = "time_period_start") {

  res <- executeRequest(method, path, params, body, retries)

  xts::xts(res, order.by = lubridate::as_datetime(res[,indexBy]))

}

renameOHLCVColumns <- function(xtsObject, symbolName) {

  if(ncol(xtsObject) == 8) {

    colnames(xtsObject) <- c("time_period_start",
                             "time_period_end",
                             "time_open",
                             "time_close",
                             paste0(symbolName, ".Open"),
                             paste0(symbolName, ".High"),
                             paste0(symbolName, ".Low"),
                             paste0(symbolName, ".Close"))

  } else {

    colnames(xtsObject) <- c("time_period_start",
                             "time_period_end",
                             "time_open",
                             "time_close",
                             paste0(symbolName, ".Open"),
                             paste0(symbolName, ".High"),
                             paste0(symbolName, ".Low"),
                             paste0(symbolName, ".Close"),
                             paste0(symbolName, ".Volume"),
                             "trades_count")

  }

  xtsObject <- xtsObject[,c(5:9)]

  storage.mode(xtsObject) <- "numeric"

  xtsObject

}

listToStringArray <- function(l) {

  stringArray <- ""

  for (item in l) {
    stringArray <- paste0(stringArray, item, ",")
  }

  substr(stringArray, 1, nchar(stringArray) - 1)

}

#' Set your API Key
#'
#' @param apiKey
#'
#' @return
#' @export
#'
#' @examples
#' setApiKey(XXXXXXXXXXXXXXXX)
setApiKey <- function(apiKey) {

  Sys.setenv(COIN_API_KEY = apiKey)

}

parseJSONResponse <- function(res) {

  resText <- httr::content(res, as = "text")

  jsonlite::fromJSON(resText, flatten = TRUE)

}
