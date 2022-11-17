# OpenapiClient::SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**curve_get_exchanges__current**](SushiswapApi.md#curve_get_exchanges__current) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥 |
| [**dex_get_trades__current**](SushiswapApi.md#dex_get_trades__current) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥 |
| [**sushiswap_bundles__current**](SushiswapApi.md#sushiswap_bundles__current) | **GET** /dapps/sushiswap/bundles/current | Bundles (current) |
| [**sushiswap_burns__current**](SushiswapApi.md#sushiswap_burns__current) | **GET** /dapps/sushiswap/burns/current | Burns (current) |
| [**sushiswap_day_datas__current**](SushiswapApi.md#sushiswap_day_datas__current) | **GET** /dapps/sushiswap/dayDatas/current | DayDatas (current) |
| [**sushiswap_factorys__current**](SushiswapApi.md#sushiswap_factorys__current) | **GET** /dapps/sushiswap/factorys/current | Factorys (current) |
| [**sushiswap_get_bundles__historical**](SushiswapApi.md#sushiswap_get_bundles__historical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥 |
| [**sushiswap_get_burns__historical**](SushiswapApi.md#sushiswap_get_burns__historical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥 |
| [**sushiswap_get_day_datas__historical**](SushiswapApi.md#sushiswap_get_day_datas__historical) | **GET** /dapps/sushiswap/dayDatas/historical | DayDatas (historical) 🔥 |
| [**sushiswap_get_factorys__historical**](SushiswapApi.md#sushiswap_get_factorys__historical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥 |
| [**sushiswap_get_hour_datas__historical**](SushiswapApi.md#sushiswap_get_hour_datas__historical) | **GET** /dapps/sushiswap/hourDatas/historical | HourDatas (historical) 🔥 |
| [**sushiswap_get_liquidity_position_snapshots__historical**](SushiswapApi.md#sushiswap_get_liquidity_position_snapshots__historical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥 |
| [**sushiswap_get_liquidity_positions__historical**](SushiswapApi.md#sushiswap_get_liquidity_positions__historical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) 🔥 |
| [**sushiswap_get_mints__historical**](SushiswapApi.md#sushiswap_get_mints__historical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥 |
| [**sushiswap_get_pair_day_datas__historical**](SushiswapApi.md#sushiswap_get_pair_day_datas__historical) | **GET** /dapps/sushiswap/pairDayDatas/historical | PairDayDatas (historical) 🔥 |
| [**sushiswap_get_pair_hour_datas__historical**](SushiswapApi.md#sushiswap_get_pair_hour_datas__historical) | **GET** /dapps/sushiswap/pairHourDatas/historical | PairHourDatas (historical) 🔥 |
| [**sushiswap_get_pairs__historical**](SushiswapApi.md#sushiswap_get_pairs__historical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥 |
| [**sushiswap_get_pools__current**](SushiswapApi.md#sushiswap_get_pools__current) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥 |
| [**sushiswap_get_swaps__historical**](SushiswapApi.md#sushiswap_get_swaps__historical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥 |
| [**sushiswap_get_token_day_datas__historical**](SushiswapApi.md#sushiswap_get_token_day_datas__historical) | **GET** /dapps/sushiswap/tokenDayDatas/historical | TokenDayDatas (historical) 🔥 |
| [**sushiswap_get_tokens__historical**](SushiswapApi.md#sushiswap_get_tokens__historical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥 |
| [**sushiswap_get_transactions__historical**](SushiswapApi.md#sushiswap_get_transactions__historical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥 |
| [**sushiswap_get_users__historical**](SushiswapApi.md#sushiswap_get_users__historical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥 |
| [**sushiswap_hour_datas__current**](SushiswapApi.md#sushiswap_hour_datas__current) | **GET** /dapps/sushiswap/hourDatas/current | HourDatas (current) |
| [**sushiswap_liquidity_position_snapshots__current**](SushiswapApi.md#sushiswap_liquidity_position_snapshots__current) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current) |
| [**sushiswap_liquidity_positions__current**](SushiswapApi.md#sushiswap_liquidity_positions__current) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current) |
| [**sushiswap_mints__current**](SushiswapApi.md#sushiswap_mints__current) | **GET** /dapps/sushiswap/mints/current | Mints (current) |
| [**sushiswap_pair_day_datas__current**](SushiswapApi.md#sushiswap_pair_day_datas__current) | **GET** /dapps/sushiswap/pairDayDatas/current | PairDayDatas (current) |
| [**sushiswap_pair_hour_datas__current**](SushiswapApi.md#sushiswap_pair_hour_datas__current) | **GET** /dapps/sushiswap/pairHourDatas/current | PairHourDatas (current) |
| [**sushiswap_pairs__current**](SushiswapApi.md#sushiswap_pairs__current) | **GET** /dapps/sushiswap/pairs/current | Pairs (current) |
| [**sushiswap_swaps__current**](SushiswapApi.md#sushiswap_swaps__current) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) |
| [**sushiswap_token_day_datas__current**](SushiswapApi.md#sushiswap_token_day_datas__current) | **GET** /dapps/sushiswap/tokenDayDatas/current | TokenDayDatas (current) |
| [**sushiswap_tokens__current**](SushiswapApi.md#sushiswap_tokens__current) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) |
| [**sushiswap_transactions__current**](SushiswapApi.md#sushiswap_transactions__current) | **GET** /dapps/sushiswap/transactions/current | Transactions (current) |
| [**sushiswap_users__current**](SushiswapApi.md#sushiswap_users__current) | **GET** /dapps/sushiswap/users/current | Users (current) |


## curve_get_exchanges__current

> <Array<CurveExchangeDTO>> curve_get_exchanges__current

Exchanges (current) 🔥

Gets exchanges.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Exchanges (current) 🔥
  result = api_instance.curve_get_exchanges__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->curve_get_exchanges__current: #{e}"
end
```

#### Using the curve_get_exchanges__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CurveExchangeDTO>>, Integer, Hash)> curve_get_exchanges__current_with_http_info

```ruby
begin
  # Exchanges (current) 🔥
  data, status_code, headers = api_instance.curve_get_exchanges__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CurveExchangeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->curve_get_exchanges__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_trades__current

> <Array<DexTradeDTO>> dex_get_trades__current

Trades (current) 🔥

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Trades (current) 🔥
  result = api_instance.dex_get_trades__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dex_get_trades__current: #{e}"
end
```

#### Using the dex_get_trades__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTradeDTO>>, Integer, Hash)> dex_get_trades__current_with_http_info

```ruby
begin
  # Trades (current) 🔥
  data, status_code, headers = api_instance.dex_get_trades__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dex_get_trades__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_bundles__current

> <Array<SushiswapBundleDTO>> sushiswap_bundles__current

Bundles (current)

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Bundles (current)
  result = api_instance.sushiswap_bundles__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_bundles__current: #{e}"
end
```

#### Using the sushiswap_bundles__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBundleDTO>>, Integer, Hash)> sushiswap_bundles__current_with_http_info

```ruby
begin
  # Bundles (current)
  data, status_code, headers = api_instance.sushiswap_bundles__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBundleDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_bundles__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_burns__current

> <Array<SushiswapBurnDTO>> sushiswap_burns__current

Burns (current)

Gets burns.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Burns (current)
  result = api_instance.sushiswap_burns__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_burns__current: #{e}"
end
```

#### Using the sushiswap_burns__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBurnDTO>>, Integer, Hash)> sushiswap_burns__current_with_http_info

```ruby
begin
  # Burns (current)
  data, status_code, headers = api_instance.sushiswap_burns__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBurnDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_burns__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_day_datas__current

> <Array<SushiswapDayDataDTO>> sushiswap_day_datas__current

DayDatas (current)

Gets dayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # DayDatas (current)
  result = api_instance.sushiswap_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_day_datas__current: #{e}"
end
```

#### Using the sushiswap_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapDayDataDTO>>, Integer, Hash)> sushiswap_day_datas__current_with_http_info

```ruby
begin
  # DayDatas (current)
  data, status_code, headers = api_instance.sushiswap_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_factorys__current

> <Array<SushiswapFactoryDTO>> sushiswap_factorys__current

Factorys (current)

Gets factorys.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Factorys (current)
  result = api_instance.sushiswap_factorys__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_factorys__current: #{e}"
end
```

#### Using the sushiswap_factorys__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapFactoryDTO>>, Integer, Hash)> sushiswap_factorys__current_with_http_info

```ruby
begin
  # Factorys (current)
  data, status_code, headers = api_instance.sushiswap_factorys__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapFactoryDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_factorys__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_bundles__historical

> <Array<SushiswapBundleDTO>> sushiswap_get_bundles__historical(opts)

Bundles (historical) 🔥

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Hardcoded to '1'.
}

begin
  # Bundles (historical) 🔥
  result = api_instance.sushiswap_get_bundles__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_bundles__historical: #{e}"
end
```

#### Using the sushiswap_get_bundles__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBundleDTO>>, Integer, Hash)> sushiswap_get_bundles__historical_with_http_info(opts)

```ruby
begin
  # Bundles (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_bundles__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBundleDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_bundles__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Hardcoded to &#39;1&#39;. | [optional] |

### Return type

[**Array&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_burns__historical

> <Array<SushiswapBurnDTO>> sushiswap_get_burns__historical(opts)

Burns (historical) 🔥

Gets burns.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  pair: 'pair_example' # String | 
}

begin
  # Burns (historical) 🔥
  result = api_instance.sushiswap_get_burns__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_burns__historical: #{e}"
end
```

#### Using the sushiswap_get_burns__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBurnDTO>>, Integer, Hash)> sushiswap_get_burns__historical_with_http_info(opts)

```ruby
begin
  # Burns (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_burns__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBurnDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_burns__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_day_datas__historical

> <Array<SushiswapDayDataDTO>> sushiswap_get_day_datas__historical(opts)

DayDatas (historical) 🔥

Gets dayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Unix timestamp for start of day / 86400 giving a unique day index.
}

begin
  # DayDatas (historical) 🔥
  result = api_instance.sushiswap_get_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_day_datas__historical: #{e}"
end
```

#### Using the sushiswap_get_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapDayDataDTO>>, Integer, Hash)> sushiswap_get_day_datas__historical_with_http_info(opts)

```ruby
begin
  # DayDatas (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_day_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Unix timestamp for start of day / 86400 giving a unique day index. | [optional] |

### Return type

[**Array&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_factorys__historical

> <Array<SushiswapFactoryDTO>> sushiswap_get_factorys__historical(opts)

Factorys (historical) 🔥

Gets factorys.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Factory address.
}

begin
  # Factorys (historical) 🔥
  result = api_instance.sushiswap_get_factorys__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_factorys__historical: #{e}"
end
```

#### Using the sushiswap_get_factorys__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapFactoryDTO>>, Integer, Hash)> sushiswap_get_factorys__historical_with_http_info(opts)

```ruby
begin
  # Factorys (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_factorys__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapFactoryDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_factorys__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Factory address. | [optional] |

### Return type

[**Array&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_hour_datas__historical

> <Array<SushiswapHourDataDTO>> sushiswap_get_hour_datas__historical(opts)

HourDatas (historical) 🔥

Gets hourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Start of hour timestamp.
}

begin
  # HourDatas (historical) 🔥
  result = api_instance.sushiswap_get_hour_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_hour_datas__historical: #{e}"
end
```

#### Using the sushiswap_get_hour_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapHourDataDTO>>, Integer, Hash)> sushiswap_get_hour_datas__historical_with_http_info(opts)

```ruby
begin
  # HourDatas (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_hour_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_hour_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Start of hour timestamp. | [optional] |

### Return type

[**Array&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_liquidity_position_snapshots__historical

> <Array<SushiswapLiquidityPositionSnapshotDTO>> sushiswap_get_liquidity_position_snapshots__historical(opts)

LiquidityPositionSnapshots (historical) 🔥

Gets liquidityPositionSnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  user: 'user_example', # String | 
  pair: 'pair_example' # String | 
}

begin
  # LiquidityPositionSnapshots (historical) 🔥
  result = api_instance.sushiswap_get_liquidity_position_snapshots__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_snapshots__historical: #{e}"
end
```

#### Using the sushiswap_get_liquidity_position_snapshots__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionSnapshotDTO>>, Integer, Hash)> sushiswap_get_liquidity_position_snapshots__historical_with_http_info(opts)

```ruby
begin
  # LiquidityPositionSnapshots (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_liquidity_position_snapshots__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionSnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_snapshots__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_liquidity_positions__historical

> <Array<SushiswapLiquidityPositionDTO>> sushiswap_get_liquidity_positions__historical(opts)

LiquidityPositions (historical) 🔥

Gets liquidityPositions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  user: 'user_example', # String | 
  pair: 'pair_example' # String | 
}

begin
  # LiquidityPositions (historical) 🔥
  result = api_instance.sushiswap_get_liquidity_positions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_positions__historical: #{e}"
end
```

#### Using the sushiswap_get_liquidity_positions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionDTO>>, Integer, Hash)> sushiswap_get_liquidity_positions__historical_with_http_info(opts)

```ruby
begin
  # LiquidityPositions (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_liquidity_positions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_positions__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_mints__historical

> <Array<SushiswapMintDTO>> sushiswap_get_mints__historical(opts)

Mints (historical) 🔥

Gets mints.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  pair: 'pair_example' # String | 
}

begin
  # Mints (historical) 🔥
  result = api_instance.sushiswap_get_mints__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_mints__historical: #{e}"
end
```

#### Using the sushiswap_get_mints__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapMintDTO>>, Integer, Hash)> sushiswap_get_mints__historical_with_http_info(opts)

```ruby
begin
  # Mints (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_mints__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapMintDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_mints__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pair_day_datas__historical

> <Array<SushiswapPairDayDataDTO>> sushiswap_get_pair_day_datas__historical(opts)

PairDayDatas (historical) 🔥

Gets pairDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  pair: 'pair_example', # String | 
  token_0: 'token_0_example', # String | 
  token_1: 'token_1_example' # String | 
}

begin
  # PairDayDatas (historical) 🔥
  result = api_instance.sushiswap_get_pair_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_day_datas__historical: #{e}"
end
```

#### Using the sushiswap_get_pair_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDayDataDTO>>, Integer, Hash)> sushiswap_get_pair_day_datas__historical_with_http_info(opts)

```ruby
begin
  # PairDayDatas (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pair_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_day_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |
| **token_0** | **String** |  | [optional] |
| **token_1** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pair_hour_datas__historical

> <Array<SushiswapPairHourDataDTO>> sushiswap_get_pair_hour_datas__historical(opts)

PairHourDatas (historical) 🔥

Gets pairHourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  pair: 'pair_example' # String | 
}

begin
  # PairHourDatas (historical) 🔥
  result = api_instance.sushiswap_get_pair_hour_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_hour_datas__historical: #{e}"
end
```

#### Using the sushiswap_get_pair_hour_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairHourDataDTO>>, Integer, Hash)> sushiswap_get_pair_hour_datas__historical_with_http_info(opts)

```ruby
begin
  # PairHourDatas (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pair_hour_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_hour_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pairs__historical

> <Array<SushiswapPairDTO>> sushiswap_get_pairs__historical(opts)

Pairs (historical) 🔥

Gets pairs.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  name: 'name_example', # String | 
  token_0: 'token_0_example', # String | 
  token_1: 'token_1_example' # String | 
}

begin
  # Pairs (historical) 🔥
  result = api_instance.sushiswap_get_pairs__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pairs__historical: #{e}"
end
```

#### Using the sushiswap_get_pairs__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> sushiswap_get_pairs__historical_with_http_info(opts)

```ruby
begin
  # Pairs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pairs__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pairs__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **token_0** | **String** |  | [optional] |
| **token_1** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pools__current

> <Array<SushiswapPairDTO>> sushiswap_get_pools__current

Pools (current) 🔥

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Pools (current) 🔥
  result = api_instance.sushiswap_get_pools__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools__current: #{e}"
end
```

#### Using the sushiswap_get_pools__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> sushiswap_get_pools__current_with_http_info

```ruby
begin
  # Pools (current) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pools__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_swaps__historical

> <Array<SushiswapSwapDTO>> sushiswap_get_swaps__historical(opts)

Swaps (historical) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Transaction hash plus index in Transaction swap array.
  pair: 'pair_example' # String | Reference to pair.
}

begin
  # Swaps (historical) 🔥
  result = api_instance.sushiswap_get_swaps__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__historical: #{e}"
end
```

#### Using the sushiswap_get_swaps__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> sushiswap_get_swaps__historical_with_http_info(opts)

```ruby
begin
  # Swaps (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_swaps__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash plus index in Transaction swap array. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |

### Return type

[**Array&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_token_day_datas__historical

> <Array<SushiswapTokenDayDataDTO>> sushiswap_get_token_day_datas__historical(opts)

TokenDayDatas (historical) 🔥

Gets tokenDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Identifier, day start timestamp in unix / 86400.
}

begin
  # TokenDayDatas (historical) 🔥
  result = api_instance.sushiswap_get_token_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_token_day_datas__historical: #{e}"
end
```

#### Using the sushiswap_get_token_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDayDataDTO>>, Integer, Hash)> sushiswap_get_token_day_datas__historical_with_http_info(opts)

```ruby
begin
  # TokenDayDatas (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_token_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_token_day_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, day start timestamp in unix / 86400. | [optional] |

### Return type

[**Array&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_tokens__historical

> <Array<SushiswapTokenDTO>> sushiswap_get_tokens__historical(opts)

Tokens (historical) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Token address.
  symbol: 'symbol_example', # String | Token symbol.
  name: 'name_example' # String | Token name.
}

begin
  # Tokens (historical) 🔥
  result = api_instance.sushiswap_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__historical: #{e}"
end
```

#### Using the sushiswap_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> sushiswap_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # Tokens (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Token address. | [optional] |
| **symbol** | **String** | Token symbol. | [optional] |
| **name** | **String** | Token name. | [optional] |

### Return type

[**Array&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_transactions__historical

> <Array<SushiswapTransactionDTO>> sushiswap_get_transactions__historical(opts)

Transactions (historical) 🔥

Gets transactions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Ethereum transaction hash.
}

begin
  # Transactions (historical) 🔥
  result = api_instance.sushiswap_get_transactions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_transactions__historical: #{e}"
end
```

#### Using the sushiswap_get_transactions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTransactionDTO>>, Integer, Hash)> sushiswap_get_transactions__historical_with_http_info(opts)

```ruby
begin
  # Transactions (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_transactions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTransactionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_transactions__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Ethereum transaction hash. | [optional] |

### Return type

[**Array&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_users__historical

> <Array<SushiswapUserDTO>> sushiswap_get_users__historical(opts)

Users (historical) 🔥

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | User address.
}

begin
  # Users (historical) 🔥
  result = api_instance.sushiswap_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_users__historical: #{e}"
end
```

#### Using the sushiswap_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapUserDTO>>, Integer, Hash)> sushiswap_get_users__historical_with_http_info(opts)

```ruby
begin
  # Users (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_users__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | User address. | [optional] |

### Return type

[**Array&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_hour_datas__current

> <Array<SushiswapHourDataDTO>> sushiswap_hour_datas__current

HourDatas (current)

Gets hourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # HourDatas (current)
  result = api_instance.sushiswap_hour_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_hour_datas__current: #{e}"
end
```

#### Using the sushiswap_hour_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapHourDataDTO>>, Integer, Hash)> sushiswap_hour_datas__current_with_http_info

```ruby
begin
  # HourDatas (current)
  data, status_code, headers = api_instance.sushiswap_hour_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_hour_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_liquidity_position_snapshots__current

> <Array<SushiswapLiquidityPositionSnapshotDTO>> sushiswap_liquidity_position_snapshots__current

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # LiquidityPositionSnapshots (current)
  result = api_instance.sushiswap_liquidity_position_snapshots__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_liquidity_position_snapshots__current: #{e}"
end
```

#### Using the sushiswap_liquidity_position_snapshots__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionSnapshotDTO>>, Integer, Hash)> sushiswap_liquidity_position_snapshots__current_with_http_info

```ruby
begin
  # LiquidityPositionSnapshots (current)
  data, status_code, headers = api_instance.sushiswap_liquidity_position_snapshots__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionSnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_liquidity_position_snapshots__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_liquidity_positions__current

> <Array<SushiswapLiquidityPositionDTO>> sushiswap_liquidity_positions__current

LiquidityPositions (current)

Gets liquidityPositions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # LiquidityPositions (current)
  result = api_instance.sushiswap_liquidity_positions__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_liquidity_positions__current: #{e}"
end
```

#### Using the sushiswap_liquidity_positions__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionDTO>>, Integer, Hash)> sushiswap_liquidity_positions__current_with_http_info

```ruby
begin
  # LiquidityPositions (current)
  data, status_code, headers = api_instance.sushiswap_liquidity_positions__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_liquidity_positions__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_mints__current

> <Array<SushiswapMintDTO>> sushiswap_mints__current

Mints (current)

Gets mints.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Mints (current)
  result = api_instance.sushiswap_mints__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_mints__current: #{e}"
end
```

#### Using the sushiswap_mints__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapMintDTO>>, Integer, Hash)> sushiswap_mints__current_with_http_info

```ruby
begin
  # Mints (current)
  data, status_code, headers = api_instance.sushiswap_mints__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapMintDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_mints__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_pair_day_datas__current

> <Array<SushiswapPairDayDataDTO>> sushiswap_pair_day_datas__current

PairDayDatas (current)

Gets pairDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # PairDayDatas (current)
  result = api_instance.sushiswap_pair_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_pair_day_datas__current: #{e}"
end
```

#### Using the sushiswap_pair_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDayDataDTO>>, Integer, Hash)> sushiswap_pair_day_datas__current_with_http_info

```ruby
begin
  # PairDayDatas (current)
  data, status_code, headers = api_instance.sushiswap_pair_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_pair_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_pair_hour_datas__current

> <Array<SushiswapPairHourDataDTO>> sushiswap_pair_hour_datas__current

PairHourDatas (current)

Gets pairHourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # PairHourDatas (current)
  result = api_instance.sushiswap_pair_hour_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_pair_hour_datas__current: #{e}"
end
```

#### Using the sushiswap_pair_hour_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairHourDataDTO>>, Integer, Hash)> sushiswap_pair_hour_datas__current_with_http_info

```ruby
begin
  # PairHourDatas (current)
  data, status_code, headers = api_instance.sushiswap_pair_hour_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_pair_hour_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_pairs__current

> <Array<SushiswapPairDTO>> sushiswap_pairs__current(opts)

Pairs (current)

Gets pairs.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  id: 'id_example' # String | Pair contract address.
}

begin
  # Pairs (current)
  result = api_instance.sushiswap_pairs__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_pairs__current: #{e}"
end
```

#### Using the sushiswap_pairs__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> sushiswap_pairs__current_with_http_info(opts)

```ruby
begin
  # Pairs (current)
  data, status_code, headers = api_instance.sushiswap_pairs__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_pairs__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pair contract address. | [optional] |

### Return type

[**Array&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_swaps__current

> <Array<SushiswapSwapDTO>> sushiswap_swaps__current(opts)

Swaps (current)

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  pair: 'pair_example' # String | Reference to pair.
}

begin
  # Swaps (current)
  result = api_instance.sushiswap_swaps__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_swaps__current: #{e}"
end
```

#### Using the sushiswap_swaps__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> sushiswap_swaps__current_with_http_info(opts)

```ruby
begin
  # Swaps (current)
  data, status_code, headers = api_instance.sushiswap_swaps__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_swaps__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pair** | **String** | Reference to pair. | [optional] |

### Return type

[**Array&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_token_day_datas__current

> <Array<SushiswapTokenDayDataDTO>> sushiswap_token_day_datas__current

TokenDayDatas (current)

Gets tokenDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # TokenDayDatas (current)
  result = api_instance.sushiswap_token_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_token_day_datas__current: #{e}"
end
```

#### Using the sushiswap_token_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDayDataDTO>>, Integer, Hash)> sushiswap_token_day_datas__current_with_http_info

```ruby
begin
  # TokenDayDatas (current)
  data, status_code, headers = api_instance.sushiswap_token_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_token_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_tokens__current

> <Array<SushiswapTokenDTO>> sushiswap_tokens__current

Tokens (current)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Tokens (current)
  result = api_instance.sushiswap_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_tokens__current: #{e}"
end
```

#### Using the sushiswap_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> sushiswap_tokens__current_with_http_info

```ruby
begin
  # Tokens (current)
  data, status_code, headers = api_instance.sushiswap_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_tokens__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_transactions__current

> <Array<SushiswapTransactionDTO>> sushiswap_transactions__current

Transactions (current)

Gets transactions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Transactions (current)
  result = api_instance.sushiswap_transactions__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_transactions__current: #{e}"
end
```

#### Using the sushiswap_transactions__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTransactionDTO>>, Integer, Hash)> sushiswap_transactions__current_with_http_info

```ruby
begin
  # Transactions (current)
  data, status_code, headers = api_instance.sushiswap_transactions__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTransactionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_transactions__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_users__current

> <Array<SushiswapUserDTO>> sushiswap_users__current

Users (current)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Users (current)
  result = api_instance.sushiswap_users__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_users__current: #{e}"
end
```

#### Using the sushiswap_users__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapUserDTO>>, Integer, Hash)> sushiswap_users__current_with_http_info

```ruby
begin
  # Users (current)
  data, status_code, headers = api_instance.sushiswap_users__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_users__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

