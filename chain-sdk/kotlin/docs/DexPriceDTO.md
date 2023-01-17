
# DexPriceDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (token id)-(batch id). |  [optional]
**token** | **kotlin.String** | Token identifier. |  [optional]
**batchId** | **kotlin.String** | Batch identifier. |  [optional]
**priceInOwlNumerator** | **kotlin.String** | Price enumerator in OWL (derivative of the GNO token). |  [optional]
**priceInOwlDenominator** | **kotlin.String** | Price denominator in OWL (derivative of the GNO token). |  [optional]
**volume** | **kotlin.String** | Volume. |  [optional]
**createEpoch** | **kotlin.String** | Create epoch. |  [optional]
**txHash** | **kotlin.String** | Transaction hash. |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



