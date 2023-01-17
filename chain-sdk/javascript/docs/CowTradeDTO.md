# OnChainDappsRestApi.CowTradeDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**timestamp** | **String** | Block&#39;s timestamp. | [optional] 
**gasPrice** | **String** | Transaction&#39;s gas price. | [optional] 
**gasLimit** | **String** | Transaction&#39;s gas limit. | [optional] 
**feeAmount** | **String** | Trade&#39;s fee amount. | [optional] 
**txHash** | **String** | Trade event transaction hash. | [optional] 
**settlement** | **String** | Reference to settlement. | [optional] 
**buyAmount** | **String** | Buy amount. | [optional] 
**sellAmount** | **String** | Sell amount. | [optional] 
**sellToken** | **String** | Address of token that is sold. | [optional] 
**buyToken** | **String** | Address of token that is bought. | [optional] 
**order** | **String** | Reference to order. | [optional] 
**vid** | **Number** |  | [optional] 
**poolId** | **String** |  | [optional] [readonly] 
**transactionId** | **String** |  | [optional] [readonly] 
**evaluatedPrice** | **Number** |  | [optional] [readonly] 
**evaluatedAmount** | **Number** |  | [optional] [readonly] 
**evaluatedAggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 


