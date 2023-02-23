

# PositionDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolIdExchange** | **String** | Exchange symbol. |  [optional]
**symbolIdCoinapi** | **String** | CoinAPI symbol. |  [optional]
**avgEntryPrice** | [**BigDecimal**](BigDecimal.md) | Calculated average price of all fills on this position. |  [optional]
**quantity** | [**BigDecimal**](BigDecimal.md) | The current position quantity. |  [optional]
**side** | [**OrdSide**](OrdSide.md) |  |  [optional]
**unrealizedPnl** | [**BigDecimal**](BigDecimal.md) | Unrealised profit or loss (PNL) of this position. |  [optional]
**leverage** | [**BigDecimal**](BigDecimal.md) | Leverage for this position reported by the exchange. |  [optional]
**crossMargin** | **Boolean** | Is cross margin mode enable for this position? |  [optional]
**liquidationPrice** | [**BigDecimal**](BigDecimal.md) | Liquidation price. If mark price will reach this value, the position will be liquidated. |  [optional]
**rawData** | **Object** |  |  [optional]




