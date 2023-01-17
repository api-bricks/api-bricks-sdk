
# SushiswapBurnDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (transaction id):(transaction.burns.length). |  [optional]
**transaction** | **kotlin.String** | Reference to the transaction Burn was included in. |  [optional]
**timestamp** | **kotlin.String** | Timestamp of Burn, used to sort recent liquidity removals. |  [optional]
**pair** | **kotlin.String** | Reference to pair. |  [optional]
**liquidity** | **kotlin.String** | Amount of liquidity tokens burned. |  [optional]
**sender** | **kotlin.String** | Address that initiated the liquidity removal. |  [optional]
**amount0** | **kotlin.String** | Amount of token0 removed. |  [optional]
**amount1** | **kotlin.String** | Amount of token1 removed. |  [optional]
**to** | **kotlin.String** | Recipient of tokens. |  [optional]
**logIndex** | **kotlin.String** | Index in the transaction event was emitted. |  [optional]
**amountUsd** | **kotlin.String** | Derived amount based on available prices of tokens. |  [optional]
**complete** | **kotlin.Boolean** |  |  [optional]
**feeTo** | **kotlin.String** | Address of fee recipient (if fee is on). |  [optional]
**feeLiquidity** | **kotlin.String** | Amount of tokens sent to fee recipient (if fee is on). |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



