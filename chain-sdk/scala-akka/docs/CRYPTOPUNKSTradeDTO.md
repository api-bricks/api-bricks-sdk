

# TradeDTO

Trade for a single user, as part of a ring trade. It's part of the solution submitted by a solver for a given batch.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **OffsetDateTime** |  |  [optional]
**recvTime** | **OffsetDateTime** |  |  [optional]
**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional]
**id** | **String** |  |  [optional]
**order** | **String** |  |  [optional]
**owner** | **String** |  |  [optional]
**sellVolume** | **String** |  |  [optional]
**buyVolume** | **String** |  |  [optional]
**tradeBatchId** | **String** |  |  [optional]
**tradeEpoch** | **String** | The date of the end of the batch. |  [optional]
**buyToken** | **String** |  |  [optional]
**sellToken** | **String** |  |  [optional]
**createEpoch** | **String** | The date where the transaction was mined. |  [optional]
**revertEpoch** | **String** |  |  [optional]
**txHash** | **String** |  |  [optional]
**txLogIndex** | **String** |  |  [optional]
**vid** | **Long** |  |  [optional]
**poolId** | **String** |  |  [optional] [readonly]
**transactionId** | **String** |  |  [optional] [readonly]
**evaluatedPrice** | **Double** |  |  [optional] [readonly]
**evaluatedAmount** | **Double** |  |  [optional] [readonly]
**evaluatedAggressor** | **ETradeAggressiveSide** |  |  [optional]



