# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.MetadataApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1AssetsAssetIdGet**](MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**V1AssetsGet**](MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets |
| [**V1AssetsIconsSizeGet**](MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons |
| [**V1ChainsChainIdGet**](MetadataApi.md#v1chainschainidget) | **GET** /v1/chains/{chain_id} | List all chains by chain ID |
| [**V1ChainsGet**](MetadataApi.md#v1chainsget) | **GET** /v1/chains | List all blockchain chains |
| [**V1ExchangesExchangeIdGet**](MetadataApi.md#v1exchangesexchangeidget) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**V1ExchangesGet**](MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List all exchanges |
| [**V1ExchangesIconsSizeGet**](MetadataApi.md#v1exchangesiconssizeget) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges |
| [**V1SymbolsExchangeIdActiveGet**](MetadataApi.md#v1symbolsexchangeidactiveget) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols |
| [**V1SymbolsExchangeIdHistoryGet**](MetadataApi.md#v1symbolsexchangeidhistoryget) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange. |
| [**V1SymbolsMapExchangeIdGet**](MetadataApi.md#v1symbolsmapexchangeidget) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange |

<a id="v1assetsassetidget"></a>
# **V1AssetsAssetIdGet**
> List&lt;MarketDataMetadataAsset&gt; V1AssetsAssetIdGet (string assetId)

List all assets by asset ID


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetId** | **string** | The asset ID. |  |

### Return type

[**List&lt;MarketDataMetadataAsset&gt;**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1assetsget"></a>
# **V1AssetsGet**
> List&lt;MarketDataMetadataAsset&gt; V1AssetsGet (string filterAssetId = null, string filterAssetType = null)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional]  |
| **filterAssetType** | **string** | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional]  |

### Return type

[**List&lt;MarketDataMetadataAsset&gt;**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1assetsiconssizeget"></a>
# **V1AssetsIconsSizeGet**
> List&lt;MarketDataMetadataIcon&gt; V1AssetsIconsSizeGet (int size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **size** | **int** | The size of the icons. |  |

### Return type

[**List&lt;MarketDataMetadataIcon&gt;**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1chainschainidget"></a>
# **V1ChainsChainIdGet**
> List&lt;MarketDataMetadataChain&gt; V1ChainsChainIdGet (string chainId)

List all chains by chain ID


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | The chain ID. |  |

### Return type

[**List&lt;MarketDataMetadataChain&gt;**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1chainsget"></a>
# **V1ChainsGet**
> List&lt;MarketDataMetadataChain&gt; V1ChainsGet (string filterChainId = null)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterChainId** | **string** | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional]  |

### Return type

[**List&lt;MarketDataMetadataChain&gt;**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1exchangesexchangeidget"></a>
# **V1ExchangesExchangeIdGet**
> List&lt;MarketDataMetadataExchange&gt; V1ExchangesExchangeIdGet (string exchangeId)

List all exchanges by exchange_id


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange. |  |

### Return type

[**List&lt;MarketDataMetadataExchange&gt;**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1exchangesget"></a>
# **V1ExchangesGet**
> List&lt;MarketDataMetadataExchange&gt; V1ExchangesGet (string filterExchangeId = null)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional]  |

### Return type

[**List&lt;MarketDataMetadataExchange&gt;**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1exchangesiconssizeget"></a>
# **V1ExchangesIconsSizeGet**
> List&lt;MarketDataMetadataIcon&gt; V1ExchangesIconsSizeGet (int size)

List of icons for the exchanges


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **size** | **int** | The size of the icons. |  |

### Return type

[**List&lt;MarketDataMetadataIcon&gt;**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsexchangeidactiveget"></a>
# **V1SymbolsExchangeIdActiveGet**
> List&lt;MarketDataMetadataSymbol&gt; V1SymbolsExchangeIdActiveGet (string exchangeId, string filterSymbolId = null, string filterAssetId = null)

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern - -- -- -- -- | - -- -- -- -- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description - -- -- -- - | - | - -- -- -- -- -- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description - -- -- -- -- | - -- -- -- -- -- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description - -- -- -- -- | - -- -- -- -- -- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description - -- -- -- -- | - -- -- -- -- -- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description - -- -- -- -- | - -- -- -- -- -- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description - -- -- -- -- | - -- -- -- -- -- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description - -- -- -- -- | - -- -- -- -- -- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange. |  |
| **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional]  |
| **filterAssetId** | **string** | The filter for asset ID. | [optional]  |

### Return type

[**List&lt;MarketDataMetadataSymbol&gt;**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsexchangeidhistoryget"></a>
# **V1SymbolsExchangeIdHistoryGet**
> List&lt;MarketDataMetadataSymbol&gt; V1SymbolsExchangeIdHistoryGet (string exchangeId, int page = null, int limit = null)

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange. |  |
| **page** | **int** | The page number for pagination (starts from 1). | [optional] [default to 1] |
| **limit** | **int** | Number of records to return per page. | [optional] [default to 100] |

### Return type

[**List&lt;MarketDataMetadataSymbol&gt;**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsmapexchangeidget"></a>
# **V1SymbolsMapExchangeIdGet**
> List&lt;V1SymbolMapping&gt; V1SymbolsMapExchangeIdGet (string exchangeId)

List active symbol mapping for the exchange


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The ID of the exchange (from the Metadata -&gt; Exchanges) |  |

### Return type

[**List&lt;V1SymbolMapping&gt;**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

