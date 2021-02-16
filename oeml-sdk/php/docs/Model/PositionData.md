# # PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id_exchange** | **string** | Exchange symbol. | [optional]
**symbol_id_coinapi** | **string** | CoinAPI symbol. | [optional]
**avg_entry_price** | **float** | Calculated average price of all fills on this position. | [optional]
**quantity** | **float** | The current position quantity. | [optional]
**side** | [**\OpenAPI\Client\Model\OrdSide**](OrdSide.md) |  | [optional]
**unrealized_pnl** | **float** | Unrealised profit or loss (PNL) of this position. | [optional]
**leverage** | **float** | Leverage for this position reported by the exchange. | [optional]
**cross_margin** | **bool** | Is cross margin mode enable for this position? | [optional]
**liquidation_price** | **float** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional]
**raw_data** | **object** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
