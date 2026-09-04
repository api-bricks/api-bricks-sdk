# OpenapiClient::MetadataApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_assets_asset_id_get**](MetadataApi.md#v1_assets_asset_id_get) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**v1_assets_get**](MetadataApi.md#v1_assets_get) | **GET** /v1/assets | List all assets |
| [**v1_assets_icons_size_get**](MetadataApi.md#v1_assets_icons_size_get) | **GET** /v1/assets/icons/{size} | List all asset icons |
| [**v1_chains_chain_id_get**](MetadataApi.md#v1_chains_chain_id_get) | **GET** /v1/chains/{chain_id} | List all chains by chain ID |
| [**v1_chains_get**](MetadataApi.md#v1_chains_get) | **GET** /v1/chains | List all blockchain chains |
| [**v1_exchanges_exchange_id_get**](MetadataApi.md#v1_exchanges_exchange_id_get) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**v1_exchanges_get**](MetadataApi.md#v1_exchanges_get) | **GET** /v1/exchanges | List all exchanges |
| [**v1_exchanges_icons_size_get**](MetadataApi.md#v1_exchanges_icons_size_get) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges |
| [**v1_symbols_exchange_id_active_get**](MetadataApi.md#v1_symbols_exchange_id_active_get) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols |
| [**v1_symbols_exchange_id_history_get**](MetadataApi.md#v1_symbols_exchange_id_history_get) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange. |
| [**v1_symbols_map_exchange_id_get**](MetadataApi.md#v1_symbols_map_exchange_id_get) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange |


## v1_assets_asset_id_get

> <Array<MarketDataMetadataAsset>> v1_assets_asset_id_get(asset_id)

List all assets by asset ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  # List all assets by asset ID
  result = api_instance.v1_assets_asset_id_get(asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_asset_id_get: #{e}"
end
```

#### Using the v1_assets_asset_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataAsset>>, Integer, Hash)> v1_assets_asset_id_get_with_http_info(asset_id)

```ruby
begin
  # List all assets by asset ID
  data, status_code, headers = api_instance.v1_assets_asset_id_get_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_asset_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |

### Return type

[**Array&lt;MarketDataMetadataAsset&gt;**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_assets_get

> <Array<MarketDataMetadataAsset>> v1_assets_get(opts)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
opts = {
  filter_asset_id: 'filter_asset_id_example', # String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
  filter_asset_type: 'filter_asset_type_example' # String | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK.
}

begin
  # List all assets
  result = api_instance.v1_assets_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_get: #{e}"
end
```

#### Using the v1_assets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataAsset>>, Integer, Hash)> v1_assets_get_with_http_info(opts)

```ruby
begin
  # List all assets
  data, status_code, headers = api_instance.v1_assets_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_asset_id** | **String** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] |
| **filter_asset_type** | **String** | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional] |

### Return type

[**Array&lt;MarketDataMetadataAsset&gt;**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_assets_icons_size_get

> <Array<MarketDataMetadataIcon>> v1_assets_icons_size_get(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
size = 56 # Integer | The size of the icons.

begin
  # List all asset icons
  result = api_instance.v1_assets_icons_size_get(size)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_icons_size_get: #{e}"
end
```

#### Using the v1_assets_icons_size_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataIcon>>, Integer, Hash)> v1_assets_icons_size_get_with_http_info(size)

```ruby
begin
  # List all asset icons
  data, status_code, headers = api_instance.v1_assets_icons_size_get_with_http_info(size)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataIcon>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_assets_icons_size_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The size of the icons. |  |

### Return type

[**Array&lt;MarketDataMetadataIcon&gt;**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_chains_chain_id_get

> <Array<MarketDataMetadataChain>> v1_chains_chain_id_get(chain_id)

List all chains by chain ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
chain_id = 'chain_id_example' # String | The chain ID.

begin
  # List all chains by chain ID
  result = api_instance.v1_chains_chain_id_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_chains_chain_id_get: #{e}"
end
```

#### Using the v1_chains_chain_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataChain>>, Integer, Hash)> v1_chains_chain_id_get_with_http_info(chain_id)

```ruby
begin
  # List all chains by chain ID
  data, status_code, headers = api_instance.v1_chains_chain_id_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataChain>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_chains_chain_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | The chain ID. |  |

### Return type

[**Array&lt;MarketDataMetadataChain&gt;**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_chains_get

> <Array<MarketDataMetadataChain>> v1_chains_get(opts)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
opts = {
  filter_chain_id: 'filter_chain_id_example' # String | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).
}

begin
  # List all blockchain chains
  result = api_instance.v1_chains_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_chains_get: #{e}"
end
```

#### Using the v1_chains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataChain>>, Integer, Hash)> v1_chains_get_with_http_info(opts)

```ruby
begin
  # List all blockchain chains
  data, status_code, headers = api_instance.v1_chains_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataChain>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_chains_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_chain_id** | **String** | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] |

### Return type

[**Array&lt;MarketDataMetadataChain&gt;**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_exchanges_exchange_id_get

> <Array<MarketDataMetadataExchange>> v1_exchanges_exchange_id_get(exchange_id)

List all exchanges by exchange_id

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
exchange_id = 'exchange_id_example' # String | The ID of the exchange.

begin
  # List all exchanges by exchange_id
  result = api_instance.v1_exchanges_exchange_id_get(exchange_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_exchange_id_get: #{e}"
end
```

#### Using the v1_exchanges_exchange_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataExchange>>, Integer, Hash)> v1_exchanges_exchange_id_get_with_http_info(exchange_id)

```ruby
begin
  # List all exchanges by exchange_id
  data, status_code, headers = api_instance.v1_exchanges_exchange_id_get_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataExchange>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_exchange_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The ID of the exchange. |  |

### Return type

[**Array&lt;MarketDataMetadataExchange&gt;**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_exchanges_get

> <Array<MarketDataMetadataExchange>> v1_exchanges_get(opts)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
opts = {
  filter_exchange_id: 'filter_exchange_id_example' # String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
}

begin
  # List all exchanges
  result = api_instance.v1_exchanges_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_get: #{e}"
end
```

#### Using the v1_exchanges_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataExchange>>, Integer, Hash)> v1_exchanges_get_with_http_info(opts)

```ruby
begin
  # List all exchanges
  data, status_code, headers = api_instance.v1_exchanges_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataExchange>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_exchange_id** | **String** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] |

### Return type

[**Array&lt;MarketDataMetadataExchange&gt;**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_exchanges_icons_size_get

> <Array<MarketDataMetadataIcon>> v1_exchanges_icons_size_get(size)

List of icons for the exchanges

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
size = 56 # Integer | The size of the icons.

begin
  # List of icons for the exchanges
  result = api_instance.v1_exchanges_icons_size_get(size)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_icons_size_get: #{e}"
end
```

#### Using the v1_exchanges_icons_size_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataIcon>>, Integer, Hash)> v1_exchanges_icons_size_get_with_http_info(size)

```ruby
begin
  # List of icons for the exchanges
  data, status_code, headers = api_instance.v1_exchanges_icons_size_get_with_http_info(size)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataIcon>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_icons_size_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The size of the icons. |  |

### Return type

[**Array&lt;MarketDataMetadataIcon&gt;**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_symbols_exchange_id_active_get

> <Array<MarketDataMetadataSymbol>> v1_symbols_exchange_id_active_get(exchange_id, opts)

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
exchange_id = 'exchange_id_example' # String | The ID of the exchange.
opts = {
  filter_symbol_id: 'filter_symbol_id_example', # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
  filter_asset_id: 'filter_asset_id_example' # String | The filter for asset ID.
}

begin
  # List all active symbols
  result = api_instance.v1_symbols_exchange_id_active_get(exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_exchange_id_active_get: #{e}"
end
```

#### Using the v1_symbols_exchange_id_active_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataSymbol>>, Integer, Hash)> v1_symbols_exchange_id_active_get_with_http_info(exchange_id, opts)

```ruby
begin
  # List all active symbols
  data, status_code, headers = api_instance.v1_symbols_exchange_id_active_get_with_http_info(exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataSymbol>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_exchange_id_active_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The ID of the exchange. |  |
| **filter_symbol_id** | **String** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] |
| **filter_asset_id** | **String** | The filter for asset ID. | [optional] |

### Return type

[**Array&lt;MarketDataMetadataSymbol&gt;**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_symbols_exchange_id_history_get

> <Array<MarketDataMetadataSymbol>> v1_symbols_exchange_id_history_get(exchange_id, opts)

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
exchange_id = 'exchange_id_example' # String | The ID of the exchange.
opts = {
  page: 56, # Integer | The page number for pagination (starts from 1).
  limit: 56 # Integer | Number of records to return per page.
}

begin
  # List all historical symbols for an exchange.
  result = api_instance.v1_symbols_exchange_id_history_get(exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_exchange_id_history_get: #{e}"
end
```

#### Using the v1_symbols_exchange_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MarketDataMetadataSymbol>>, Integer, Hash)> v1_symbols_exchange_id_history_get_with_http_info(exchange_id, opts)

```ruby
begin
  # List all historical symbols for an exchange.
  data, status_code, headers = api_instance.v1_symbols_exchange_id_history_get_with_http_info(exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MarketDataMetadataSymbol>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_exchange_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The ID of the exchange. |  |
| **page** | **Integer** | The page number for pagination (starts from 1). | [optional][default to 1] |
| **limit** | **Integer** | Number of records to return per page. | [optional][default to 100] |

### Return type

[**Array&lt;MarketDataMetadataSymbol&gt;**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_symbols_map_exchange_id_get

> <Array<V1SymbolMapping>> v1_symbols_map_exchange_id_get(exchange_id)

List active symbol mapping for the exchange

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetadataApi.new
exchange_id = 'exchange_id_example' # String | The ID of the exchange (from the Metadata -> Exchanges)

begin
  # List active symbol mapping for the exchange
  result = api_instance.v1_symbols_map_exchange_id_get(exchange_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_map_exchange_id_get: #{e}"
end
```

#### Using the v1_symbols_map_exchange_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1SymbolMapping>>, Integer, Hash)> v1_symbols_map_exchange_id_get_with_http_info(exchange_id)

```ruby
begin
  # List active symbol mapping for the exchange
  data, status_code, headers = api_instance.v1_symbols_map_exchange_id_get_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1SymbolMapping>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_map_exchange_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The ID of the exchange (from the Metadata -&gt; Exchanges) |  |

### Return type

[**Array&lt;V1SymbolMapping&gt;**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

