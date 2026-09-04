# MetadataApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AssetsAssetIdGet**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsGet**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
[**v1AssetsIconsSizeGet**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1ChainsChainIdGet**](MetadataApi.md#v1ChainsChainIdGet) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
[**v1ChainsGet**](MetadataApi.md#v1ChainsGet) | **GET** /v1/chains | List all blockchain chains
[**v1ExchangesExchangeIdGet**](MetadataApi.md#v1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1ExchangesGet**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
[**v1ExchangesIconsSizeGet**](MetadataApi.md#v1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1SymbolsExchangeIdActiveGet**](MetadataApi.md#v1SymbolsExchangeIdActiveGet) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
[**v1SymbolsExchangeIdHistoryGet**](MetadataApi.md#v1SymbolsExchangeIdHistoryGet) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
[**v1SymbolsMapExchangeIdGet**](MetadataApi.md#v1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange



## v1AssetsAssetIdGet

List all assets by asset ID

### Example

```bash
 v1AssetsAssetIdGet asset_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **string** | The asset ID. | [default to null]

### Return type

[**array[MarketDataMetadataAsset]**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AssetsGet

List all assets

Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

```bash
 v1AssetsGet  filter_asset_id=value  filter_asset_type=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. 'BTC;ETH'). | [optional] [default to null]
 **filterAssetType** | **string** | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional] [default to null]

### Return type

[**array[MarketDataMetadataAsset]**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AssetsIconsSizeGet

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

```bash
 v1AssetsIconsSizeGet size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer** | The size of the icons. | [default to null]

### Return type

[**array[MarketDataMetadataIcon]**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ChainsChainIdGet

List all chains by chain ID

### Example

```bash
 v1ChainsChainIdGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | The chain ID. | [default to null]

### Return type

[**array[MarketDataMetadataChain]**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ChainsGet

List all blockchain chains

Retrieves all blockchain chains supported by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

```bash
 v1ChainsGet  filter_chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainId** | **string** | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. 'ETHEREUM;ARBITRUM'). | [optional] [default to null]

### Return type

[**array[MarketDataMetadataChain]**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExchangesExchangeIdGet

List all exchanges by exchange_id

### Example

```bash
 v1ExchangesExchangeIdGet exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The ID of the exchange. | [default to null]

### Return type

[**array[MarketDataMetadataExchange]**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExchangesGet

List all exchanges

Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

```bash
 v1ExchangesGet  filter_exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. 'BITSTAMP;GEMINI') | [optional] [default to null]

### Return type

[**array[MarketDataMetadataExchange]**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExchangesIconsSizeGet

List of icons for the exchanges

### Example

```bash
 v1ExchangesIconsSizeGet size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer** | The size of the icons. | [default to null]

### Return type

[**array[MarketDataMetadataIcon]**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SymbolsExchangeIdActiveGet

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.
            
:::info
\"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | 'symbol_id' pattern
--------- | ---------
SPOT | '{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}'
FUTURES | '{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}'
OPTION | '{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}'
PERPETUAL | '{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}'
DEPLOYER_PERPETUAL | '{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}'
INDEX | '{exchange_id}_IDX_{index_id}'
CREDIT | '{exchange_id}_CRE_{asset_id_base}'
CONTACT  | '{exchange_id}_COT_{contract_id}'
OPTION_COMBO | '{exchange_id}_OPTCMB_{exchange_symbol_id}'
FUTURE_COMBO | '{exchange_id}_FTSCMB_{exchange_symbol_id}'
            
:::info
In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of 'symbol_type' output variable)
            
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
            
### Additional output variables for 'symbol_type = INDEX'
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for 'symbol_type = FUTURES'
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if 'future_contract_unit' = '10' and 'future_contract_unit_asset' = 'BTC')*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for 'symbol_type = PERPETUAL'
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if 'future_contract_unit' = '10' and 'future_contract_unit_asset' = 'BTC')*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for 'symbol_type = DEPLOYER_PERPETUAL'
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if 'future_contract_unit' = '10' and 'future_contract_unit_asset' = 'BTC')*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for 'symbol_type = OPTION'
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. 'true' for Call options, 'false' for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be 'EUROPEAN' or 'AMERICAN'
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for 'symbol_type = CONTRACT'
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if 'contract_unit' = '10' and 'contract_unit_asset' = 'BTC')*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange

### Example

```bash
 v1SymbolsExchangeIdActiveGet exchange_id=value  filter_symbol_id=value  filter_asset_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The ID of the exchange. | [default to null]
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. 'BITSTAMP'_ or 'BINANCE_SPOT_') | [optional] [default to null]
 **filterAssetId** | **string** | The filter for asset ID. | [optional] [default to null]

### Return type

[**array[MarketDataMetadataSymbol]**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SymbolsExchangeIdHistoryGet

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange.
The data is provided with pagination support.

### Example

```bash
 v1SymbolsExchangeIdHistoryGet exchange_id=value  page=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The ID of the exchange. | [default to null]
 **page** | **integer** | The page number for pagination (starts from 1). | [optional] [default to 1]
 **limit** | **integer** | Number of records to return per page. | [optional] [default to 100]

### Return type

[**array[MarketDataMetadataSymbol]**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SymbolsMapExchangeIdGet

List active symbol mapping for the exchange

### Example

```bash
 v1SymbolsMapExchangeIdGet exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The ID of the exchange (from the Metadata -> Exchanges) | [default to null]

### Return type

[**array[V1SymbolMapping]**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

