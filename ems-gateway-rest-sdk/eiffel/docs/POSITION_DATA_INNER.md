# POSITION_DATA_INNER

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id_exchange** | [**STRING_32**](STRING_32.md) | Exchange symbol. | [optional] [default to null]
**symbol_id_coinapi** | [**STRING_32**](STRING_32.md) | CoinAPI symbol. | [optional] [default to null]
**avg_entry_price** | **REAL_32** | Calculated average price of all fills on this position. | [optional] [default to null]
**quantity** | **REAL_32** | The current position quantity. | [optional] [default to null]
**side** | [**ORD_SIDE**](OrdSide.md) |  | [optional] [default to null]
**unrealized_pnl** | **REAL_32** | Unrealised profit or loss (PNL) of this position. | [optional] [default to null]
**leverage** | **REAL_32** | Leverage for this position reported by the exchange. | [optional] [default to null]
**cross_margin** | **BOOLEAN** | Is cross margin mode enable for this position? | [optional] [default to null]
**liquidation_price** | **REAL_32** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] [default to null]
**raw_data** | [**ANY**](.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


