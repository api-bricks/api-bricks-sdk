# MetadataApi

All URIs are relative to *https://rest.coinapi.io*

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

> List&lt;MarketDataMetadataAsset&gt; v1AssetsAssetIdGet(assetId)

List all assets by asset ID

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String assetId = null; // String | The asset ID.
try {
    List<MarketDataMetadataAsset> result = apiInstance.v1AssetsAssetIdGet(assetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1AssetsAssetIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| The asset ID. | [default to null]

### Return type

[**List&lt;MarketDataMetadataAsset&gt;**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1AssetsGet

> List&lt;MarketDataMetadataAsset&gt; v1AssetsGet(filterAssetId, filterAssetType)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String filterAssetId = null; // String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
String filterAssetType = null; // String | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK.
try {
    List<MarketDataMetadataAsset> result = apiInstance.v1AssetsGet(filterAssetId, filterAssetType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1AssetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] [default to null]
 **filterAssetType** | **String**| Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional] [default to null]

### Return type

[**List&lt;MarketDataMetadataAsset&gt;**](MarketDataMetadataAsset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1AssetsIconsSizeGet

> List&lt;MarketDataMetadataIcon&gt; v1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
Integer size = null; // Integer | The size of the icons.
try {
    List<MarketDataMetadataIcon> result = apiInstance.v1AssetsIconsSizeGet(size);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1AssetsIconsSizeGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The size of the icons. | [default to null]

### Return type

[**List&lt;MarketDataMetadataIcon&gt;**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ChainsChainIdGet

> List&lt;MarketDataMetadataChain&gt; v1ChainsChainIdGet(chainId)

List all chains by chain ID

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String chainId = null; // String | The chain ID.
try {
    List<MarketDataMetadataChain> result = apiInstance.v1ChainsChainIdGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1ChainsChainIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| The chain ID. | [default to null]

### Return type

[**List&lt;MarketDataMetadataChain&gt;**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ChainsGet

> List&lt;MarketDataMetadataChain&gt; v1ChainsGet(filterChainId)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String filterChainId = null; // String | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).
try {
    List<MarketDataMetadataChain> result = apiInstance.v1ChainsGet(filterChainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1ChainsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainId** | **String**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] [default to null]

### Return type

[**List&lt;MarketDataMetadataChain&gt;**](MarketDataMetadataChain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExchangesExchangeIdGet

> List&lt;MarketDataMetadataExchange&gt; v1ExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String exchangeId = null; // String | The ID of the exchange.
try {
    List<MarketDataMetadataExchange> result = apiInstance.v1ExchangesExchangeIdGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1ExchangesExchangeIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. | [default to null]

### Return type

[**List&lt;MarketDataMetadataExchange&gt;**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExchangesGet

> List&lt;MarketDataMetadataExchange&gt; v1ExchangesGet(filterExchangeId)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String filterExchangeId = null; // String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
try {
    List<MarketDataMetadataExchange> result = apiInstance.v1ExchangesGet(filterExchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1ExchangesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] [default to null]

### Return type

[**List&lt;MarketDataMetadataExchange&gt;**](MarketDataMetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExchangesIconsSizeGet

> List&lt;MarketDataMetadataIcon&gt; v1ExchangesIconsSizeGet(size)

List of icons for the exchanges

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
Integer size = null; // Integer | The size of the icons.
try {
    List<MarketDataMetadataIcon> result = apiInstance.v1ExchangesIconsSizeGet(size);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1ExchangesIconsSizeGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The size of the icons. | [default to null]

### Return type

[**List&lt;MarketDataMetadataIcon&gt;**](MarketDataMetadataIcon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1SymbolsExchangeIdActiveGet

> List&lt;MarketDataMetadataSymbol&gt; v1SymbolsExchangeIdActiveGet(exchangeId, filterSymbolId, filterAssetId)

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.              :::info \&quot;price_precision\&quot; and \&quot;size_precision\&quot; are data precisions and are not always the same precisions used for trading eg. for the \&quot;BINANCE\&quot; exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \&quot;price_precision\&quot; and \&quot;size_precision\&quot;. The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | &#x60;symbol_id&#x60; pattern --------- | --------- SPOT | &#x60;{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}&#x60; FUTURES | &#x60;{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}&#x60; OPTION | &#x60;{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}&#x60; PERPETUAL | &#x60;{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}&#x60; DEPLOYER_PERPETUAL | &#x60;{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}&#x60; INDEX | &#x60;{exchange_id}_IDX_{index_id}&#x60; CREDIT | &#x60;{exchange_id}_CRE_{asset_id_base}&#x60; CONTACT  | &#x60;{exchange_id}_COT_{contract_id}&#x60; OPTION_COMBO | &#x60;{exchange_id}_OPTCMB_{exchange_symbol_id}&#x60; FUTURE_COMBO | &#x60;{exchange_id}_FTSCMB_{exchange_symbol_id}&#x60;              :::info In the unlikely event when the \&quot;symbol_id\&quot; for more than one market is the same. We will append the additional term (prefixed with the \&quot;_\&quot;) at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of &#x60;symbol_type&#x60; output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for &#x60;symbol_type &#x3D; INDEX&#x60;              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for &#x60;symbol_type &#x3D; FUTURES&#x60;              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for &#x60;symbol_type &#x3D; PERPETUAL&#x60;              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for &#x60;symbol_type &#x3D; DEPLOYER_PERPETUAL&#x60;              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for &#x60;symbol_type &#x3D; OPTION&#x60;              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. &#x60;true&#x60; for Call options, &#x60;false&#x60; for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be &#x60;EUROPEAN&#x60; or &#x60;AMERICAN&#x60; option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for &#x60;symbol_type &#x3D; CONTRACT&#x60;              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if &#x60;contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String exchangeId = null; // String | The ID of the exchange.
String filterSymbolId = null; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
String filterAssetId = null; // String | The filter for asset ID.
try {
    List<MarketDataMetadataSymbol> result = apiInstance.v1SymbolsExchangeIdActiveGet(exchangeId, filterSymbolId, filterAssetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1SymbolsExchangeIdActiveGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. | [default to null]
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] [default to null]
 **filterAssetId** | **String**| The filter for asset ID. | [optional] [default to null]

### Return type

[**List&lt;MarketDataMetadataSymbol&gt;**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1SymbolsExchangeIdHistoryGet

> List&lt;MarketDataMetadataSymbol&gt; v1SymbolsExchangeIdHistoryGet(exchangeId, page, limit)

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String exchangeId = null; // String | The ID of the exchange.
Integer page = 1; // Integer | The page number for pagination (starts from 1).
Integer limit = 100; // Integer | Number of records to return per page.
try {
    List<MarketDataMetadataSymbol> result = apiInstance.v1SymbolsExchangeIdHistoryGet(exchangeId, page, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1SymbolsExchangeIdHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. | [default to null]
 **page** | **Integer**| The page number for pagination (starts from 1). | [optional] [default to 1]
 **limit** | **Integer**| Number of records to return per page. | [optional] [default to 100]

### Return type

[**List&lt;MarketDataMetadataSymbol&gt;**](MarketDataMetadataSymbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1SymbolsMapExchangeIdGet

> List&lt;V1SymbolMapping&gt; v1SymbolsMapExchangeIdGet(exchangeId)

List active symbol mapping for the exchange

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String exchangeId = null; // String | The ID of the exchange (from the Metadata -> Exchanges)
try {
    List<V1SymbolMapping> result = apiInstance.v1SymbolsMapExchangeIdGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#v1SymbolsMapExchangeIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | [default to null]

### Return type

[**List&lt;V1SymbolMapping&gt;**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

