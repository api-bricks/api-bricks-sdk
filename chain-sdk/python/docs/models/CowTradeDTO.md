# openapi_client.model.cow_trade_dto.CowTradeDTO

Trade entity.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Trade entity. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**timestamp** | None, str,  | NoneClass, str,  | Block&#x27;s timestamp. | [optional] 
**gas_price** | None, str,  | NoneClass, str,  | Transaction&#x27;s gas price. | [optional] 
**gas_limit** | None, str,  | NoneClass, str,  | Transaction&#x27;s gas limit. | [optional] 
**fee_amount** | None, str,  | NoneClass, str,  | Trade&#x27;s fee amount. | [optional] 
**tx_hash** | None, str,  | NoneClass, str,  | Trade event transaction hash. | [optional] 
**settlement** | None, str,  | NoneClass, str,  | Reference to settlement. | [optional] 
**buy_amount** | None, str,  | NoneClass, str,  | Buy amount. | [optional] 
**sell_amount** | None, str,  | NoneClass, str,  | Sell amount. | [optional] 
**sell_token** | None, str,  | NoneClass, str,  | Address of token that is sold. | [optional] 
**buy_token** | None, str,  | NoneClass, str,  | Address of token that is bought. | [optional] 
**order** | None, str,  | NoneClass, str,  | Reference to order. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**pool_id** | None, str,  | NoneClass, str,  |  | [optional] 
**transaction_id** | None, str,  | NoneClass, str,  |  | [optional] 
**evaluated_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float
**evaluated_amount** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float
**evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

