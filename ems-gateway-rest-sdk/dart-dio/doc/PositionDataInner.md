# openapi.model.PositionDataInner

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbolIdExchange** | **String** | Exchange symbol. | [optional] 
**symbolIdCoinapi** | **String** | CoinAPI symbol. | [optional] 
**avgEntryPrice** | **num** | Calculated average price of all fills on this position. | [optional] 
**quantity** | **num** | The current position quantity. | [optional] 
**side** | [**OrdSide**](OrdSide.md) |  | [optional] 
**unrealizedPnl** | **num** | Unrealised profit or loss (PNL) of this position. | [optional] 
**leverage** | **num** | Leverage for this position reported by the exchange. | [optional] 
**crossMargin** | **bool** | Is cross margin mode enable for this position? | [optional] 
**liquidationPrice** | **num** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**rawData** | [**JsonObject**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


