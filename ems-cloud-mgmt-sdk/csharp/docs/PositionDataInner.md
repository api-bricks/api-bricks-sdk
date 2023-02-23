
# CoinAPI.EMS.REST.V1.Model.PositionDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolIdExchange** | **string** | Exchange symbol. | [optional] 
**SymbolIdCoinapi** | **string** | CoinAPI symbol. | [optional] 
**AvgEntryPrice** | **decimal** | Calculated average price of all fills on this position. | [optional] 
**Quantity** | **decimal** | The current position quantity. | [optional] 
**Side** | **OrdSide** |  | [optional] 
**UnrealizedPnl** | **decimal** | Unrealised profit or loss (PNL) of this position. | [optional] 
**Leverage** | **decimal** | Leverage for this position reported by the exchange. | [optional] 
**CrossMargin** | **bool** | Is cross margin mode enable for this position? | [optional] 
**LiquidationPrice** | **decimal** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**RawData** | **Object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

