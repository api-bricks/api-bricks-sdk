# openapi.model.OrderExecutionReport

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange identifier used to identify the routing destination. | [default to null]
**clientOrderId** | **String** | The unique identifier of the order assigned by the client. | [default to null]
**symbolIdExchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**symbolIdCoinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**amountOrder** | **num** | Order quantity. | [default to null]
**price** | **num** | Order price. | [default to null]
**side** | [**OrdSide**](OrdSide.md) |  | [default to null]
**orderType** | [**OrdType**](OrdType.md) |  | [default to null]
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | [default to null]
**expireTime** | [**DateTime**](DateTime.md) | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] [default to null]
**execInst** | **List&lt;String&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] [default to const []]
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | [default to null]
**exchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] [default to null]
**amountOpen** | **num** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | [default to null]
**amountFilled** | **num** | Total quantity filled. | [default to null]
**avgPx** | **num** | Calculated average price of all fills on this order. | [optional] [default to null]
**status** | [**OrdStatus**](OrdStatus.md) |  | [default to null]
**statusHistory** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | Timestamped history of order status changes. | [optional] [default to const []]
**errorMessage** | **String** | Error message. | [optional] [default to null]
**fills** | [**List&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


