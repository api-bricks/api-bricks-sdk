# openapi.model.MessageReject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Message type, constant. | [optional] [default to null]
**rejectReason** | [**RejectReason**](RejectReason.md) |  | [optional] [default to null]
**exchangeId** | **String** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] [default to null]
**message** | **String** | Message text. | [optional] [default to null]
**rejectedMessage** | **String** | Value of rejected request, if available. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


