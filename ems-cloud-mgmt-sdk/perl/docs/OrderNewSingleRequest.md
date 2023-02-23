# WWW::OpenAPIClient::Object::OrderNewSingleRequest

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OrderNewSingleRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **string** | Exchange identifier used to identify the routing destination. | 
**client_order_id** | **string** | The unique identifier of the order assigned by the client. | 
**symbol_id_exchange** | **string** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**symbol_id_coinapi** | **string** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**amount_order** | **double** | Order quantity. | 
**price** | **double** | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**order_type** | [**OrdType**](OrdType.md) |  | 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | 
**expire_time** | **DATE** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | **ARRAY[string]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


