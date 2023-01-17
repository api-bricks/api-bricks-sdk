# WWW::OpenAPIClient::Object::UniswapV3SwapDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::UniswapV3SwapDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**vid** | **int** |  | [optional] 
**id** | **string** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
**transaction** | **string** | Pointer to transaction. | [optional] 
**timestamp** | **DATE_TIME** | Timestamp of transaction. | [optional] 
**pool** | **string** | Pool swap occured within. | [optional] 
**token_0** | **string** | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | **string** | Reference to token1 as stored in pair contract. | [optional] 
**sender** | **string** | Sender of the swap. | [optional] 
**recipient** | **string** | Recipient of the swap. | [optional] 
**origin** | **string** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] 
**amount_0** | **string** | Delta of token0 swapped. | [optional] 
**amount_1** | **string** | Delta of token1 swapped. | [optional] 
**amount_usd** | **string** | Derived amount of tokens sold in USD. | [optional] 
**sqrt_price_x96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**log_index** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**evaluated_price** | **double** |  | [optional] [readonly] 
**evaluated_amount** | **double** |  | [optional] [readonly] 
**evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 
**pool_id** | **string** |  | [optional] [readonly] 
**transaction_id** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


