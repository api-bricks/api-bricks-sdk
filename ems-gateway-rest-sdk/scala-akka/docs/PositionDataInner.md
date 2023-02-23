

# PositionDataInner

The Position object.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolIdExchange** | **String** | Exchange symbol. |  [optional]
**symbolIdCoinapi** | **String** | CoinAPI symbol. |  [optional]
**avgEntryPrice** | **BigDecimal** | Calculated average price of all fills on this position. |  [optional]
**quantity** | **BigDecimal** | The current position quantity. |  [optional]
**side** | **OrdSide** |  |  [optional]
**unrealizedPnl** | **BigDecimal** | Unrealised profit or loss (PNL) of this position. |  [optional]
**leverage** | **BigDecimal** | Leverage for this position reported by the exchange. |  [optional]
**crossMargin** | **Boolean** | Is cross margin mode enable for this position? |  [optional]
**liquidationPrice** | **BigDecimal** | Liquidation price. If mark price will reach this value, the position will be liquidated. |  [optional]
**rawData** | **Any** |  |  [optional]



