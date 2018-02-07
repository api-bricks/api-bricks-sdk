library(httr)
library(jsonlite)

## I got a free account at coinapi.io
## Free account provides 100 daily requests free.
## The next tier allows 1000 daily requests for US$79/month

base     <- "https://rest.coinapi.io/"
endpoint <- "/v1/exchangerate/BTC?apikey="
api_key  <- "[your key]"

## Create 
call <- paste0(base, endpoint, api_key)
# call
## Retrieve data via GET call
get_prices <- GET(call)

## Returns class "response"
class(get_prices)

## Process into a data table
get_prices_text <- content(get_prices, "text")  # Convert to "character"
get_prices_json <- fromJSON(get_prices_text, flatten = TRUE) # Flatten into list

## List contains two objects:
## 1 - asset_id_base
## 2 - rates

rates <- get_prices_json$rates

head(rates)
