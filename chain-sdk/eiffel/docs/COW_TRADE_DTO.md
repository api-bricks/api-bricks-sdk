# COW_TRADE_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** | Number of block in which entity was recorded. | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] [default to null]
**timestamp** | [**STRING_32**](STRING_32.md) | Block&#39;s timestamp. | [optional] [default to null]
**gas_price** | [**STRING_32**](STRING_32.md) | Transaction&#39;s gas price. | [optional] [default to null]
**gas_limit** | [**STRING_32**](STRING_32.md) | Transaction&#39;s gas limit. | [optional] [default to null]
**fee_amount** | [**STRING_32**](STRING_32.md) | Trade&#39;s fee amount. | [optional] [default to null]
**tx_hash** | [**STRING_32**](STRING_32.md) | Trade event transaction hash. | [optional] [default to null]
**settlement** | [**STRING_32**](STRING_32.md) | Reference to settlement. | [optional] [default to null]
**buy_amount** | [**STRING_32**](STRING_32.md) | Buy amount. | [optional] [default to null]
**sell_amount** | [**STRING_32**](STRING_32.md) | Sell amount. | [optional] [default to null]
**sell_token** | [**STRING_32**](STRING_32.md) | Address of token that is sold. | [optional] [default to null]
**buy_token** | [**STRING_32**](STRING_32.md) | Address of token that is bought. | [optional] [default to null]
**order** | [**STRING_32**](STRING_32.md) | Reference to order. | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]
**pool_id** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]
**transaction_id** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]
**evaluated_price** | **REAL_64** |  | [optional] [readonly] [default to null]
**evaluated_amount** | **REAL_64** |  | [optional] [readonly] [default to null]
**evaluated_aggressor** | [**TRANSACTIONS_E_TRADE_AGGRESSIVE_SIDE**](Transactions.ETradeAggressiveSide.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


