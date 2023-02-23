# OpenapiClient::PositionDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id_exchange** | **String** | Exchange symbol. | [optional] |
| **symbol_id_coinapi** | **String** | CoinAPI symbol. | [optional] |
| **avg_entry_price** | **Float** | Calculated average price of all fills on this position. | [optional] |
| **quantity** | **Float** | The current position quantity. | [optional] |
| **side** | [**OrdSide**](OrdSide.md) |  | [optional] |
| **unrealized_pnl** | **Float** | Unrealised profit or loss (PNL) of this position. | [optional] |
| **leverage** | **Float** | Leverage for this position reported by the exchange. | [optional] |
| **cross_margin** | **Boolean** | Is cross margin mode enable for this position? | [optional] |
| **liquidation_price** | **Float** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] |
| **raw_data** | **Object** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PositionDataInner.new(
  symbol_id_exchange: XBTUSD,
  symbol_id_coinapi: BITMEX_PERP_BTC_USD,
  avg_entry_price: 0.00134444,
  quantity: 7,
  side: null,
  unrealized_pnl: 0.0,
  leverage: 0.0,
  cross_margin: true,
  liquidation_price: 0.072323,
  raw_data: Other information provided by the exchange on this position.
)
```

