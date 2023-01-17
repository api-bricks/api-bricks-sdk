# WWW::OpenAPIClient::Object::SushiswapBurnDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::SushiswapBurnDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **string** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**transaction** | **string** | Reference to the transaction Burn was included in. | [optional] 
**timestamp** | **string** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**pair** | **string** | Reference to pair. | [optional] 
**liquidity** | **string** | Amount of liquidity tokens burned. | [optional] 
**sender** | **string** | Address that initiated the liquidity removal. | [optional] 
**amount_0** | **string** | Amount of token0 removed. | [optional] 
**amount_1** | **string** | Amount of token1 removed. | [optional] 
**to** | **string** | Recipient of tokens. | [optional] 
**log_index** | **string** | Index in the transaction event was emitted. | [optional] 
**amount_usd** | **string** | Derived amount based on available prices of tokens. | [optional] 
**complete** | **boolean** |  | [optional] 
**fee_to** | **string** | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | **string** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


