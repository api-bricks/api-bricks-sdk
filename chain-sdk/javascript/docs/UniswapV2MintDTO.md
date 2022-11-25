# OnChainDappsRestApi.UniswapV2MintDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Transaction hash plus index in the transaction mint array. | [optional] 
**transaction** | **String** | Reference to the transaction Mint was included in. | [optional] 
**timestamp** | **String** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**pair** | **String** | Reference to pair. | [optional] 
**to** | **String** | Recipient of liquidity tokens. | [optional] 
**liquidity** | **String** | Amount of liquidity tokens minted. | [optional] 
**sender** | **String** | Address that initiated the liquidity provision. | [optional] 
**amount0** | **String** | Amount of token0 provided. | [optional] 
**amount1** | **String** | Amount of token1 provided. | [optional] 
**logIndex** | **String** | Index in the transaction event was emitted. | [optional] 
**amountUsd** | **String** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**feeTo** | **String** | Address of fee recipient (if fee is on). | [optional] 
**feeLiquidity** | **String** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**vid** | **Number** |  | [optional] 
**blockRange** | **String** |  | [optional] 


