# WWW::OpenAPIClient::Object::SushiswapMintDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::SushiswapMintDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **string** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**transaction** | **string** | Reference to the transaction Mint was included in. | [optional] 
**timestamp** | **string** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**pair** | **string** | Reference to pair. | [optional] 
**to** | **string** | Recipient of liquidity tokens. | [optional] 
**liquidity** | **string** | Amount of liquidity tokens minted. | [optional] 
**sender** | **string** | Address that initiated the liquidity provision. | [optional] 
**amount_0** | **string** | Amount of token0 provided. | [optional] 
**amount_1** | **string** | Amount of token1 provided. | [optional] 
**log_index** | **string** | Index in the transaction event was emitted. | [optional] 
**amount_usd** | **string** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**fee_to** | **string** | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | **string** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


