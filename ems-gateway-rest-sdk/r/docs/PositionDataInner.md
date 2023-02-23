# openapi::PositionDataInner

The Position object.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id_exchange** | **character** | Exchange symbol. | [optional] 
**symbol_id_coinapi** | **character** | CoinAPI symbol. | [optional] 
**avg_entry_price** | **numeric** | Calculated average price of all fills on this position. | [optional] 
**quantity** | **numeric** | The current position quantity. | [optional] 
**side** | [**OrdSide**](OrdSide.md) |  | [optional] 
**unrealized_pnl** | **numeric** | Unrealised profit or loss (PNL) of this position. | [optional] 
**leverage** | **numeric** | Leverage for this position reported by the exchange. | [optional] 
**cross_margin** | **character** | Is cross margin mode enable for this position? | [optional] 
**liquidation_price** | **numeric** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**raw_data** | **object** |  | [optional] 


