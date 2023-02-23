# EmsRestApi.PositionDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolIdExchange** | **String** | Exchange symbol. | [optional] 
**symbolIdCoinapi** | **String** | CoinAPI symbol. | [optional] 
**avgEntryPrice** | **Number** | Calculated average price of all fills on this position. | [optional] 
**quantity** | **Number** | The current position quantity. | [optional] 
**side** | [**OrdSide**](OrdSide.md) |  | [optional] 
**unrealizedPnl** | **Number** | Unrealised profit or loss (PNL) of this position. | [optional] 
**leverage** | **Number** | Leverage for this position reported by the exchange. | [optional] 
**crossMargin** | **Boolean** | Is cross margin mode enable for this position? | [optional] 
**liquidationPrice** | **Number** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**rawData** | **Object** |  | [optional] 


