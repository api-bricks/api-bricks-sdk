# position_data_inner_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id_exchange** | **char \*** | Exchange symbol. | [optional] 
**symbol_id_coinapi** | **char \*** | CoinAPI symbol. | [optional] 
**avg_entry_price** | **double** | Calculated average price of all fills on this position. | [optional] 
**quantity** | **double** | The current position quantity. | [optional] 
**side** | **ord_side_t \*** |  | [optional] 
**unrealized_pnl** | **double** | Unrealised profit or loss (PNL) of this position. | [optional] 
**leverage** | **double** | Leverage for this position reported by the exchange. | [optional] 
**cross_margin** | **int** | Is cross margin mode enable for this position? | [optional] 
**liquidation_price** | **double** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**raw_data** | [**object_t**](.md) \* |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


