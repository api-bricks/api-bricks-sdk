# OpenapiClient::BalanceDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id_exchange** | **String** | Exchange currency code. | [optional] |
| **asset_id_coinapi** | **String** | CoinAPI currency code. | [optional] |
| **balance** | **Float** | Value of the current total currency balance on the exchange. | [optional] |
| **available** | **Float** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] |
| **locked** | **Float** | Value of the current locked currency balance by the exchange. | [optional] |
| **last_updated_by** | **String** | Source of the last modification.  | [optional] |
| **rate_usd** | **Float** | Current exchange rate to the USD for the single unit of the currency.  | [optional] |
| **traded** | **Float** | Value of the current total traded. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BalanceDataInner.new(
  asset_id_exchange: XBT,
  asset_id_coinapi: BTC,
  balance: 0.00134444,
  available: 0.00134444,
  locked: 0.0,
  last_updated_by: EXCHANGE,
  rate_usd: 1355.12,
  traded: 0.007
)
```

