

# DexPriceDTO

Token price in conjuction with batch id.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**entryTime** | **OffsetDateTime** |  |  [optional] |
|**recvTime** | **OffsetDateTime** |  |  [optional] |
|**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional] |
|**id** | **String** | Identifier, format: (token id)-(batch id). |  [optional] |
|**token** | **String** | Token identifier. |  [optional] |
|**batchId** | **String** | Batch identifier. |  [optional] |
|**priceInOwlNumerator** | **String** | Price enumerator in OWL (derivative of the GNO token). |  [optional] |
|**priceInOwlDenominator** | **String** | Price denominator in OWL (derivative of the GNO token). |  [optional] |
|**volume** | **String** | Volume. |  [optional] |
|**createEpoch** | **String** | Create epoch. |  [optional] |
|**txHash** | **String** | Transaction hash. |  [optional] |
|**vid** | **Long** |  |  [optional] |



