# OpenapiClient::CRYPTOPUNKSApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**c_ryptopunks_bids__current**](CRYPTOPUNKSApi.md#c_ryptopunks_bids__current) | **GET** /dapps/cryptopunks/bids/current | Bids (current) |
| [**c_ryptopunks_collection_daily_snapshots__current**](CRYPTOPUNKSApi.md#c_ryptopunks_collection_daily_snapshots__current) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current) |
| [**c_ryptopunks_collections__current**](CRYPTOPUNKSApi.md#c_ryptopunks_collections__current) | **GET** /dapps/cryptopunks/collections/current | Collections (current) |
| [**c_ryptopunks_data_sources__current**](CRYPTOPUNKSApi.md#c_ryptopunks_data_sources__current) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current) |
| [**c_ryptopunks_get_bids__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_bids__historical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical) |
| [**c_ryptopunks_get_collection_daily_snapshots__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_collection_daily_snapshots__historical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical) |
| [**c_ryptopunks_get_collections__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_collections__historical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical) |
| [**c_ryptopunks_get_data_sources__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_data_sources__historical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical) |
| [**c_ryptopunks_get_items__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_items__historical) | **GET** /dapps/cryptopunks/items/historical | Items (historical) |
| [**c_ryptopunks_get_market_places__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_market_places__historical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical) |
| [**c_ryptopunks_get_marketplace_daily_snapshots__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_marketplace_daily_snapshots__historical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical) |
| [**c_ryptopunks_get_trades__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_trades__historical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical) |
| [**c_ryptopunks_get_users__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_users__historical) | **GET** /dapps/cryptopunks/users/historical | Users (historical) |
| [**c_ryptopunks_items__current**](CRYPTOPUNKSApi.md#c_ryptopunks_items__current) | **GET** /dapps/cryptopunks/items/current | Items (current) |
| [**c_ryptopunks_market_places__current**](CRYPTOPUNKSApi.md#c_ryptopunks_market_places__current) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current) |
| [**c_ryptopunks_marketplace_daily_snapshots__current**](CRYPTOPUNKSApi.md#c_ryptopunks_marketplace_daily_snapshots__current) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current) |
| [**c_ryptopunks_trades__current**](CRYPTOPUNKSApi.md#c_ryptopunks_trades__current) | **GET** /dapps/cryptopunks/trades/current | Trades (current) |
| [**c_ryptopunks_users__current**](CRYPTOPUNKSApi.md#c_ryptopunks_users__current) | **GET** /dapps/cryptopunks/users/current | Users (current) |


## c_ryptopunks_bids__current

> <Array<CRYPTOPUNKSBidDTO>> c_ryptopunks_bids__current

Bids (current)

Gets bids.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # Bids (current)
  result = api_instance.c_ryptopunks_bids__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_bids__current: #{e}"
end
```

#### Using the c_ryptopunks_bids__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSBidDTO>>, Integer, Hash)> c_ryptopunks_bids__current_with_http_info

```ruby
begin
  # Bids (current)
  data, status_code, headers = api_instance.c_ryptopunks_bids__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSBidDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_bids__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_collection_daily_snapshots__current

> <Array<CRYPTOPUNKSCollectionDailySnapshotDTO>> c_ryptopunks_collection_daily_snapshots__current

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # CollectionDailySnapshots (current)
  result = api_instance.c_ryptopunks_collection_daily_snapshots__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_collection_daily_snapshots__current: #{e}"
end
```

#### Using the c_ryptopunks_collection_daily_snapshots__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSCollectionDailySnapshotDTO>>, Integer, Hash)> c_ryptopunks_collection_daily_snapshots__current_with_http_info

```ruby
begin
  # CollectionDailySnapshots (current)
  data, status_code, headers = api_instance.c_ryptopunks_collection_daily_snapshots__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSCollectionDailySnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_collection_daily_snapshots__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_collections__current

> <Array<CRYPTOPUNKSCollectionDTO>> c_ryptopunks_collections__current

Collections (current)

Gets collections.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # Collections (current)
  result = api_instance.c_ryptopunks_collections__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_collections__current: #{e}"
end
```

#### Using the c_ryptopunks_collections__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSCollectionDTO>>, Integer, Hash)> c_ryptopunks_collections__current_with_http_info

```ruby
begin
  # Collections (current)
  data, status_code, headers = api_instance.c_ryptopunks_collections__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSCollectionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_collections__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_data_sources__current

> <Array<CRYPTOPUNKSDataSourcesDTO>> c_ryptopunks_data_sources__current

DataSources (current)

Gets dataSources.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # DataSources (current)
  result = api_instance.c_ryptopunks_data_sources__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_data_sources__current: #{e}"
end
```

#### Using the c_ryptopunks_data_sources__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSDataSourcesDTO>>, Integer, Hash)> c_ryptopunks_data_sources__current_with_http_info

```ruby
begin
  # DataSources (current)
  data, status_code, headers = api_instance.c_ryptopunks_data_sources__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSDataSourcesDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_data_sources__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_bids__historical

> <Array<CRYPTOPUNKSBidDTO>> c_ryptopunks_get_bids__historical(opts)

Bids (historical)

Gets bids.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Bids (historical)
  result = api_instance.c_ryptopunks_get_bids__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_bids__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_bids__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSBidDTO>>, Integer, Hash)> c_ryptopunks_get_bids__historical_with_http_info(opts)

```ruby
begin
  # Bids (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_bids__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSBidDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_bids__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_collection_daily_snapshots__historical

> <Array<CRYPTOPUNKSCollectionDailySnapshotDTO>> c_ryptopunks_get_collection_daily_snapshots__historical(opts)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end date of timeframe.
}

begin
  # CollectionDailySnapshots (historical)
  result = api_instance.c_ryptopunks_get_collection_daily_snapshots__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_collection_daily_snapshots__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_collection_daily_snapshots__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSCollectionDailySnapshotDTO>>, Integer, Hash)> c_ryptopunks_get_collection_daily_snapshots__historical_with_http_info(opts)

```ruby
begin
  # CollectionDailySnapshots (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_collection_daily_snapshots__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSCollectionDailySnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_collection_daily_snapshots__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |

### Return type

[**Array&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_collections__historical

> <Array<CRYPTOPUNKSCollectionDTO>> c_ryptopunks_get_collections__historical(opts)

Collections (historical)

Gets collections.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Collections (historical)
  result = api_instance.c_ryptopunks_get_collections__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_collections__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_collections__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSCollectionDTO>>, Integer, Hash)> c_ryptopunks_get_collections__historical_with_http_info(opts)

```ruby
begin
  # Collections (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_collections__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSCollectionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_collections__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_data_sources__historical

> <Array<CRYPTOPUNKSDataSourcesDTO>> c_ryptopunks_get_data_sources__historical(opts)

DataSources (historical)

Gets dataSources.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # DataSources (historical)
  result = api_instance.c_ryptopunks_get_data_sources__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_data_sources__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_data_sources__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSDataSourcesDTO>>, Integer, Hash)> c_ryptopunks_get_data_sources__historical_with_http_info(opts)

```ruby
begin
  # DataSources (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_data_sources__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSDataSourcesDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_data_sources__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_items__historical

> <Array<CRYPTOPUNKSItemDTO>> c_ryptopunks_get_items__historical(opts)

Items (historical)

Gets items.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end date of timeframe.
}

begin
  # Items (historical)
  result = api_instance.c_ryptopunks_get_items__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_items__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_items__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSItemDTO>>, Integer, Hash)> c_ryptopunks_get_items__historical_with_http_info(opts)

```ruby
begin
  # Items (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_items__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSItemDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_items__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |

### Return type

[**Array&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_market_places__historical

> <Array<CRYPTOPUNKSMarketPlaceDTO>> c_ryptopunks_get_market_places__historical(opts)

MarketPlaces (historical)

Gets marketPlaces.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # MarketPlaces (historical)
  result = api_instance.c_ryptopunks_get_market_places__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_market_places__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_market_places__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSMarketPlaceDTO>>, Integer, Hash)> c_ryptopunks_get_market_places__historical_with_http_info(opts)

```ruby
begin
  # MarketPlaces (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_market_places__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSMarketPlaceDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_market_places__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_marketplace_daily_snapshots__historical

> <Array<CRYPTOPUNKSMarketplaceDailySnapshotDTO>> c_ryptopunks_get_marketplace_daily_snapshots__historical(opts)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # MarketplaceDailySnapshots (historical)
  result = api_instance.c_ryptopunks_get_marketplace_daily_snapshots__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_marketplace_daily_snapshots__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_marketplace_daily_snapshots__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSMarketplaceDailySnapshotDTO>>, Integer, Hash)> c_ryptopunks_get_marketplace_daily_snapshots__historical_with_http_info(opts)

```ruby
begin
  # MarketplaceDailySnapshots (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_marketplace_daily_snapshots__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSMarketplaceDailySnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_marketplace_daily_snapshots__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_trades__historical

> <Array<CRYPTOPUNKSTradeDTO>> c_ryptopunks_get_trades__historical(opts)

Trades (historical)

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Trades (historical)
  result = api_instance.c_ryptopunks_get_trades__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_trades__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_trades__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSTradeDTO>>, Integer, Hash)> c_ryptopunks_get_trades__historical_with_http_info(opts)

```ruby
begin
  # Trades (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_trades__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_trades__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_get_users__historical

> <Array<CRYPTOPUNKSUserDTO>> c_ryptopunks_get_users__historical(opts)

Users (historical)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Users (historical)
  result = api_instance.c_ryptopunks_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_users__historical: #{e}"
end
```

#### Using the c_ryptopunks_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSUserDTO>>, Integer, Hash)> c_ryptopunks_get_users__historical_with_http_info(opts)

```ruby
begin
  # Users (historical)
  data, status_code, headers = api_instance.c_ryptopunks_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_get_users__historical_with_http_info: #{e}"
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

[**Array&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_items__current

> <Array<CRYPTOPUNKSItemDTO>> c_ryptopunks_items__current

Items (current)

Gets items.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # Items (current)
  result = api_instance.c_ryptopunks_items__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_items__current: #{e}"
end
```

#### Using the c_ryptopunks_items__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSItemDTO>>, Integer, Hash)> c_ryptopunks_items__current_with_http_info

```ruby
begin
  # Items (current)
  data, status_code, headers = api_instance.c_ryptopunks_items__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSItemDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_items__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_market_places__current

> <Array<CRYPTOPUNKSMarketPlaceDTO>> c_ryptopunks_market_places__current

MarketPlaces (current)

Gets marketPlaces.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # MarketPlaces (current)
  result = api_instance.c_ryptopunks_market_places__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_market_places__current: #{e}"
end
```

#### Using the c_ryptopunks_market_places__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSMarketPlaceDTO>>, Integer, Hash)> c_ryptopunks_market_places__current_with_http_info

```ruby
begin
  # MarketPlaces (current)
  data, status_code, headers = api_instance.c_ryptopunks_market_places__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSMarketPlaceDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_market_places__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_marketplace_daily_snapshots__current

> <Array<CRYPTOPUNKSMarketplaceDailySnapshotDTO>> c_ryptopunks_marketplace_daily_snapshots__current

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # MarketplaceDailySnapshots (current)
  result = api_instance.c_ryptopunks_marketplace_daily_snapshots__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_marketplace_daily_snapshots__current: #{e}"
end
```

#### Using the c_ryptopunks_marketplace_daily_snapshots__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSMarketplaceDailySnapshotDTO>>, Integer, Hash)> c_ryptopunks_marketplace_daily_snapshots__current_with_http_info

```ruby
begin
  # MarketplaceDailySnapshots (current)
  data, status_code, headers = api_instance.c_ryptopunks_marketplace_daily_snapshots__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSMarketplaceDailySnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_marketplace_daily_snapshots__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_trades__current

> <Array<CRYPTOPUNKSTradeDTO>> c_ryptopunks_trades__current

Trades (current)

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # Trades (current)
  result = api_instance.c_ryptopunks_trades__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_trades__current: #{e}"
end
```

#### Using the c_ryptopunks_trades__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSTradeDTO>>, Integer, Hash)> c_ryptopunks_trades__current_with_http_info

```ruby
begin
  # Trades (current)
  data, status_code, headers = api_instance.c_ryptopunks_trades__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_trades__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## c_ryptopunks_users__current

> <Array<CRYPTOPUNKSUserDTO>> c_ryptopunks_users__current

Users (current)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CRYPTOPUNKSApi.new

begin
  # Users (current)
  result = api_instance.c_ryptopunks_users__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_users__current: #{e}"
end
```

#### Using the c_ryptopunks_users__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CRYPTOPUNKSUserDTO>>, Integer, Hash)> c_ryptopunks_users__current_with_http_info

```ruby
begin
  # Users (current)
  data, status_code, headers = api_instance.c_ryptopunks_users__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CRYPTOPUNKSUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CRYPTOPUNKSApi->c_ryptopunks_users__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

