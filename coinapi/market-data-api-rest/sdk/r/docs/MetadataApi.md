# MetadataApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1AssetsAssetIdGet**](MetadataApi.md#V1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**V1AssetsGet**](MetadataApi.md#V1AssetsGet) | **GET** /v1/assets | List all assets
[**V1AssetsIconsSizeGet**](MetadataApi.md#V1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**V1ChainsChainIdGet**](MetadataApi.md#V1ChainsChainIdGet) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
[**V1ChainsGet**](MetadataApi.md#V1ChainsGet) | **GET** /v1/chains | List all blockchain chains
[**V1ExchangesExchangeIdGet**](MetadataApi.md#V1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**V1ExchangesGet**](MetadataApi.md#V1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
[**V1ExchangesIconsSizeGet**](MetadataApi.md#V1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**V1SymbolsExchangeIdActiveGet**](MetadataApi.md#V1SymbolsExchangeIdActiveGet) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
[**V1SymbolsExchangeIdHistoryGet**](MetadataApi.md#V1SymbolsExchangeIdHistoryGet) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
[**V1SymbolsMapExchangeIdGet**](MetadataApi.md#V1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange


# **V1AssetsAssetIdGet**
> array[MarketDataMetadataAsset] V1AssetsAssetIdGet(asset_id)

List all assets by asset ID

### Example
```R
library(openapi)

# List all assets by asset ID
#
# prepare function argument(s)
var_asset_id <- "asset_id_example" # character | The asset ID.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsAssetIdGet(var_asset_iddata_file = "result.txt")
result <- api_instance$V1AssetsAssetIdGet(var_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **character**| The asset ID. | 

### Return type

[**array[MarketDataMetadataAsset]**](MarketDataMetadata.Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1AssetsGet**
> array[MarketDataMetadataAsset] V1AssetsGet(filter_asset_id = var.filter_asset_id, filter_asset_type = var.filter_asset_type)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```R
library(openapi)

# List all assets
#
# prepare function argument(s)
var_filter_asset_id <- "filter_asset_id_example" # character | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (Optional)
var_filter_asset_type <- "filter_asset_type_example" # character | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsGet(filter_asset_id = var_filter_asset_id, filter_asset_type = var_filter_asset_typedata_file = "result.txt")
result <- api_instance$V1AssetsGet(filter_asset_id = var_filter_asset_id, filter_asset_type = var_filter_asset_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **character**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 
 **filter_asset_type** | **character**| Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional] 

### Return type

[**array[MarketDataMetadataAsset]**](MarketDataMetadata.Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1AssetsIconsSizeGet**
> array[MarketDataMetadataIcon] V1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```R
library(openapi)

# List all asset icons
#
# prepare function argument(s)
var_size <- 56 # integer | The size of the icons.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsIconsSizeGet(var_sizedata_file = "result.txt")
result <- api_instance$V1AssetsIconsSizeGet(var_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer**| The size of the icons. | 

### Return type

[**array[MarketDataMetadataIcon]**](MarketDataMetadata.Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ChainsChainIdGet**
> array[MarketDataMetadataChain] V1ChainsChainIdGet(chain_id)

List all chains by chain ID

### Example
```R
library(openapi)

# List all chains by chain ID
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | The chain ID.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ChainsChainIdGet(var_chain_iddata_file = "result.txt")
result <- api_instance$V1ChainsChainIdGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| The chain ID. | 

### Return type

[**array[MarketDataMetadataChain]**](MarketDataMetadata.Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ChainsGet**
> array[MarketDataMetadataChain] V1ChainsGet(filter_chain_id = var.filter_chain_id)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```R
library(openapi)

# List all blockchain chains
#
# prepare function argument(s)
var_filter_chain_id <- "filter_chain_id_example" # character | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ChainsGet(filter_chain_id = var_filter_chain_iddata_file = "result.txt")
result <- api_instance$V1ChainsGet(filter_chain_id = var_filter_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_chain_id** | **character**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] 

### Return type

[**array[MarketDataMetadataChain]**](MarketDataMetadata.Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangesExchangeIdGet**
> array[MarketDataMetadataExchange] V1ExchangesExchangeIdGet(exchange_id)

List all exchanges by exchange_id

### Example
```R
library(openapi)

# List all exchanges by exchange_id
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesExchangeIdGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1ExchangesExchangeIdGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange. | 

### Return type

[**array[MarketDataMetadataExchange]**](MarketDataMetadata.Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangesGet**
> array[MarketDataMetadataExchange] V1ExchangesGet(filter_exchange_id = var.filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```R
library(openapi)

# List all exchanges
#
# prepare function argument(s)
var_filter_exchange_id <- "filter_exchange_id_example" # character | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesGet(filter_exchange_id = var_filter_exchange_iddata_file = "result.txt")
result <- api_instance$V1ExchangesGet(filter_exchange_id = var_filter_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **character**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**array[MarketDataMetadataExchange]**](MarketDataMetadata.Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangesIconsSizeGet**
> array[MarketDataMetadataIcon] V1ExchangesIconsSizeGet(size)

List of icons for the exchanges

### Example
```R
library(openapi)

# List of icons for the exchanges
#
# prepare function argument(s)
var_size <- 56 # integer | The size of the icons.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesIconsSizeGet(var_sizedata_file = "result.txt")
result <- api_instance$V1ExchangesIconsSizeGet(var_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer**| The size of the icons. | 

### Return type

[**array[MarketDataMetadataIcon]**](MarketDataMetadata.Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsExchangeIdActiveGet**
> array[MarketDataMetadataSymbol] V1SymbolsExchangeIdActiveGet(exchange_id, filter_symbol_id = var.filter_symbol_id, filter_asset_id = var.filter_asset_id)

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Example
```R
library(openapi)

# List all active symbols
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange.
var_filter_symbol_id <- "filter_symbol_id_example" # character | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (Optional)
var_filter_asset_id <- "filter_asset_id_example" # character | The filter for asset ID. (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsExchangeIdActiveGet(var_exchange_id, filter_symbol_id = var_filter_symbol_id, filter_asset_id = var_filter_asset_iddata_file = "result.txt")
result <- api_instance$V1SymbolsExchangeIdActiveGet(var_exchange_id, filter_symbol_id = var_filter_symbol_id, filter_asset_id = var_filter_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange. | 
 **filter_symbol_id** | **character**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] 
 **filter_asset_id** | **character**| The filter for asset ID. | [optional] 

### Return type

[**array[MarketDataMetadataSymbol]**](MarketDataMetadata.Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsExchangeIdHistoryGet**
> array[MarketDataMetadataSymbol] V1SymbolsExchangeIdHistoryGet(exchange_id, page = 1, limit = 100)

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.

### Example
```R
library(openapi)

# List all historical symbols for an exchange.
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange.
var_page <- 1 # integer | The page number for pagination (starts from 1). (Optional)
var_limit <- 100 # integer | Number of records to return per page. (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsExchangeIdHistoryGet(var_exchange_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1SymbolsExchangeIdHistoryGet(var_exchange_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange. | 
 **page** | **integer**| The page number for pagination (starts from 1). | [optional] [default to 1]
 **limit** | **integer**| Number of records to return per page. | [optional] [default to 100]

### Return type

[**array[MarketDataMetadataSymbol]**](MarketDataMetadata.Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsMapExchangeIdGet**
> array[V1SymbolMapping] V1SymbolsMapExchangeIdGet(exchange_id)

List active symbol mapping for the exchange

### Example
```R
library(openapi)

# List active symbol mapping for the exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange (from the Metadata -> Exchanges)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsMapExchangeIdGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1SymbolsMapExchangeIdGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Return type

[**array[V1SymbolMapping]**](v1.SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

