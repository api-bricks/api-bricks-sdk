
# SushiswapMintDTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** | Number of block in which entity was recorded. |  [optional]
**id** | **kotlin.String** | Identifier, format: (transaction hash)-(index in the transaction mint array). |  [optional]
**transaction** | **kotlin.String** | Reference to the transaction Mint was included in. |  [optional]
**timestamp** | **kotlin.String** | Timestamp of Mint, used to sort recent liquidity provisions. |  [optional]
**pair** | **kotlin.String** | Reference to pair. |  [optional]
**to** | **kotlin.String** | Recipient of liquidity tokens. |  [optional]
**liquidity** | **kotlin.String** | Amount of liquidity tokens minted. |  [optional]
**sender** | **kotlin.String** | Address that initiated the liquidity provision. |  [optional]
**amount0** | **kotlin.String** | Amount of token0 provided. |  [optional]
**amount1** | **kotlin.String** | Amount of token1 provided. |  [optional]
**logIndex** | **kotlin.String** | Index in the transaction event was emitted. |  [optional]
**amountUsd** | **kotlin.String** | Derived USD value of token0 amount plus token1 amount. |  [optional]
**feeTo** | **kotlin.String** | Address of fee recipient (if fee is on). |  [optional]
**feeLiquidity** | **kotlin.String** | Amount of liquidity sent to fee recipient (if fee is on). |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



