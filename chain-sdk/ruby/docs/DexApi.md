# OpenapiClient::DexApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dex_batches__current**](DexApi.md#dex_batches__current) | **GET** /dapps/dex/batches/current | Batches (current) |
| [**dex_deposits__current**](DexApi.md#dex_deposits__current) | **GET** /dapps/dex/deposits/current | Deposits (current) |
| [**dex_get_batches__historical**](DexApi.md#dex_get_batches__historical) | **GET** /dapps/dex/batches/historical | Batches (historical) |
| [**dex_get_deposits__historical**](DexApi.md#dex_get_deposits__historical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) |
| [**dex_get_orders__historical**](DexApi.md#dex_get_orders__historical) | **GET** /dapps/dex/orders/historical | Orders (historical) |
| [**dex_get_prices__historical**](DexApi.md#dex_get_prices__historical) | **GET** /dapps/dex/prices/historical | Prices (historical) |
| [**dex_get_solutions__historical**](DexApi.md#dex_get_solutions__historical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) |
| [**dex_get_stats__historical**](DexApi.md#dex_get_stats__historical) | **GET** /dapps/dex/stats/historical | Stats (historical) |
| [**dex_get_tokens__historical**](DexApi.md#dex_get_tokens__historical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) |
| [**dex_get_trades__historical**](DexApi.md#dex_get_trades__historical) | **GET** /dapps/dex/trades/historical | Trades (historical) |
| [**dex_get_users__historical**](DexApi.md#dex_get_users__historical) | **GET** /dapps/dex/users/historical | Users (historical) |
| [**dex_get_withdraw_requests__historical**](DexApi.md#dex_get_withdraw_requests__historical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) |
| [**dex_get_withdraws__historical**](DexApi.md#dex_get_withdraws__historical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) |
| [**dex_orders__current**](DexApi.md#dex_orders__current) | **GET** /dapps/dex/orders/current | Orders (current) |
| [**dex_prices__current**](DexApi.md#dex_prices__current) | **GET** /dapps/dex/prices/current | Prices (current) |
| [**dex_solutions__current**](DexApi.md#dex_solutions__current) | **GET** /dapps/dex/solutions/current | Solutions (current) |
| [**dex_stats__current**](DexApi.md#dex_stats__current) | **GET** /dapps/dex/stats/current | Stats (current) |
| [**dex_tokens__current**](DexApi.md#dex_tokens__current) | **GET** /dapps/dex/tokens/current | Tokens (current) |
| [**dex_trades__current**](DexApi.md#dex_trades__current) | **GET** /dapps/dex/trades/current | Trades (current) |
| [**dex_users__current**](DexApi.md#dex_users__current) | **GET** /dapps/dex/users/current | Users (current) |
| [**dex_withdraw_requests__current**](DexApi.md#dex_withdraw_requests__current) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current) |
| [**dex_withdraws__current**](DexApi.md#dex_withdraws__current) | **GET** /dapps/dex/withdraws/current | Withdraws (current) |


## dex_batches__current

> <Array<DexBatchDTO>> dex_batches__current

Batches (current)

Gets batches.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Batches (current)
  result = api_instance.dex_batches__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_batches__current: #{e}"
end
```

#### Using the dex_batches__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexBatchDTO>>, Integer, Hash)> dex_batches__current_with_http_info

```ruby
begin
  # Batches (current)
  data, status_code, headers = api_instance.dex_batches__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexBatchDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_batches__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_deposits__current

> <Array<DexDepositDTO>> dex_deposits__current

Deposits (current)

Gets deposits.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Deposits (current)
  result = api_instance.dex_deposits__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_deposits__current: #{e}"
end
```

#### Using the dex_deposits__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexDepositDTO>>, Integer, Hash)> dex_deposits__current_with_http_info

```ruby
begin
  # Deposits (current)
  data, status_code, headers = api_instance.dex_deposits__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexDepositDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_deposits__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_batches__historical

> <Array<DexBatchDTO>> dex_get_batches__historical(opts)

Batches (historical)

Gets batches.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Identifier.
}

begin
  # Batches (historical)
  result = api_instance.dex_get_batches__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_batches__historical: #{e}"
end
```

#### Using the dex_get_batches__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexBatchDTO>>, Integer, Hash)> dex_get_batches__historical_with_http_info(opts)

```ruby
begin
  # Batches (historical)
  data, status_code, headers = api_instance.dex_get_batches__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexBatchDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_batches__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier. | [optional] |

### Return type

[**Array&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_deposits__historical

> <Array<DexDepositDTO>> dex_get_deposits__historical(opts)

Deposits (historical)

Gets deposits.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Identifier, format: (transaction hash)-(token id).
  user: 'user_example' # String | User address.
}

begin
  # Deposits (historical)
  result = api_instance.dex_get_deposits__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_deposits__historical: #{e}"
end
```

#### Using the dex_get_deposits__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexDepositDTO>>, Integer, Hash)> dex_get_deposits__historical_with_http_info(opts)

```ruby
begin
  # Deposits (historical)
  data, status_code, headers = api_instance.dex_get_deposits__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexDepositDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_deposits__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, format: (transaction hash)-(token id). | [optional] |
| **user** | **String** | User address. | [optional] |

### Return type

[**Array&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_orders__historical

> <Array<DexOrderDTO>> dex_get_orders__historical(opts)

Orders (historical)

Gets orders.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Identifier, format: (owner address)-(order id)
  buy_token: 'buy_token_example', # String | Identifier of token that was bought.
  sell_token: 'sell_token_example' # String | Identifier of token that was sold.
}

begin
  # Orders (historical)
  result = api_instance.dex_get_orders__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_orders__historical: #{e}"
end
```

#### Using the dex_get_orders__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexOrderDTO>>, Integer, Hash)> dex_get_orders__historical_with_http_info(opts)

```ruby
begin
  # Orders (historical)
  data, status_code, headers = api_instance.dex_get_orders__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexOrderDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_orders__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, format: (owner address)-(order id) | [optional] |
| **buy_token** | **String** | Identifier of token that was bought. | [optional] |
| **sell_token** | **String** | Identifier of token that was sold. | [optional] |

### Return type

[**Array&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_prices__historical

> <Array<DexPriceDTO>> dex_get_prices__historical(opts)

Prices (historical)

Gets prices.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Identifier, format: (token id)-(batch id).
}

begin
  # Prices (historical)
  result = api_instance.dex_get_prices__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_prices__historical: #{e}"
end
```

#### Using the dex_get_prices__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexPriceDTO>>, Integer, Hash)> dex_get_prices__historical_with_http_info(opts)

```ruby
begin
  # Prices (historical)
  data, status_code, headers = api_instance.dex_get_prices__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexPriceDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_prices__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, format: (token id)-(batch id). | [optional] |

### Return type

[**Array&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_solutions__historical

> <Array<DexSolutionDTO>> dex_get_solutions__historical(opts)

Solutions (historical)

Gets solutions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Solutions (historical)
  result = api_instance.dex_get_solutions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_solutions__historical: #{e}"
end
```

#### Using the dex_get_solutions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexSolutionDTO>>, Integer, Hash)> dex_get_solutions__historical_with_http_info(opts)

```ruby
begin
  # Solutions (historical)
  data, status_code, headers = api_instance.dex_get_solutions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexSolutionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_solutions__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_stats__historical

> <Array<DexStatsDTO>> dex_get_stats__historical(opts)

Stats (historical)

Gets stats.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Stats (historical)
  result = api_instance.dex_get_stats__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_stats__historical: #{e}"
end
```

#### Using the dex_get_stats__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexStatsDTO>>, Integer, Hash)> dex_get_stats__historical_with_http_info(opts)

```ruby
begin
  # Stats (historical)
  data, status_code, headers = api_instance.dex_get_stats__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexStatsDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_stats__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_tokens__historical

> <Array<DexTokenDTO>> dex_get_tokens__historical(opts)

Tokens (historical)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | 
  address: 'address_example', # String | 
  symbol: 'symbol_example', # String | 
  name: 'name_example' # String | 
}

begin
  # Tokens (historical)
  result = api_instance.dex_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_tokens__historical: #{e}"
end
```

#### Using the dex_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTokenDTO>>, Integer, Hash)> dex_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # Tokens (historical)
  data, status_code, headers = api_instance.dex_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_tokens__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

### Return type

[**Array&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_trades__historical

> <Array<DexTradeDTO>> dex_get_trades__historical(opts)

Trades (historical)

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | 
  buy_token: 'buy_token_example', # String | 
  sell_token: 'sell_token_example' # String | 
}

begin
  # Trades (historical)
  result = api_instance.dex_get_trades__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_trades__historical: #{e}"
end
```

#### Using the dex_get_trades__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTradeDTO>>, Integer, Hash)> dex_get_trades__historical_with_http_info(opts)

```ruby
begin
  # Trades (historical)
  data, status_code, headers = api_instance.dex_get_trades__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_trades__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |
| **buy_token** | **String** |  | [optional] |
| **sell_token** | **String** |  | [optional] |

### Return type

[**Array&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_users__historical

> <Array<DexUserDTO>> dex_get_users__historical(opts)

Users (historical)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Users (historical)
  result = api_instance.dex_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_users__historical: #{e}"
end
```

#### Using the dex_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexUserDTO>>, Integer, Hash)> dex_get_users__historical_with_http_info(opts)

```ruby
begin
  # Users (historical)
  data, status_code, headers = api_instance.dex_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_users__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_withdraw_requests__historical

> <Array<DexWithdrawRequestDTO>> dex_get_withdraw_requests__historical(opts)

WithdrawRequests (historical)

Gets withdrawRequests.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Identifier, format: (transaction hash)-(id).
  user: 'user_example' # String | 
}

begin
  # WithdrawRequests (historical)
  result = api_instance.dex_get_withdraw_requests__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraw_requests__historical: #{e}"
end
```

#### Using the dex_get_withdraw_requests__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexWithdrawRequestDTO>>, Integer, Hash)> dex_get_withdraw_requests__historical_with_http_info(opts)

```ruby
begin
  # WithdrawRequests (historical)
  data, status_code, headers = api_instance.dex_get_withdraw_requests__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexWithdrawRequestDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraw_requests__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, format: (transaction hash)-(id). | [optional] |
| **user** | **String** |  | [optional] |

### Return type

[**Array&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_withdraws__historical

> <Array<DexWithdrawDTO>> dex_get_withdraws__historical(opts)

Withdraws (historical)

Gets withdraws.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Identifier, format: (transaction hash)-(id).
  user: 'user_example' # String | 
}

begin
  # Withdraws (historical)
  result = api_instance.dex_get_withdraws__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraws__historical: #{e}"
end
```

#### Using the dex_get_withdraws__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexWithdrawDTO>>, Integer, Hash)> dex_get_withdraws__historical_with_http_info(opts)

```ruby
begin
  # Withdraws (historical)
  data, status_code, headers = api_instance.dex_get_withdraws__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexWithdrawDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraws__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, format: (transaction hash)-(id). | [optional] |
| **user** | **String** |  | [optional] |

### Return type

[**Array&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_orders__current

> <Array<DexOrderDTO>> dex_orders__current

Orders (current)

Gets orders.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Orders (current)
  result = api_instance.dex_orders__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_orders__current: #{e}"
end
```

#### Using the dex_orders__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexOrderDTO>>, Integer, Hash)> dex_orders__current_with_http_info

```ruby
begin
  # Orders (current)
  data, status_code, headers = api_instance.dex_orders__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexOrderDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_orders__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_prices__current

> <Array<DexPriceDTO>> dex_prices__current

Prices (current)

Gets prices.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Prices (current)
  result = api_instance.dex_prices__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_prices__current: #{e}"
end
```

#### Using the dex_prices__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexPriceDTO>>, Integer, Hash)> dex_prices__current_with_http_info

```ruby
begin
  # Prices (current)
  data, status_code, headers = api_instance.dex_prices__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexPriceDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_prices__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_solutions__current

> <Array<DexSolutionDTO>> dex_solutions__current

Solutions (current)

Gets solutions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Solutions (current)
  result = api_instance.dex_solutions__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_solutions__current: #{e}"
end
```

#### Using the dex_solutions__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexSolutionDTO>>, Integer, Hash)> dex_solutions__current_with_http_info

```ruby
begin
  # Solutions (current)
  data, status_code, headers = api_instance.dex_solutions__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexSolutionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_solutions__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_stats__current

> <Array<DexStatsDTO>> dex_stats__current

Stats (current)

Gets stats.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Stats (current)
  result = api_instance.dex_stats__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_stats__current: #{e}"
end
```

#### Using the dex_stats__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexStatsDTO>>, Integer, Hash)> dex_stats__current_with_http_info

```ruby
begin
  # Stats (current)
  data, status_code, headers = api_instance.dex_stats__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexStatsDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_stats__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_tokens__current

> <Array<DexTokenDTO>> dex_tokens__current

Tokens (current)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Tokens (current)
  result = api_instance.dex_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_tokens__current: #{e}"
end
```

#### Using the dex_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTokenDTO>>, Integer, Hash)> dex_tokens__current_with_http_info

```ruby
begin
  # Tokens (current)
  data, status_code, headers = api_instance.dex_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_tokens__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_trades__current

> <Array<DexTradeDTO>> dex_trades__current

Trades (current)

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Trades (current)
  result = api_instance.dex_trades__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_trades__current: #{e}"
end
```

#### Using the dex_trades__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTradeDTO>>, Integer, Hash)> dex_trades__current_with_http_info

```ruby
begin
  # Trades (current)
  data, status_code, headers = api_instance.dex_trades__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_trades__current_with_http_info: #{e}"
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


## dex_users__current

> <Array<DexUserDTO>> dex_users__current

Users (current)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Users (current)
  result = api_instance.dex_users__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_users__current: #{e}"
end
```

#### Using the dex_users__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexUserDTO>>, Integer, Hash)> dex_users__current_with_http_info

```ruby
begin
  # Users (current)
  data, status_code, headers = api_instance.dex_users__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_users__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_withdraw_requests__current

> <Array<DexWithdrawRequestDTO>> dex_withdraw_requests__current

WithdrawRequests (current)

Gets withdrawRequests.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # WithdrawRequests (current)
  result = api_instance.dex_withdraw_requests__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_withdraw_requests__current: #{e}"
end
```

#### Using the dex_withdraw_requests__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexWithdrawRequestDTO>>, Integer, Hash)> dex_withdraw_requests__current_with_http_info

```ruby
begin
  # WithdrawRequests (current)
  data, status_code, headers = api_instance.dex_withdraw_requests__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexWithdrawRequestDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_withdraw_requests__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_withdraws__current

> <Array<DexWithdrawDTO>> dex_withdraws__current

Withdraws (current)

Gets withdraws.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new

begin
  # Withdraws (current)
  result = api_instance.dex_withdraws__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_withdraws__current: #{e}"
end
```

#### Using the dex_withdraws__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexWithdrawDTO>>, Integer, Hash)> dex_withdraws__current_with_http_info

```ruby
begin
  # Withdraws (current)
  data, status_code, headers = api_instance.dex_withdraws__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexWithdrawDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_withdraws__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

