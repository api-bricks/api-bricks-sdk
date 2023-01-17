# # UniswapV3TickDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**vid** | **int** |  | [optional]
**id** | **string** | Identifier, format: (pool address)#(tick index) | [optional]
**pool_address** | **string** | Pool address. | [optional]
**tick_idx** | [**\OpenAPI\Client\Model\NumericsBigInteger**](NumericsBigInteger.md) |  | [optional]
**pool** | **string** | Pool address. | [optional]
**liquidity_gross** | [**\OpenAPI\Client\Model\NumericsBigInteger**](NumericsBigInteger.md) |  | [optional]
**liquidity_net** | [**\OpenAPI\Client\Model\NumericsBigInteger**](NumericsBigInteger.md) |  | [optional]
**price_0** | **string** | Calculated price of token0 of tick within this pool - constant. | [optional]
**price_1** | **string** | Calculated price of token1 of tick within this pool - constant. | [optional]
**volume_token_0** | **string** | Lifetime volume of token0 with this tick in range. | [optional]
**volume_token_1** | **string** | Lifetime volume of token1 with this tick in range. | [optional]
**volume_usd** | **string** | Lifetime volume in derived USD with this tick in range. | [optional]
**untracked_volume_usd** | **string** | Lifetime volume in untracked USD with this tick in range. | [optional]
**fees_usd** | **string** | Fees in USD. | [optional]
**collected_fees_token_0** | **string** | All time collected fees in token0. | [optional]
**collected_fees_token_1** | **string** | All time collected fees in token1. | [optional]
**collected_fees_usd** | **string** | All time collected fees in USD. | [optional]
**created_at_timestamp** | **\DateTime** | Created time. | [optional]
**liquidity_provider_count** | [**\OpenAPI\Client\Model\NumericsBigInteger**](NumericsBigInteger.md) |  | [optional]
**fee_growth_outside_0x128** | [**\OpenAPI\Client\Model\NumericsBigInteger**](NumericsBigInteger.md) |  | [optional]
**fee_growth_outside_1x128** | [**\OpenAPI\Client\Model\NumericsBigInteger**](NumericsBigInteger.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
