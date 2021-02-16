# PositionData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolIdExchange** | **String** | Exchange symbol. | [optional] 
**SymbolIdCoinapi** | **String** | CoinAPI symbol. | [optional] 
**AvgEntryPrice** | **Decimal** | Calculated average price of all fills on this position. | [optional] 
**Quantity** | **Decimal** | The current position quantity. | [optional] 
**Side** | [**OrdSide**](OrdSide.md) |  | [optional] 
**UnrealizedPnl** | **Decimal** | Unrealised profit or loss (PNL) of this position. | [optional] 
**Leverage** | **Decimal** | Leverage for this position reported by the exchange. | [optional] 
**CrossMargin** | **Boolean** | Is cross margin mode enable for this position? | [optional] 
**LiquidationPrice** | **Decimal** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**RawData** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PositionData = Initialize-PSOpenAPIToolsPositionData  -SymbolIdExchange XBTUSD `
 -SymbolIdCoinapi BITMEX_PERP_BTC_USD `
 -AvgEntryPrice 0.00134444 `
 -Quantity 7 `
 -Side null `
 -UnrealizedPnl 0.0 `
 -Leverage 0.0 `
 -CrossMargin true `
 -LiquidationPrice 0.072323 `
 -RawData Other information provided by the exchange on this position.
```

- Convert the resource to JSON
```powershell
$PositionData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

