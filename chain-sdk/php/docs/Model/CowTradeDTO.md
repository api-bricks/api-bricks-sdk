# # CowTradeDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
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
**evaluated_price** | **float** |  | [optional] [readonly]
**evaluated_amount** | **float** |  | [optional] [readonly]
**evaluated_aggressor** | [**\OpenAPI\Client\Model\TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
