# # UniswapV3TickDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** | Number of block in which entity was recorded. | [optional]
**id** | **string** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional]
**date** | **int** | Timestamp rounded to current day by dividing by 86400. | [optional]
**pool** | **string** | Pointer to pool. | [optional]
**tick** | **string** | Pointer to tick. | [optional]
**liquidity_gross** | **string** | Total liquidity pool has as tick lower or upper at end of period. | [optional]
**liquidity_net** | **string** | How much liquidity changes when tick crossed at end of period. | [optional]
**volume_token_0** | **string** | Hourly volume of token0 with this tick in range. | [optional]
**volume_token_1** | **string** | Hourly volume of token1 with this tick in range. | [optional]
**volume_usd** | **string** | Hourly volume in derived USD with this tick in range. | [optional]
**fees_usd** | **string** | Fees in USD. | [optional]
**fee_growth_outside_0x128** | **string** | Variable needed for fee computation. | [optional]
**fee_growth_outside_1x128** | **string** | Variable needed for fee computation. | [optional]
**vid** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
