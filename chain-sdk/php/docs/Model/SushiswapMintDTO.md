# # SushiswapMintDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**id** | **string** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional]
**transaction** | **string** | Reference to the transaction Mint was included in. | [optional]
**timestamp** | **string** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional]
**pair** | **string** | Reference to pair. | [optional]
**to** | **string** | Recipient of liquidity tokens. | [optional]
**liquidity** | **string** | Amount of liquidity tokens minted. | [optional]
**sender** | **string** | Address that initiated the liquidity provision. | [optional]
**amount_0** | **string** | Amount of token0 provided. | [optional]
**amount_1** | **string** | Amount of token1 provided. | [optional]
**log_index** | **string** | Index in the transaction event was emitted. | [optional]
**amount_usd** | **string** | Derived USD value of token0 amount plus token1 amount. | [optional]
**fee_to** | **string** | Address of fee recipient (if fee is on). | [optional]
**fee_liquidity** | **string** | Amount of liquidity sent to fee recipient (if fee is on). | [optional]
**vid** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
