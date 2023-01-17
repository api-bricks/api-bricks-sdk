# OpenapiClient::UniswapV3PositionSnapshotDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | NFT token identifier, format: (NFT token id)#(block number). | [optional] |
| **owner** | **String** | Owner of the NFT. | [optional] |
| **pool** | **String** | Pool the position is within. | [optional] |
| **position** | **String** | Position of which the snap was taken of. | [optional] |
| **timestamp** | **String** | Timestamp of block in which the snap was created. | [optional] |
| **liquidity** | **String** | Total position liquidity. | [optional] |
| **deposited_token_0** | **String** | Amount of token 0 ever deposited to position. | [optional] |
| **deposited_token_1** | **String** | Amount of token 1 ever deposited to position. | [optional] |
| **withdrawn_token_0** | **String** | Amount of token 0 ever withdrawn from position (without fees). | [optional] |
| **withdrawn_token_1** | **String** | Amount of token 1 ever withdrawn from position (without fees). | [optional] |
| **collected_fees_token_0** | **String** | All time collected fees in token0. | [optional] |
| **collected_fees_token_1** | **String** | All time collected fees in token1. | [optional] |
| **transaction** | **String** | Transaction in which the snapshot was initialized. | [optional] |
| **fee_growth_inside_0_last_x128** | **String** | Variable needed for fee computation. | [optional] |
| **fee_growth_inside_1_last_x128** | **String** | Variable needed for fee computation. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapV3PositionSnapshotDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  owner: null,
  pool: null,
  position: null,
  timestamp: null,
  liquidity: null,
  deposited_token_0: null,
  deposited_token_1: null,
  withdrawn_token_0: null,
  withdrawn_token_1: null,
  collected_fees_token_0: null,
  collected_fees_token_1: null,
  transaction: null,
  fee_growth_inside_0_last_x128: null,
  fee_growth_inside_1_last_x128: null,
  vid: null
)
```

