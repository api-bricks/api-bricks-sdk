

# BalanceDataInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetIdExchange** | **String** | Exchange currency code. |  [optional]
**assetIdCoinapi** | **String** | CoinAPI currency code. |  [optional]
**balance** | **Double** | Value of the current total currency balance on the exchange. |  [optional]
**available** | **Double** | Value of the current available currency balance on the exchange that can be used as collateral. |  [optional]
**locked** | **Double** | Value of the current locked currency balance by the exchange. |  [optional]
**lastUpdatedBy** | [**LastUpdatedBy**](#LastUpdatedBy) | Source of the last modification.  |  [optional]
**rateUsd** | **Double** | Current exchange rate to the USD for the single unit of the currency.  |  [optional]
**traded** | **Double** | Value of the current total traded. |  [optional]


## Enum: LastUpdatedBy
Allowed values: [INITIALIZATION, BALANCE_MANAGER, EXCHANGE]




