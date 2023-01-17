# WWW::OpenAPIClient::Object::CowTradeDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CowTradeDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **string** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**timestamp** | **string** | Block&#39;s timestamp. | [optional] 
**gas_price** | **string** | Transaction&#39;s gas price. | [optional] 
**gas_limit** | **string** | Transaction&#39;s gas limit. | [optional] 
**fee_amount** | **string** | Trade&#39;s fee amount. | [optional] 
**tx_hash** | **string** | Trade event transaction hash. | [optional] 
**settlement** | **string** | Reference to settlement. | [optional] 
**buy_amount** | **string** | Buy amount. | [optional] 
**sell_amount** | **string** | Sell amount. | [optional] 
**sell_token** | **string** | Address of token that is sold. | [optional] 
**buy_token** | **string** | Address of token that is bought. | [optional] 
**order** | **string** | Reference to order. | [optional] 
**vid** | **int** |  | [optional] 
**pool_id** | **string** |  | [optional] [readonly] 
**transaction_id** | **string** |  | [optional] [readonly] 
**evaluated_price** | **double** |  | [optional] [readonly] 
**evaluated_amount** | **double** |  | [optional] [readonly] 
**evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


