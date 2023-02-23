
# BalanceDataInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetIdExchange** | **kotlin.String** | Exchange currency code. |  [optional]
**assetIdCoinapi** | **kotlin.String** | CoinAPI currency code. |  [optional]
**balance** | **kotlin.Double** | Value of the current total currency balance on the exchange. |  [optional]
**available** | **kotlin.Double** | Value of the current available currency balance on the exchange that can be used as collateral. |  [optional]
**locked** | **kotlin.Double** | Value of the current locked currency balance by the exchange. |  [optional]
**lastUpdatedBy** | [**inline**](#LastUpdatedBy) | Source of the last modification.  |  [optional]
**rateUsd** | **kotlin.Double** | Current exchange rate to the USD for the single unit of the currency.  |  [optional]
**traded** | **kotlin.Double** | Value of the current total traded. |  [optional]


<a name="LastUpdatedBy"></a>
## Enum: last_updated_by
Name | Value
---- | -----
lastUpdatedBy | INITIALIZATION, BALANCE_MANAGER, EXCHANGE



