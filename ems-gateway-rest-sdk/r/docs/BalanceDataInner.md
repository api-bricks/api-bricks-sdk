# openapi::BalanceDataInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_exchange** | **character** | Exchange currency code. | [optional] 
**asset_id_coinapi** | **character** | CoinAPI currency code. | [optional] 
**balance** | **numeric** | Value of the current total currency balance on the exchange. | [optional] 
**available** | **numeric** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**locked** | **numeric** | Value of the current locked currency balance by the exchange. | [optional] 
**last_updated_by** | **character** | Source of the last modification.  | [optional] [Enum: [INITIALIZATION, BALANCE_MANAGER, EXCHANGE]] 
**rate_usd** | **numeric** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**traded** | **numeric** | Value of the current total traded. | [optional] 


