# sushiswap_burn_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**transaction** | **char \*** | Reference to the transaction Burn was included in. | [optional] 
**timestamp** | **char \*** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 
**liquidity** | **char \*** | Amount of liquidity tokens burned. | [optional] 
**sender** | **char \*** | Address that initiated the liquidity removal. | [optional] 
**amount_0** | **char \*** | Amount of token0 removed. | [optional] 
**amount_1** | **char \*** | Amount of token1 removed. | [optional] 
**to** | **char \*** | Recipient of tokens. | [optional] 
**log_index** | **char \*** | Index in the transaction event was emitted. | [optional] 
**amount_usd** | **char \*** | Derived amount based on available prices of tokens. | [optional] 
**complete** | **int** |  | [optional] 
**fee_to** | **char \*** | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | **char \*** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


