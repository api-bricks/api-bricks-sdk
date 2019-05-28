Initialise
```{r}
library(httr)
library(jsonlite)
```

Setup GET request to coinapi
```{r}
base     <- "https://rest.coinapi.io/"
endpoint <- "/v1/exchangerate/BTC?apikey="  # note the request is for aseets against BTC
api_key  <- "[your key]" 
```

Create query string
```{r}
call <- paste0(base, endpoint, api_key)
```

Retrieve data via GET call
```{r}
get_prices <- GET(call)
```

Returns class "response"
```{r}
class(get_prices)
```

Process into a data table
```{r}
get_prices_text <- content(get_prices, "text")  # Convert to "character"
get_prices_json <- fromJSON(get_prices_text, flatten = TRUE) # Flatten into list
```

List contains two objects:

1 - asset_id_base
2 - rates

```{r}
names(get_prices_json)
```

```{r}
get_prices_json$asset_id_base
head(get_prices_json$rates)
```
