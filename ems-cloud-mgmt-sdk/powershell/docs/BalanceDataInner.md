# BalanceDataInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdExchange** | **String** | Exchange currency code. | [optional] 
**AssetIdCoinapi** | **String** | CoinAPI currency code. | [optional] 
**Balance** | **Double** | Value of the current total currency balance on the exchange. | [optional] 
**Available** | **Double** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**Locked** | **Double** | Value of the current locked currency balance by the exchange. | [optional] 
**LastUpdatedBy** | **String** | Source of the last modification.  | [optional] 
**RateUsd** | **Double** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**Traded** | **Double** | Value of the current total traded. | [optional] 

## Examples

- Prepare the resource
```powershell
$BalanceDataInner = Initialize-PSOpenAPIToolsBalanceDataInner  -AssetIdExchange XBT `
 -AssetIdCoinapi BTC `
 -Balance 0.00134444 `
 -Available 0.00134444 `
 -Locked 0.0 `
 -LastUpdatedBy EXCHANGE `
 -RateUsd 1355.12 `
 -Traded 0.007
```

- Convert the resource to JSON
```powershell
$BalanceDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

