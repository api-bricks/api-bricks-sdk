# # SushiswapPairDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**id** | **string** | Identifier, format: (pair id)-(day start timestamp). | [optional]
**date** | **int** | Unix timestamp for start of day. | [optional]
**pair** | **string** | Reference to pair. | [optional]
**token_0** | **string** | Reference to token0. | [optional]
**token_1** | **string** | Reference to token1. | [optional]
**reserve_0** | **string** | Reserve of token0 (updated during each transaction on pair). | [optional]
**reserve_1** | **string** | Reserve of token1 (updated during each transaction on pair). | [optional]
**total_supply** | **string** | Total supply of liquidity token distributed to LPs. | [optional]
**reserve_usd** | **string** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional]
**volume_token_0** | **string** | Total amount of token0 swapped throughout day. | [optional]
**volume_token_1** | **string** | Total amount of token1 swapped throughout day. | [optional]
**volume_usd** | **string** | Total volume within pair throughout day. | [optional]
**tx_count** | **string** | Amount of transactions on pair throughout day. | [optional]
**vid** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
