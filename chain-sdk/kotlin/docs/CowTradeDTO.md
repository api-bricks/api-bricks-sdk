
# CowTradeDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (order id)|(transaction hash)|(event index). |  [optional]
**timestamp** | **kotlin.String** | Block&#39;s timestamp. |  [optional]
**gasPrice** | **kotlin.String** | Transaction&#39;s gas price. |  [optional]
**gasLimit** | **kotlin.String** | Transaction&#39;s gas limit. |  [optional]
**feeAmount** | **kotlin.String** | Trade&#39;s fee amount. |  [optional]
**txHash** | **kotlin.String** | Trade event transaction hash. |  [optional]
**settlement** | **kotlin.String** | Reference to settlement. |  [optional]
**buyAmount** | **kotlin.String** | Buy amount. |  [optional]
**sellAmount** | **kotlin.String** | Sell amount. |  [optional]
**sellToken** | **kotlin.String** | Address of token that is sold. |  [optional]
**buyToken** | **kotlin.String** | Address of token that is bought. |  [optional]
**order** | **kotlin.String** | Reference to order. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**poolId** | **kotlin.String** |  |  [optional] [readonly]
**transactionId** | **kotlin.String** |  |  [optional] [readonly]
**evaluatedPrice** | **kotlin.Double** |  |  [optional] [readonly]
**evaluatedAmount** | **kotlin.Double** |  |  [optional] [readonly]
**evaluatedAggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  |  [optional]



