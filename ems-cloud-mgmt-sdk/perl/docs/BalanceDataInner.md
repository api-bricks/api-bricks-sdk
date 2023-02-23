# WWW::OpenAPIClient::Object::BalanceDataInner

## Load the model package
```perl
use WWW::OpenAPIClient::Object::BalanceDataInner;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_exchange** | **string** | Exchange currency code. | [optional] 
**asset_id_coinapi** | **string** | CoinAPI currency code. | [optional] 
**balance** | **double** | Value of the current total currency balance on the exchange. | [optional] 
**available** | **double** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**locked** | **double** | Value of the current locked currency balance by the exchange. | [optional] 
**last_updated_by** | **string** | Source of the last modification.  | [optional] 
**rate_usd** | **double** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**traded** | **double** | Value of the current total traded. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


