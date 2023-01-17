# OpenapiClient::UniswapV2LiquidityPositionSnapshotDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pair address)-(user address) | [optional] |
| **liquidity_position** | **String** | Reference to LP identifier. | [optional] |
| **timestamp** | **Integer** | Creation time. | [optional] |
| **block** | **Integer** | Number of block in which LP snapshot was recorded. | [optional] |
| **user** | **String** | Reference to user. | [optional] |
| **pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] |
| **token_0_price_usd** | **String** | Snapshot of token0 price. | [optional] |
| **token_1_price_usd** | **String** | Snapshot of token0 price. | [optional] |
| **reserve_0** | **String** | Snapshot of pair token0 reserves. | [optional] |
| **reserve_1** | **String** | Snapshot of pair token1 reserves. | [optional] |
| **reserve_usd** | **String** | Snapshot of pair reserves in USD. | [optional] |
| **liquidity_token_total_supply** | **String** | Snapshot of pool token supply. | [optional] |
| **liquidity_token_balance** | **String** | Snapshot of users pool token balance. | [optional] |
| **vid** | **Integer** |  | [optional] |
| **block_range** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapV2LiquidityPositionSnapshotDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  liquidity_position: null,
  timestamp: null,
  block: null,
  user: null,
  pair: null,
  token_0_price_usd: null,
  token_1_price_usd: null,
  reserve_0: null,
  reserve_1: null,
  reserve_usd: null,
  liquidity_token_total_supply: null,
  liquidity_token_balance: null,
  vid: null,
  block_range: null
)
```

