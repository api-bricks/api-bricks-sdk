
# CoinAPI.EMS.REST.V1.Model.SushiswapMintDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**Transaction** | **string** | Reference to the transaction Mint was included in. | [optional] 
**Timestamp** | **string** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**Pair** | **string** | Reference to pair. | [optional] 
**To** | **string** | Recipient of liquidity tokens. | [optional] 
**Liquidity** | **string** | Amount of liquidity tokens minted. | [optional] 
**Sender** | **string** | Address that initiated the liquidity provision. | [optional] 
**Amount0** | **string** | Amount of token0 provided. | [optional] 
**Amount1** | **string** | Amount of token1 provided. | [optional] 
**LogIndex** | **string** | Index in the transaction event was emitted. | [optional] 
**AmountUsd** | **string** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**FeeTo** | **string** | Address of fee recipient (if fee is on). | [optional] 
**FeeLiquidity** | **string** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

