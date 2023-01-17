# cow_trade_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** | Number of block in which entity was recorded. | [optional] 
**id** | **char \*** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**timestamp** | **char \*** | Block&#39;s timestamp. | [optional] 
**gas_price** | **char \*** | Transaction&#39;s gas price. | [optional] 
**gas_limit** | **char \*** | Transaction&#39;s gas limit. | [optional] 
**fee_amount** | **char \*** | Trade&#39;s fee amount. | [optional] 
**tx_hash** | **char \*** | Trade event transaction hash. | [optional] 
**settlement** | **char \*** | Reference to settlement. | [optional] 
**buy_amount** | **char \*** | Buy amount. | [optional] 
**sell_amount** | **char \*** | Sell amount. | [optional] 
**sell_token** | **char \*** | Address of token that is sold. | [optional] 
**buy_token** | **char \*** | Address of token that is bought. | [optional] 
**order** | **char \*** | Reference to order. | [optional] 
**vid** | **long** |  | [optional] 
**pool_id** | **char \*** |  | [optional] [readonly] 
**transaction_id** | **char \*** |  | [optional] [readonly] 
**evaluated_price** | **double** |  | [optional] [readonly] 
**evaluated_amount** | **double** |  | [optional] [readonly] 
**evaluated_aggressor** | **transactions_e_trade_aggressive_side_t \*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


