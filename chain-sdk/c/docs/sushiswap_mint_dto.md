# sushiswap_mint_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**transaction** | **char \*** | Reference to the transaction Mint was included in. | [optional] 
**timestamp** | **char \*** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 
**to** | **char \*** | Recipient of liquidity tokens. | [optional] 
**liquidity** | **char \*** | Amount of liquidity tokens minted. | [optional] 
**sender** | **char \*** | Address that initiated the liquidity provision. | [optional] 
**amount_0** | **char \*** | Amount of token0 provided. | [optional] 
**amount_1** | **char \*** | Amount of token1 provided. | [optional] 
**log_index** | **char \*** | Index in the transaction event was emitted. | [optional] 
**amount_usd** | **char \*** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**fee_to** | **char \*** | Address of fee recipient (if fee is on). | [optional] 
**fee_liquidity** | **char \*** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


