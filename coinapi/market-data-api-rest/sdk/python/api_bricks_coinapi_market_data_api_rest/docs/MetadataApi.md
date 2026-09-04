# api_bricks_coinapi_market_data_api_rest.MetadataApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_assets_asset_id_get**](MetadataApi.md#v1_assets_asset_id_get) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1_assets_get**](MetadataApi.md#v1_assets_get) | **GET** /v1/assets | List all assets
[**v1_assets_icons_size_get**](MetadataApi.md#v1_assets_icons_size_get) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1_chains_chain_id_get**](MetadataApi.md#v1_chains_chain_id_get) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
[**v1_chains_get**](MetadataApi.md#v1_chains_get) | **GET** /v1/chains | List all blockchain chains
[**v1_exchanges_exchange_id_get**](MetadataApi.md#v1_exchanges_exchange_id_get) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1_exchanges_get**](MetadataApi.md#v1_exchanges_get) | **GET** /v1/exchanges | List all exchanges
[**v1_exchanges_icons_size_get**](MetadataApi.md#v1_exchanges_icons_size_get) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1_symbols_exchange_id_active_get**](MetadataApi.md#v1_symbols_exchange_id_active_get) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
[**v1_symbols_exchange_id_history_get**](MetadataApi.md#v1_symbols_exchange_id_history_get) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
[**v1_symbols_map_exchange_id_get**](MetadataApi.md#v1_symbols_map_exchange_id_get) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange


# **v1_assets_asset_id_get**
> List[MarketDataMetadataAsset] v1_assets_asset_id_get(asset_id)

List all assets by asset ID

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_asset import MarketDataMetadataAsset
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    asset_id = 'asset_id_example' # str | The asset ID.

    try:
        # List all assets by asset ID
        api_response = api_instance.v1_assets_asset_id_get(asset_id)
        print("The response of MetadataApi->v1_assets_asset_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_assets_asset_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **str**| The asset ID. | 

### Return type

[**List[MarketDataMetadataAsset]**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_get**
> List[MarketDataMetadataAsset] v1_assets_get(filter_asset_id=filter_asset_id, filter_asset_type=filter_asset_type)

List all assets

Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_asset import MarketDataMetadataAsset
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    filter_asset_id = 'filter_asset_id_example' # str | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)
    filter_asset_type = 'filter_asset_type_example' # str | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. (optional)

    try:
        # List all assets
        api_response = api_instance.v1_assets_get(filter_asset_id=filter_asset_id, filter_asset_type=filter_asset_type)
        print("The response of MetadataApi->v1_assets_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_assets_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **str**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 
 **filter_asset_type** | **str**| Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional] 

### Return type

[**List[MarketDataMetadataAsset]**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_icons_size_get**
> List[MarketDataMetadataIcon] v1_assets_icons_size_get(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_icon import MarketDataMetadataIcon
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    size = 56 # int | The size of the icons.

    try:
        # List all asset icons
        api_response = api_instance.v1_assets_icons_size_get(size)
        print("The response of MetadataApi->v1_assets_icons_size_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_assets_icons_size_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**List[MarketDataMetadataIcon]**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_chains_chain_id_get**
> List[MarketDataMetadataChain] v1_chains_chain_id_get(chain_id)

List all chains by chain ID

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_chain import MarketDataMetadataChain
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    chain_id = 'chain_id_example' # str | The chain ID.

    try:
        # List all chains by chain ID
        api_response = api_instance.v1_chains_chain_id_get(chain_id)
        print("The response of MetadataApi->v1_chains_chain_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_chains_chain_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **str**| The chain ID. | 

### Return type

[**List[MarketDataMetadataChain]**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_chains_get**
> List[MarketDataMetadataChain] v1_chains_get(filter_chain_id=filter_chain_id)

List all blockchain chains

Retrieves all blockchain chains supported by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_chain import MarketDataMetadataChain
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    filter_chain_id = 'filter_chain_id_example' # str | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). (optional)

    try:
        # List all blockchain chains
        api_response = api_instance.v1_chains_get(filter_chain_id=filter_chain_id)
        print("The response of MetadataApi->v1_chains_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_chains_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_chain_id** | **str**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] 

### Return type

[**List[MarketDataMetadataChain]**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_exchange_id_get**
> List[MarketDataMetadataExchange] v1_exchanges_exchange_id_get(exchange_id)

List all exchanges by exchange_id

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_exchange import MarketDataMetadataExchange
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    exchange_id = 'exchange_id_example' # str | The ID of the exchange.

    try:
        # List all exchanges by exchange_id
        api_response = api_instance.v1_exchanges_exchange_id_get(exchange_id)
        print("The response of MetadataApi->v1_exchanges_exchange_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_exchanges_exchange_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The ID of the exchange. | 

### Return type

[**List[MarketDataMetadataExchange]**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_get**
> List[MarketDataMetadataExchange] v1_exchanges_get(filter_exchange_id=filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_exchange import MarketDataMetadataExchange
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    filter_exchange_id = 'filter_exchange_id_example' # str | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

    try:
        # List all exchanges
        api_response = api_instance.v1_exchanges_get(filter_exchange_id=filter_exchange_id)
        print("The response of MetadataApi->v1_exchanges_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_exchanges_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **str**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**List[MarketDataMetadataExchange]**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchanges_icons_size_get**
> List[MarketDataMetadataIcon] v1_exchanges_icons_size_get(size)

List of icons for the exchanges

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_icon import MarketDataMetadataIcon
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    size = 56 # int | The size of the icons.

    try:
        # List of icons for the exchanges
        api_response = api_instance.v1_exchanges_icons_size_get(size)
        print("The response of MetadataApi->v1_exchanges_icons_size_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_exchanges_icons_size_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**List[MarketDataMetadataIcon]**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_exchange_id_active_get**
> List[MarketDataMetadataSymbol] v1_symbols_exchange_id_active_get(exchange_id, filter_symbol_id=filter_symbol_id, filter_asset_id=filter_asset_id)

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.
            
:::info
"price_precision" and "size_precision" are data precisions and are not always the same precisions used for trading eg. for the "BINANCE" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the "price_precision" and "size_precision". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | `symbol_id` pattern
--------- | ---------
SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`
FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`
OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`
PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`
DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}`
INDEX | `{exchange_id}_IDX_{index_id}`
CREDIT | `{exchange_id}_CRE_{asset_id_base}`
CONTACT  | `{exchange_id}_COT_{contract_id}`
OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}`
FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`
            
:::info
In the unlikely event when the "symbol_id" for more than one market is the same. We will append the additional term (prefixed with the "_") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of `symbol_type` output variable)
            
Type | Name | Description
-------- | - | -----------
SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*
FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time
DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)*
INDEX | Index | Statistical composite that measures changes in the economy or markets.
CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.
CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*
OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)*
FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*
            
### Additional output variables for `symbol_type = INDEX`
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for `symbol_type = FUTURES`
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = OPTION`
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for `symbol_type = CONTRACT`
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_symbol import MarketDataMetadataSymbol
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    exchange_id = 'exchange_id_example' # str | The ID of the exchange.
    filter_symbol_id = 'filter_symbol_id_example' # str | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (optional)
    filter_asset_id = 'filter_asset_id_example' # str | The filter for asset ID. (optional)

    try:
        # List all active symbols
        api_response = api_instance.v1_symbols_exchange_id_active_get(exchange_id, filter_symbol_id=filter_symbol_id, filter_asset_id=filter_asset_id)
        print("The response of MetadataApi->v1_symbols_exchange_id_active_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_symbols_exchange_id_active_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The ID of the exchange. | 
 **filter_symbol_id** | **str**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] 
 **filter_asset_id** | **str**| The filter for asset ID. | [optional] 

### Return type

[**List[MarketDataMetadataSymbol]**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_exchange_id_history_get**
> List[MarketDataMetadataSymbol] v1_symbols_exchange_id_history_get(exchange_id, page=page, limit=limit)

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange.
The data is provided with pagination support.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.market_data_metadata_symbol import MarketDataMetadataSymbol
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    exchange_id = 'exchange_id_example' # str | The ID of the exchange.
    page = 1 # int | The page number for pagination (starts from 1). (optional) (default to 1)
    limit = 100 # int | Number of records to return per page. (optional) (default to 100)

    try:
        # List all historical symbols for an exchange.
        api_response = api_instance.v1_symbols_exchange_id_history_get(exchange_id, page=page, limit=limit)
        print("The response of MetadataApi->v1_symbols_exchange_id_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_symbols_exchange_id_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The ID of the exchange. | 
 **page** | **int**| The page number for pagination (starts from 1). | [optional] [default to 1]
 **limit** | **int**| Number of records to return per page. | [optional] [default to 100]

### Return type

[**List[MarketDataMetadataSymbol]**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_map_exchange_id_get**
> List[V1SymbolMapping] v1_symbols_map_exchange_id_get(exchange_id)

List active symbol mapping for the exchange

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_symbol_mapping import V1SymbolMapping
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.MetadataApi(api_client)
    exchange_id = 'exchange_id_example' # str | The ID of the exchange (from the Metadata -> Exchanges)

    try:
        # List active symbol mapping for the exchange
        api_response = api_instance.v1_symbols_map_exchange_id_get(exchange_id)
        print("The response of MetadataApi->v1_symbols_map_exchange_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->v1_symbols_map_exchange_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Return type

[**List[V1SymbolMapping]**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

