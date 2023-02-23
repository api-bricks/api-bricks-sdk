# EmsRestApi.BalanceDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetIdExchange** | **String** | Exchange currency code. | [optional] 
**assetIdCoinapi** | **String** | CoinAPI currency code. | [optional] 
**balance** | **Number** | Value of the current total currency balance on the exchange. | [optional] 
**available** | **Number** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**locked** | **Number** | Value of the current locked currency balance by the exchange. | [optional] 
**lastUpdatedBy** | **String** | Source of the last modification.  | [optional] 
**rateUsd** | **Number** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**traded** | **Number** | Value of the current total traded. | [optional] 



## Enum: LastUpdatedByEnum


* `INITIALIZATION` (value: `"INITIALIZATION"`)

* `BALANCE_MANAGER` (value: `"BALANCE_MANAGER"`)

* `EXCHANGE` (value: `"EXCHANGE"`)




