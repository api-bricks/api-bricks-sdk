# openapi.model.CowTradeDTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**DateTime**](DateTime.md) |  | [optional] 
**recvTime** | [**DateTime**](DateTime.md) |  | [optional] 
**blockNumber** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**timestamp** | **String** | Block's timestamp. | [optional] 
**gasPrice** | **String** | Transaction's gas price. | [optional] 
**gasLimit** | **String** | Transaction's gas limit. | [optional] 
**feeAmount** | **String** | Trade's fee amount. | [optional] 
**txHash** | **String** | Trade event transaction hash. | [optional] 
**settlement** | **String** | Reference to settlement. | [optional] 
**buyAmount** | **String** | Buy amount. | [optional] 
**sellAmount** | **String** | Sell amount. | [optional] 
**sellToken** | **String** | Address of token that is sold. | [optional] 
**buyToken** | **String** | Address of token that is bought. | [optional] 
**order** | **String** | Reference to order. | [optional] 
**vid** | **int** |  | [optional] 
**poolId** | **String** |  | [optional] 
**transactionId** | **String** |  | [optional] 
**evaluatedPrice** | **double** |  | [optional] 
**evaluatedAmount** | **double** |  | [optional] 
**evaluatedAggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


