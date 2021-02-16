# openapi.model.OrderExecutionReportAllOf

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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


