# # UniswapV3PoolHourDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**id** | **string** | Identifier, format: (pool address)-(day id) | [optional]
**period_start_unix** | **int** | Unix timestamp for start of hour. | [optional]
**pool** | **string** | Pointer to pool. | [optional]
**liquidity** | **string** | In range liquidity at end of period. | [optional]
**sqrt_price** | **string** | Current price tracker at end of period. | [optional]
**token_0_price** | **string** | Price of token0 - derived from sqrtPrice. | [optional]
**token_1_price** | **string** | Price of token1 - derived from sqrtPrice. | [optional]
**tick** | **string** | Current tick at end of period. | [optional]
**fee_growth_global_0x128** | **string** | Tracker for global fee growth. | [optional]
**fee_growth_global_1x128** | **string** | Tracker for global fee growth. | [optional]
**tvl_usd** | **string** | Total value locked derived in USD at end of period. | [optional]
**volume_token_0** | **string** | Volume in token0. | [optional]
**volume_token_1** | **string** | Volume in token1. | [optional]
**volume_usd** | **string** | Volume in USD. | [optional]
**fees_usd** | **string** | Fees in USD. | [optional]
**tx_count** | **string** | Number of transactions during period. | [optional]
**open** | **string** | Opening price of token0. | [optional]
**high** | **string** | High price of token0. | [optional]
**low** | **string** | Low price of token0. | [optional]
**close** | **string** | Close price of token0. | [optional]
**vid** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
