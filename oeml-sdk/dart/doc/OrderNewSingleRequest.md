# openapi.model.OrderNewSingleRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange identifier used to identify the routing destination. | 
**clientOrderId** | **String** | The unique identifier of the order assigned by the client. | 
**symbolIdExchange** | **String** | Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. | [optional] 
**symbolIdCoinapi** | **String** | CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. | [optional] 
**amountOrder** | **num** | Order quantity. | 
**price** | **num** | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**orderType** | [**OrdType**](OrdType.md) |  | 
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**expireTime** | [**DateTime**](DateTime.md) | Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. | [optional] 
**execInst** | **List<String>** | Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


