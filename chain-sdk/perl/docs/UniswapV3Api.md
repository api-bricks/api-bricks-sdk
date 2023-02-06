# WWW::OpenAPIClient::UniswapV3Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV3Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v3_bundles__current**](UniswapV3Api.md#uniswap_v3_bundles__current) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswap_v3_burns__current**](UniswapV3Api.md#uniswap_v3_burns__current) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswap_v3_factories__current**](UniswapV3Api.md#uniswap_v3_factories__current) | **GET** /dapps/uniswapv3/factories/current | Factories (current)
[**uniswap_v3_get_bundles__historical**](UniswapV3Api.md#uniswap_v3_get_bundles__historical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical)
[**uniswap_v3_get_burns__historical**](UniswapV3Api.md#uniswap_v3_get_burns__historical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical)
[**uniswap_v3_get_factories__historical**](UniswapV3Api.md#uniswap_v3_get_factories__historical) | **GET** /dapps/uniswapv3/factories/historical | Factories (historical)
[**uniswap_v3_get_mints__historical**](UniswapV3Api.md#uniswap_v3_get_mints__historical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical)
[**uniswap_v3_get_pool_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_pool_day_data__historical) | **GET** /dapps/uniswapv3/poolDayData/historical | PoolDayData (historical)
[**uniswap_v3_get_pool_hour_data__historical**](UniswapV3Api.md#uniswap_v3_get_pool_hour_data__historical) | **GET** /dapps/uniswapv3/poolHourData/historical | PoolHourData (historical)
[**uniswap_v3_get_pools__historical**](UniswapV3Api.md#uniswap_v3_get_pools__historical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical)
[**uniswap_v3_get_position_snapshots__historical**](UniswapV3Api.md#uniswap_v3_get_position_snapshots__historical) | **GET** /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical)
[**uniswap_v3_get_positions__historical**](UniswapV3Api.md#uniswap_v3_get_positions__historical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical)
[**uniswap_v3_get_swaps__historical**](UniswapV3Api.md#uniswap_v3_get_swaps__historical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical)
[**uniswap_v3_get_tick_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_tick_day_data__historical) | **GET** /dapps/uniswapv3/tickDayData/historical | TickDayData (historical)
[**uniswap_v3_get_ticks__historical**](UniswapV3Api.md#uniswap_v3_get_ticks__historical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical)
[**uniswap_v3_get_token_hour_data__historical**](UniswapV3Api.md#uniswap_v3_get_token_hour_data__historical) | **GET** /dapps/uniswapv3/tokenHourData/historical | TokenHourData (historical)
[**uniswap_v3_get_token_v3_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_token_v3_day_data__historical) | **GET** /dapps/uniswapv3/tokenV3DayData/historical | TokenV3DayData (historical)
[**uniswap_v3_get_tokens__historical**](UniswapV3Api.md#uniswap_v3_get_tokens__historical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical)
[**uniswap_v3_get_transactions__historical**](UniswapV3Api.md#uniswap_v3_get_transactions__historical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical)
[**uniswap_v3_get_uniswap_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_uniswap_day_data__historical) | **GET** /dapps/uniswapv3/uniswapDayData/historical | UniswapDayData (historical)
[**uniswap_v3_mints__current**](UniswapV3Api.md#uniswap_v3_mints__current) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswap_v3_pool_day_data__current**](UniswapV3Api.md#uniswap_v3_pool_day_data__current) | **GET** /dapps/uniswapv3/poolDayData/current | PoolDayData (current)
[**uniswap_v3_pool_hour_data__current**](UniswapV3Api.md#uniswap_v3_pool_hour_data__current) | **GET** /dapps/uniswapv3/poolHourData/current | PoolHourData (current)
[**uniswap_v3_pools__current**](UniswapV3Api.md#uniswap_v3_pools__current) | **GET** /dapps/uniswapv3/pools/current | Pools (current)
[**uniswap_v3_position_snapshots__current**](UniswapV3Api.md#uniswap_v3_position_snapshots__current) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current)
[**uniswap_v3_positions__current**](UniswapV3Api.md#uniswap_v3_positions__current) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswap_v3_swaps__current**](UniswapV3Api.md#uniswap_v3_swaps__current) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current)
[**uniswap_v3_tick_day_data__current**](UniswapV3Api.md#uniswap_v3_tick_day_data__current) | **GET** /dapps/uniswapv3/tickDayData/current | TickDayData (current)
[**uniswap_v3_ticks__current**](UniswapV3Api.md#uniswap_v3_ticks__current) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswap_v3_token_hour_data__current**](UniswapV3Api.md#uniswap_v3_token_hour_data__current) | **GET** /dapps/uniswapv3/tokenHourData/current | TokenHourData (current)
[**uniswap_v3_token_v3_day_data__current**](UniswapV3Api.md#uniswap_v3_token_v3_day_data__current) | **GET** /dapps/uniswapv3/tokenV3DayData/current | TokenV3DayData (current)
[**uniswap_v3_tokens__current**](UniswapV3Api.md#uniswap_v3_tokens__current) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current)
[**uniswap_v3_transactions__current**](UniswapV3Api.md#uniswap_v3_transactions__current) | **GET** /dapps/uniswapv3/transactions/current | Transactions (current)
[**uniswap_v3_uniswap_day_data__current**](UniswapV3Api.md#uniswap_v3_uniswap_day_data__current) | **GET** /dapps/uniswapv3/uniswapDayData/current | UniswapDayData (current)


# **uniswap_v3_bundles__current**
> ARRAY[UniswapV3BundleDTO] uniswap_v3_bundles__current()

Bundles (current)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_bundles__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_bundles__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3BundleDTO]**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_burns__current**
> ARRAY[UniswapV3BurnDTO] uniswap_v3_burns__current()

Burns (current)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_burns__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_burns__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3BurnDTO]**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_factories__current**
> ARRAY[UniswapV3FactoryDTO] uniswap_v3_factories__current()

Factories (current)

Gets factories.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_factories__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_factories__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3FactoryDTO]**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_bundles__historical**
> ARRAY[UniswapV3BundleDTO] uniswap_v3_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Bundles (historical)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_bundles__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3BundleDTO]**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_burns__historical**
> ARRAY[UniswapV3BurnDTO] uniswap_v3_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1)

Burns (historical)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash + '#' + index in mints Transaction array.
my $pool = "pool_example"; # string | Pool position is within.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pool contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pool contract.

eval {
    my $result = $api_instance->uniswap_v3_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_burns__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] 
 **pool** | **string**| Pool position is within. | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pool contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**ARRAY[UniswapV3BurnDTO]**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_factories__historical**
> ARRAY[UniswapV3FactoryDTO] uniswap_v3_get_factories__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Factories (historical)

Gets factories.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Factory address.

eval {
    my $result = $api_instance->uniswap_v3_get_factories__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_factories__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Factory address. | [optional] 

### Return type

[**ARRAY[UniswapV3FactoryDTO]**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_mints__historical**
> ARRAY[UniswapV3MintDTO] uniswap_v3_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1)

Mints (historical)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash + '#' + index in mints Transaction array.
my $pool = "pool_example"; # string | Pool address.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pool contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pool contract.

eval {
    my $result = $api_instance->uniswap_v3_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_mints__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] 
 **pool** | **string**| Pool address. | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pool contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**ARRAY[UniswapV3MintDTO]**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pool_day_data__historical**
> ARRAY[UniswapV3PoolDayDataDTO] uniswap_v3_get_pool_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

PoolDayData (historical)

Gets poolDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pool address)-(day id).
my $pool = "pool_example"; # string | Pointer to pool.

eval {
    my $result = $api_instance->uniswap_v3_get_pool_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_pool_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pool address)-(day id). | [optional] 
 **pool** | **string**| Pointer to pool. | [optional] 

### Return type

[**ARRAY[UniswapV3PoolDayDataDTO]**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pool_hour_data__historical**
> ARRAY[UniswapV3PoolHourDataDTO] uniswap_v3_get_pool_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

PoolHourData (historical)

Gets poolHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pool address)-(day id)
my $pool = "pool_example"; # string | Pointer to pool.

eval {
    my $result = $api_instance->uniswap_v3_get_pool_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_pool_hour_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pool address)-(day id) | [optional] 
 **pool** | **string**| Pointer to pool. | [optional] 

### Return type

[**ARRAY[UniswapV3PoolHourDataDTO]**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools__historical**
> ARRAY[UniswapV3PoolDTO] uniswap_v3_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1)

Pools (historical)

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Pool address.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pool contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pool contract.

eval {
    my $result = $api_instance->uniswap_v3_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_pools__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Pool address. | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pool contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**ARRAY[UniswapV3PoolDTO]**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_position_snapshots__historical**
> ARRAY[UniswapV3PositionSnapshotDTO] uniswap_v3_get_position_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

PositionSnapshots (historical)

Gets positionSnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | NFT token identifier, format: (NFT token id)#(block number).
my $pool = "pool_example"; # string | Pool the position is within.

eval {
    my $result = $api_instance->uniswap_v3_get_position_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_position_snapshots__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| NFT token identifier, format: (NFT token id)#(block number). | [optional] 
 **pool** | **string**| Pool the position is within. | [optional] 

### Return type

[**ARRAY[UniswapV3PositionSnapshotDTO]**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_positions__historical**
> ARRAY[UniswapV3PositionDTO] uniswap_v3_get_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1)

Positions (historical)

Gets positions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | NFT token identifier.
my $pool = "pool_example"; # string | Pool position is within.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pair contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pair contract.

eval {
    my $result = $api_instance->uniswap_v3_get_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_positions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| NFT token identifier. | [optional] 
 **pool** | **string**| Pool position is within. | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**ARRAY[UniswapV3PositionDTO]**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_swaps__historical**
> ARRAY[UniswapV3SwapDTO] uniswap_v3_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1)

Swaps (historical)

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
my $pool = "pool_example"; # string | Pool swap occured within.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pair contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pair contract.

eval {
    my $result = $api_instance->uniswap_v3_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_swaps__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] 
 **pool** | **string**| Pool swap occured within. | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**ARRAY[UniswapV3SwapDTO]**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tick_day_data__historical**
> ARRAY[UniswapV3TickDayDataDTO] uniswap_v3_get_tick_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

TickDayData (historical)

Gets tickDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pool address)-(tick index)-(timestamp).
my $pool = "pool_example"; # string | Pointer to pool.

eval {
    my $result = $api_instance->uniswap_v3_get_tick_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_tick_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
 **pool** | **string**| Pointer to pool. | [optional] 

### Return type

[**ARRAY[UniswapV3TickDayDataDTO]**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_ticks__historical**
> ARRAY[UniswapV3TickDTO] uniswap_v3_get_ticks__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

Ticks (historical)

Gets ticks.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pool address)#(tick index)
my $pool = "pool_example"; # string | Pool address.

eval {
    my $result = $api_instance->uniswap_v3_get_ticks__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_ticks__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pool address)#(tick index) | [optional] 
 **pool** | **string**| Pool address. | [optional] 

### Return type

[**ARRAY[UniswapV3TickDTO]**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_token_hour_data__historical**
> ARRAY[UniswapV3TokenHourDataDTO] uniswap_v3_get_token_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

TokenHourData (historical)

Gets tokenHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address concatendated with date.

eval {
    my $result = $api_instance->uniswap_v3_get_token_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_token_hour_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token address concatendated with date. | [optional] 

### Return type

[**ARRAY[UniswapV3TokenHourDataDTO]**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_token_v3_day_data__historical**
> ARRAY[UniswapV3TokenV3DayDataDTO] uniswap_v3_get_token_v3_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

TokenV3DayData (historical)

Gets tokenV3DayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address concatendated with date.

eval {
    my $result = $api_instance->uniswap_v3_get_token_v3_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_token_v3_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token address concatendated with date. | [optional] 

### Return type

[**ARRAY[UniswapV3TokenV3DayDataDTO]**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens__historical**
> ARRAY[UniswapV3TokenDTO] uniswap_v3_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name)

Tokens (historical)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address.
my $symbol = "symbol_example"; # string | Token symbol.
my $name = "name_example"; # string | Token name.

eval {
    my $result = $api_instance->uniswap_v3_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_tokens__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token address. | [optional] 
 **symbol** | **string**| Token symbol. | [optional] 
 **name** | **string**| Token name. | [optional] 

### Return type

[**ARRAY[UniswapV3TokenDTO]**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_transactions__historical**
> ARRAY[UniswapV3TransactionDTO] uniswap_v3_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Transactions (historical)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash.

eval {
    my $result = $api_instance->uniswap_v3_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_transactions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash. | [optional] 

### Return type

[**ARRAY[UniswapV3TransactionDTO]**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_uniswap_day_data__historical**
> ARRAY[UniswapV3UniswapDayDataDTO] uniswap_v3_get_uniswap_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

UniswapDayData (historical)

Gets uniswapDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Timestamp rounded to current day by dividing by 86400.

eval {
    my $result = $api_instance->uniswap_v3_get_uniswap_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_uniswap_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Timestamp rounded to current day by dividing by 86400. | [optional] 

### Return type

[**ARRAY[UniswapV3UniswapDayDataDTO]**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_mints__current**
> ARRAY[UniswapV3MintDTO] uniswap_v3_mints__current()

Mints (current)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_mints__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_mints__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3MintDTO]**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_pool_day_data__current**
> ARRAY[UniswapV3PoolDayDataDTO] uniswap_v3_pool_day_data__current()

PoolDayData (current)

Gets poolDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_pool_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_pool_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3PoolDayDataDTO]**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_pool_hour_data__current**
> ARRAY[UniswapV3PoolHourDataDTO] uniswap_v3_pool_hour_data__current()

PoolHourData (current)

Gets poolHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_pool_hour_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_pool_hour_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3PoolHourDataDTO]**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_pools__current**
> ARRAY[UniswapV3PoolDTO] uniswap_v3_pools__current(id => $id)

Pools (current)

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $id = "id_example"; # string | Pool address.

eval {
    my $result = $api_instance->uniswap_v3_pools__current(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_pools__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Pool address. | [optional] 

### Return type

[**ARRAY[UniswapV3PoolDTO]**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_position_snapshots__current**
> ARRAY[UniswapV3PositionSnapshotDTO] uniswap_v3_position_snapshots__current()

PositionSnapshots (current)

Gets positionSnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_position_snapshots__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_position_snapshots__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3PositionSnapshotDTO]**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_positions__current**
> ARRAY[UniswapV3PositionDTO] uniswap_v3_positions__current()

Positions (current)

Gets positions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_positions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_positions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3PositionDTO]**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_swaps__current**
> ARRAY[UniswapV3SwapDTO] uniswap_v3_swaps__current(pool => $pool)

Swaps (current)

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $pool = "pool_example"; # string | Pool swap occured within.

eval {
    my $result = $api_instance->uniswap_v3_swaps__current(pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_swaps__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool** | **string**| Pool swap occured within. | [optional] 

### Return type

[**ARRAY[UniswapV3SwapDTO]**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_tick_day_data__current**
> ARRAY[UniswapV3TickDayDataDTO] uniswap_v3_tick_day_data__current()

TickDayData (current)

Gets tickDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_tick_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_tick_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3TickDayDataDTO]**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_ticks__current**
> ARRAY[UniswapV3TickDTO] uniswap_v3_ticks__current()

Ticks (current)

Gets ticks.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_ticks__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_ticks__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3TickDTO]**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_token_hour_data__current**
> ARRAY[UniswapV3TokenHourDataDTO] uniswap_v3_token_hour_data__current()

TokenHourData (current)

Gets tokenHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_token_hour_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_token_hour_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3TokenHourDataDTO]**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_token_v3_day_data__current**
> ARRAY[UniswapV3TokenV3DayDataDTO] uniswap_v3_token_v3_day_data__current()

TokenV3DayData (current)

Gets tokenV3DayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_token_v3_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_token_v3_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3TokenV3DayDataDTO]**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_tokens__current**
> ARRAY[UniswapV3TokenDTO] uniswap_v3_tokens__current()

Tokens (current)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3TokenDTO]**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_transactions__current**
> ARRAY[UniswapV3TransactionDTO] uniswap_v3_transactions__current()

Transactions (current)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_transactions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_transactions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3TransactionDTO]**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_uniswap_day_data__current**
> ARRAY[UniswapV3UniswapDayDataDTO] uniswap_v3_uniswap_day_data__current()

UniswapDayData (current)

Gets uniswapDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_uniswap_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_uniswap_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3UniswapDayDataDTO]**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

