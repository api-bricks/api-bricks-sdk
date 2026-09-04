# PSOpenAPITools.PSOpenAPITools\Api.MetadataApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1AssetsAssetIdGet**](MetadataApi.md#Invoke-V1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**Invoke-V1AssetsGet**](MetadataApi.md#Invoke-V1AssetsGet) | **GET** /v1/assets | List all assets
[**Invoke-V1AssetsIconsSizeGet**](MetadataApi.md#Invoke-V1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**Invoke-V1ChainsChainIdGet**](MetadataApi.md#Invoke-V1ChainsChainIdGet) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
[**Invoke-V1ChainsGet**](MetadataApi.md#Invoke-V1ChainsGet) | **GET** /v1/chains | List all blockchain chains
[**Invoke-V1ExchangesExchangeIdGet**](MetadataApi.md#Invoke-V1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**Invoke-V1ExchangesGet**](MetadataApi.md#Invoke-V1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
[**Invoke-V1ExchangesIconsSizeGet**](MetadataApi.md#Invoke-V1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**Invoke-V1SymbolsExchangeIdActiveGet**](MetadataApi.md#Invoke-V1SymbolsExchangeIdActiveGet) | **GET** /v1/symbols/{exchange_id}/active | List all active symbols
[**Invoke-V1SymbolsExchangeIdHistoryGet**](MetadataApi.md#Invoke-V1SymbolsExchangeIdHistoryGet) | **GET** /v1/symbols/{exchange_id}/history | List all historical symbols for an exchange.
[**Invoke-V1SymbolsMapExchangeIdGet**](MetadataApi.md#Invoke-V1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List active symbol mapping for the exchange


<a id="Invoke-V1AssetsAssetIdGet"></a>
# **Invoke-V1AssetsAssetIdGet**
> MarketDataMetadataAsset[] Invoke-V1AssetsAssetIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>

List all assets by asset ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$AssetId = "MyAssetId" # String | The asset ID.

# List all assets by asset ID
try {
    $Result = Invoke-V1AssetsAssetIdGet -AssetId $AssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AssetsAssetIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetId** | **String**| The asset ID. | 

### Return type

[**MarketDataMetadataAsset[]**](MarketDataMetadataAsset.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1AssetsGet"></a>
# **Invoke-V1AssetsGet**
> MarketDataMetadataAsset[] Invoke-V1AssetsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetType] <String><br>

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$FilterAssetId = "MyFilterAssetId" # String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)
$FilterAssetType = "MyFilterAssetType" # String | Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. (optional)

# List all assets
try {
    $Result = Invoke-V1AssetsGet -FilterAssetId $FilterAssetId -FilterAssetType $FilterAssetType
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AssetsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 
 **FilterAssetType** | **String**| Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK. | [optional] 

### Return type

[**MarketDataMetadataAsset[]**](MarketDataMetadataAsset.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1AssetsIconsSizeGet"></a>
# **Invoke-V1AssetsIconsSizeGet**
> MarketDataMetadataIcon[] Invoke-V1AssetsIconsSizeGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <Int32><br>

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Size = 56 # Int32 | The size of the icons.

# List all asset icons
try {
    $Result = Invoke-V1AssetsIconsSizeGet -Size $Size
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AssetsIconsSizeGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Int32**| The size of the icons. | 

### Return type

[**MarketDataMetadataIcon[]**](MarketDataMetadataIcon.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ChainsChainIdGet"></a>
# **Invoke-V1ChainsChainIdGet**
> MarketDataMetadataChain[] Invoke-V1ChainsChainIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

List all chains by chain ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ChainId = "MyChainId" # String | The chain ID.

# List all chains by chain ID
try {
    $Result = Invoke-V1ChainsChainIdGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ChainsChainIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| The chain ID. | 

### Return type

[**MarketDataMetadataChain[]**](MarketDataMetadataChain.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ChainsGet"></a>
# **Invoke-V1ChainsGet**
> MarketDataMetadataChain[] Invoke-V1ChainsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterChainId] <String><br>

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$FilterChainId = "MyFilterChainId" # String | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). (optional)

# List all blockchain chains
try {
    $Result = Invoke-V1ChainsGet -FilterChainId $FilterChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ChainsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterChainId** | **String**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. &#x60;ETHEREUM;ARBITRUM&#x60;). | [optional] 

### Return type

[**MarketDataMetadataChain[]**](MarketDataMetadataChain.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangesExchangeIdGet"></a>
# **Invoke-V1ExchangesExchangeIdGet**
> MarketDataMetadataExchange[] Invoke-V1ExchangesExchangeIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

List all exchanges by exchange_id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | The ID of the exchange.

# List all exchanges by exchange_id
try {
    $Result = Invoke-V1ExchangesExchangeIdGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange. | 

### Return type

[**MarketDataMetadataExchange[]**](MarketDataMetadataExchange.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangesGet"></a>
# **Invoke-V1ExchangesGet**
> MarketDataMetadataExchange[] Invoke-V1ExchangesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterExchangeId] <String><br>

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$FilterExchangeId = "MyFilterExchangeId" # String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

# List all exchanges
try {
    $Result = Invoke-V1ExchangesGet -FilterExchangeId $FilterExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**MarketDataMetadataExchange[]**](MarketDataMetadataExchange.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangesIconsSizeGet"></a>
# **Invoke-V1ExchangesIconsSizeGet**
> MarketDataMetadataIcon[] Invoke-V1ExchangesIconsSizeGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <Int32><br>

List of icons for the exchanges

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Size = 56 # Int32 | The size of the icons.

# List of icons for the exchanges
try {
    $Result = Invoke-V1ExchangesIconsSizeGet -Size $Size
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesIconsSizeGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Int32**| The size of the icons. | 

### Return type

[**MarketDataMetadataIcon[]**](MarketDataMetadataIcon.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsExchangeIdActiveGet"></a>
# **Invoke-V1SymbolsExchangeIdActiveGet**
> MarketDataMetadataSymbol[] Invoke-V1SymbolsExchangeIdActiveGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>

List all active symbols

Retrieves all currently active (listed) symbols, with optional filtering.              :::info ""price_precision"" and ""size_precision"" are data precisions and are not always the same precisions used for trading eg. for the ""BINANCE"" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the ""price_precision"" and ""size_precision"". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the ""symbol_id"" for more than one market is the same. We will append the additional term (prefixed with the ""_"") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | The ID of the exchange.
$FilterSymbolId = "MyFilterSymbolId" # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (optional)
$FilterAssetId = "MyFilterAssetId" # String | The filter for asset ID. (optional)

# List all active symbols
try {
    $Result = Invoke-V1SymbolsExchangeIdActiveGet -ExchangeId $ExchangeId -FilterSymbolId $FilterSymbolId -FilterAssetId $FilterAssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsExchangeIdActiveGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange. | 
 **FilterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] 
 **FilterAssetId** | **String**| The filter for asset ID. | [optional] 

### Return type

[**MarketDataMetadataSymbol[]**](MarketDataMetadataSymbol.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsExchangeIdHistoryGet"></a>
# **Invoke-V1SymbolsExchangeIdHistoryGet**
> MarketDataMetadataSymbol[] Invoke-V1SymbolsExchangeIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all historical symbols for an exchange.

This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | The ID of the exchange.
$Page = 56 # Int32 | The page number for pagination (starts from 1). (optional) (default to 1)
$Limit = 56 # Int32 | Number of records to return per page. (optional) (default to 100)

# List all historical symbols for an exchange.
try {
    $Result = Invoke-V1SymbolsExchangeIdHistoryGet -ExchangeId $ExchangeId -Page $Page -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsExchangeIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange. | 
 **Page** | **Int32**| The page number for pagination (starts from 1). | [optional] [default to 1]
 **Limit** | **Int32**| Number of records to return per page. | [optional] [default to 100]

### Return type

[**MarketDataMetadataSymbol[]**](MarketDataMetadataSymbol.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsMapExchangeIdGet"></a>
# **Invoke-V1SymbolsMapExchangeIdGet**
> V1SymbolMapping[] Invoke-V1SymbolsMapExchangeIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

List active symbol mapping for the exchange

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | The ID of the exchange (from the Metadata -> Exchanges)

# List active symbol mapping for the exchange
try {
    $Result = Invoke-V1SymbolsMapExchangeIdGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsMapExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Return type

[**V1SymbolMapping[]**](V1SymbolMapping.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

