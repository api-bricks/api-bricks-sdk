
# CoinAPI.EMS.REST.V1.Model.CowTradeDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**Timestamp** | **string** | Block&#39;s timestamp. | [optional] 
**GasPrice** | **string** | Transaction&#39;s gas price. | [optional] 
**GasLimit** | **string** | Transaction&#39;s gas limit. | [optional] 
**FeeAmount** | **string** | Trade&#39;s fee amount. | [optional] 
**TxHash** | **string** | Trade event transaction hash. | [optional] 
**Settlement** | **string** | Reference to settlement. | [optional] 
**BuyAmount** | **string** | Buy amount. | [optional] 
**SellAmount** | **string** | Sell amount. | [optional] 
**SellToken** | **string** | Address of token that is sold. | [optional] 
**BuyToken** | **string** | Address of token that is bought. | [optional] 
**Order** | **string** | Reference to order. | [optional] 
**Vid** | **long** |  | [optional] 
**PoolId** | **string** |  | [optional] [readonly] 
**TransactionId** | **string** |  | [optional] [readonly] 
**EvaluatedPrice** | **double** |  | [optional] [readonly] 
**EvaluatedAmount** | **double** |  | [optional] [readonly] 
**EvaluatedAggressor** | **TransactionsETradeAggressiveSide** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

