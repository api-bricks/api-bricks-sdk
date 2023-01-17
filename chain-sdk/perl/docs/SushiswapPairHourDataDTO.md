# WWW::OpenAPIClient::Object::SushiswapPairHourDataDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::SushiswapPairHourDataDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **string** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**date** | **int** | Hour start timestamp. | [optional] 
**pair** | **string** | Reference to pair. | [optional] 
**reserve_0** | **string** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**reserve_1** | **string** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**reserve_usd** | **string** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**volume_token_0** | **string** | Total amount of token0 swapped throughout hour. | [optional] 
**volume_token_1** | **string** | Total amount of token1 swapped throughout hour. | [optional] 
**volume_usd** | **string** | Total volume within pair throughout hour. | [optional] 
**tx_count** | **string** | Amount of transactions on pair throughout hour. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


