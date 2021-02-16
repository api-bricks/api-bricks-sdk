# openapi.model.OrderExecutionReport

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
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amountOpen** | **num** | Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` | 
**amountFilled** | **num** | Total quantity filled. | 
**avgPx** | **num** | Calculated average price of all fills on this order. | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**statusHistory** | [**List<List<String>>**](List.md) | Timestamped history of order status changes. | [optional] [default to const []]
**errorMessage** | **String** | Error message. | [optional] 
**fills** | [**List<Fills>**](Fills.md) | Relay fill information on working orders. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


