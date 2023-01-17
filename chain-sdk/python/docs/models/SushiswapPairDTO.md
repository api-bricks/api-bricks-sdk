# openapi_client.model.sushiswap_pair_dto.SushiswapPairDTO

Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Pair contract address. | [optional] 
**factory** | None, str,  | NoneClass, str,  | Factory contract address. | [optional] 
**name** | None, str,  | NoneClass, str,  | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**token_0** | None, str,  | NoneClass, str,  | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | None, str,  | NoneClass, str,  | Reference to token0 as stored in pair contract. | [optional] 
**reserve_0** | None, str,  | NoneClass, str,  | Reserve of token0. | [optional] 
**reserve_1** | None, str,  | NoneClass, str,  | Reserve of token1. | [optional] 
**total_supply** | None, str,  | NoneClass, str,  | Total supply of liquidity token distributed to LPs. | [optional] 
**reserve_eth** | None, str,  | NoneClass, str,  | Total liquidity in pair stored as an amount of ETH. | [optional] 
**reserve_usd** | None, str,  | NoneClass, str,  | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**tracked_reserve_eth** | None, str,  | NoneClass, str,  | Total liquidity with only tracked amount. | [optional] 
**token_0_price** | None, str,  | NoneClass, str,  | Token0 per token1. | [optional] 
**token_1_price** | None, str,  | NoneClass, str,  | Token1 per token0. | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  | Amount of token0 swapped on this pair. | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  | Amount of token1 swapped on this pair. | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**tx_count** | None, str,  | NoneClass, str,  | All time amount of transactions on this pair. | [optional] 
**liquidity_provider_count** | None, str,  | NoneClass, str,  | Total number of LPs. | [optional] 
**timestamp** | None, str,  | NoneClass, str,  | Timestamp. | [optional] 
**block** | None, str,  | NoneClass, str,  | Block number in which pair information was created in. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**evaluated_ask** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

