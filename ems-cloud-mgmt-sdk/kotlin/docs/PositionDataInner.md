
# PositionDataInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolIdExchange** | **kotlin.String** | Exchange symbol. |  [optional]
**symbolIdCoinapi** | **kotlin.String** | CoinAPI symbol. |  [optional]
**avgEntryPrice** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Calculated average price of all fills on this position. |  [optional]
**quantity** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | The current position quantity. |  [optional]
**side** | [**OrdSide**](OrdSide.md) |  |  [optional]
**unrealizedPnl** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Unrealised profit or loss (PNL) of this position. |  [optional]
**leverage** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Leverage for this position reported by the exchange. |  [optional]
**crossMargin** | **kotlin.Boolean** | Is cross margin mode enable for this position? |  [optional]
**liquidationPrice** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Liquidation price. If mark price will reach this value, the position will be liquidated. |  [optional]
**rawData** | [**kotlin.Any**](.md) |  |  [optional]



