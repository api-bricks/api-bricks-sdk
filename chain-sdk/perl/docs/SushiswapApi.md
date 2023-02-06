# WWW::OpenAPIClient::SushiswapApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SushiswapApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswap_bundles__current**](SushiswapApi.md#sushiswap_bundles__current) | **GET** /dapps/sushiswap/bundles/current | Bundles (current)
[**sushiswap_burns__current**](SushiswapApi.md#sushiswap_burns__current) | **GET** /dapps/sushiswap/burns/current | Burns (current)
[**sushiswap_day_data__current**](SushiswapApi.md#sushiswap_day_data__current) | **GET** /dapps/sushiswap/dayData/current | DayData (current)
[**sushiswap_factories__current**](SushiswapApi.md#sushiswap_factories__current) | **GET** /dapps/sushiswap/factories/current | Factories (current)
[**sushiswap_get_bundles__historical**](SushiswapApi.md#sushiswap_get_bundles__historical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
[**sushiswap_get_burns__historical**](SushiswapApi.md#sushiswap_get_burns__historical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
[**sushiswap_get_day_data__historical**](SushiswapApi.md#sushiswap_get_day_data__historical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
[**sushiswap_get_factories__historical**](SushiswapApi.md#sushiswap_get_factories__historical) | **GET** /dapps/sushiswap/factories/historical | Factories (historical)
[**sushiswap_get_hour_data__historical**](SushiswapApi.md#sushiswap_get_hour_data__historical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
[**sushiswap_get_liquidity_position_snapshots__historical**](SushiswapApi.md#sushiswap_get_liquidity_position_snapshots__historical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical)
[**sushiswap_get_liquidity_positions__historical**](SushiswapApi.md#sushiswap_get_liquidity_positions__historical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical)
[**sushiswap_get_mints__historical**](SushiswapApi.md#sushiswap_get_mints__historical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
[**sushiswap_get_pair_day_data__historical**](SushiswapApi.md#sushiswap_get_pair_day_data__historical) | **GET** /dapps/sushiswap/pairDayData/historical | PairDayData (historical)
[**sushiswap_get_pair_hour_data__historical**](SushiswapApi.md#sushiswap_get_pair_hour_data__historical) | **GET** /dapps/sushiswap/pairHourData/historical | PairHourData (historical)
[**sushiswap_get_pairs__historical**](SushiswapApi.md#sushiswap_get_pairs__historical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical)
[**sushiswap_get_swaps__historical**](SushiswapApi.md#sushiswap_get_swaps__historical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical)
[**sushiswap_get_token_day_data__historical**](SushiswapApi.md#sushiswap_get_token_day_data__historical) | **GET** /dapps/sushiswap/tokenDayData/historical | TokenDayData (historical)
[**sushiswap_get_tokens__historical**](SushiswapApi.md#sushiswap_get_tokens__historical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical)
[**sushiswap_get_transactions__historical**](SushiswapApi.md#sushiswap_get_transactions__historical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
[**sushiswap_get_users__historical**](SushiswapApi.md#sushiswap_get_users__historical) | **GET** /dapps/sushiswap/users/historical | Users (historical)
[**sushiswap_hour_data__current**](SushiswapApi.md#sushiswap_hour_data__current) | **GET** /dapps/sushiswap/hourData/current | HourData (current)
[**sushiswap_liquidity_position_snapshots__current**](SushiswapApi.md#sushiswap_liquidity_position_snapshots__current) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
[**sushiswap_liquidity_positions__current**](SushiswapApi.md#sushiswap_liquidity_positions__current) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current)
[**sushiswap_mints__current**](SushiswapApi.md#sushiswap_mints__current) | **GET** /dapps/sushiswap/mints/current | Mints (current)
[**sushiswap_pair_day_data__current**](SushiswapApi.md#sushiswap_pair_day_data__current) | **GET** /dapps/sushiswap/pairDayData/current | PairDayData (current)
[**sushiswap_pair_hour_data__current**](SushiswapApi.md#sushiswap_pair_hour_data__current) | **GET** /dapps/sushiswap/pairHourData/current | PairHourData (current)
[**sushiswap_pairs__current**](SushiswapApi.md#sushiswap_pairs__current) | **GET** /dapps/sushiswap/pairs/current | Pairs (current)
[**sushiswap_swaps__current**](SushiswapApi.md#sushiswap_swaps__current) | **GET** /dapps/sushiswap/swaps/current | Swaps (current)
[**sushiswap_token_day_data__current**](SushiswapApi.md#sushiswap_token_day_data__current) | **GET** /dapps/sushiswap/tokenDayData/current | TokenDayData (current)
[**sushiswap_tokens__current**](SushiswapApi.md#sushiswap_tokens__current) | **GET** /dapps/sushiswap/tokens/current | Tokens (current)
[**sushiswap_transactions__current**](SushiswapApi.md#sushiswap_transactions__current) | **GET** /dapps/sushiswap/transactions/current | Transactions (current)
[**sushiswap_users__current**](SushiswapApi.md#sushiswap_users__current) | **GET** /dapps/sushiswap/users/current | Users (current)


# **sushiswap_bundles__current**
> ARRAY[SushiswapBundleDTO] sushiswap_bundles__current()

Bundles (current)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_bundles__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_bundles__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapBundleDTO]**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_burns__current**
> ARRAY[SushiswapBurnDTO] sushiswap_burns__current()

Burns (current)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_burns__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_burns__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapBurnDTO]**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_day_data__current**
> ARRAY[SushiswapDayDataDTO] sushiswap_day_data__current()

DayData (current)

Gets dayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapDayDataDTO]**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_factories__current**
> ARRAY[SushiswapFactoryDTO] sushiswap_factories__current()

Factories (current)

Gets factories.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_factories__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_factories__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapFactoryDTO]**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_bundles__historical**
> ARRAY[SushiswapBundleDTO] sushiswap_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Bundles (historical)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Hardcoded to '1'.

eval {
    my $result = $api_instance->sushiswap_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_bundles__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Hardcoded to &#39;1&#39;. | [optional] 

### Return type

[**ARRAY[SushiswapBundleDTO]**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_burns__historical**
> ARRAY[SushiswapBurnDTO] sushiswap_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

Burns (historical)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (transaction id):(transaction.burns.length).
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->sushiswap_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_burns__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[SushiswapBurnDTO]**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_day_data__historical**
> ARRAY[SushiswapDayDataDTO] sushiswap_get_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

DayData (historical)

Gets dayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Unix timestamp for start of day / 86400 giving a unique day index.

eval {
    my $result = $api_instance->sushiswap_get_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] 

### Return type

[**ARRAY[SushiswapDayDataDTO]**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_factories__historical**
> ARRAY[SushiswapFactoryDTO] sushiswap_get_factories__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Factories (historical)

Gets factories.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Factory address.

eval {
    my $result = $api_instance->sushiswap_get_factories__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_factories__historical: $@\n";
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

[**ARRAY[SushiswapFactoryDTO]**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_hour_data__historical**
> ARRAY[SushiswapHourDataDTO] sushiswap_get_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

HourData (historical)

Gets hourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Start of hour timestamp.

eval {
    my $result = $api_instance->sushiswap_get_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_hour_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Start of hour timestamp. | [optional] 

### Return type

[**ARRAY[SushiswapHourDataDTO]**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_liquidity_position_snapshots__historical**
> ARRAY[SushiswapLiquidityPositionSnapshotDTO] sushiswap_get_liquidity_position_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair)

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pair address)-(user address)-(timestamp)
my $user = "user_example"; # string | Reference to user.
my $pair = "pair_example"; # string | Reference to the pair liquidity is being provided on.

eval {
    my $result = $api_instance->sushiswap_get_liquidity_position_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_liquidity_position_snapshots__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
 **user** | **string**| Reference to user. | [optional] 
 **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**ARRAY[SushiswapLiquidityPositionSnapshotDTO]**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_liquidity_positions__historical**
> ARRAY[SushiswapLiquidityPositionDTO] sushiswap_get_liquidity_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair)

LiquidityPositions (historical)

Gets liquidityPositions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pair address)-(user address)
my $user = "user_example"; # string | User address.
my $pair = "pair_example"; # string | Pair address.

eval {
    my $result = $api_instance->sushiswap_get_liquidity_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_liquidity_positions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pair address)-(user address) | [optional] 
 **user** | **string**| User address. | [optional] 
 **pair** | **string**| Pair address. | [optional] 

### Return type

[**ARRAY[SushiswapLiquidityPositionDTO]**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_mints__historical**
> ARRAY[SushiswapMintDTO] sushiswap_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

Mints (historical)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (transaction hash)-(index in the transaction mint array).
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->sushiswap_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_mints__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[SushiswapMintDTO]**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pair_day_data__historical**
> ARRAY[SushiswapPairDayDataDTO] sushiswap_get_pair_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair, token_0 => $token_0, token_1 => $token_1)

PairDayData (historical)

Gets pairDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pair id)-(day start timestamp).
my $pair = "pair_example"; # string | Reference to pair.
my $token_0 = "token_0_example"; # string | Reference to token0.
my $token_1 = "token_1_example"; # string | Reference to token1.

eval {
    my $result = $api_instance->sushiswap_get_pair_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_pair_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pair id)-(day start timestamp). | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 
 **token_0** | **string**| Reference to token0. | [optional] 
 **token_1** | **string**| Reference to token1. | [optional] 

### Return type

[**ARRAY[SushiswapPairDayDataDTO]**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pair_hour_data__historical**
> ARRAY[SushiswapPairHourDataDTO] sushiswap_get_pair_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

PairHourData (historical)

Gets pairHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pair id)-(hour start timestamp).
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->sushiswap_get_pair_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_pair_hour_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pair id)-(hour start timestamp). | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[SushiswapPairHourDataDTO]**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pairs__historical**
> ARRAY[SushiswapPairDTO] sushiswap_get_pairs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, name => $name, token_0 => $token_0, token_1 => $token_1)

Pairs (historical)

Gets pairs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Pair contract address.
my $name = "name_example"; # string | Friendly name, format: (token0 name)-(token1 name)
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pair contract.
my $token_1 = "token_1_example"; # string | Reference to token0 as stored in pair contract.

eval {
    my $result = $api_instance->sushiswap_get_pairs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, name => $name, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_pairs__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Pair contract address. | [optional] 
 **name** | **string**| Friendly name, format: (token0 name)-(token1 name) | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] 
 **token_1** | **string**| Reference to token0 as stored in pair contract. | [optional] 

### Return type

[**ARRAY[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_swaps__historical**
> ARRAY[SushiswapSwapDTO] sushiswap_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

Swaps (historical)

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in Transaction swap array.
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->sushiswap_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_swaps__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash plus index in Transaction swap array. | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_token_day_data__historical**
> ARRAY[SushiswapTokenDayDataDTO] sushiswap_get_token_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

TokenDayData (historical)

Gets tokenDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, day start timestamp in unix / 86400.

eval {
    my $result = $api_instance->sushiswap_get_token_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_token_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, day start timestamp in unix / 86400. | [optional] 

### Return type

[**ARRAY[SushiswapTokenDayDataDTO]**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_tokens__historical**
> ARRAY[SushiswapTokenDTO] sushiswap_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name)

Tokens (historical)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address.
my $symbol = "symbol_example"; # string | Token symbol.
my $name = "name_example"; # string | Token name.

eval {
    my $result = $api_instance->sushiswap_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_tokens__historical: $@\n";
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

[**ARRAY[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_transactions__historical**
> ARRAY[SushiswapTransactionDTO] sushiswap_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Transactions (historical)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Ethereum transaction hash.

eval {
    my $result = $api_instance->sushiswap_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_transactions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Ethereum transaction hash. | [optional] 

### Return type

[**ARRAY[SushiswapTransactionDTO]**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_users__historical**
> ARRAY[SushiswapUserDTO] sushiswap_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User address.

eval {
    my $result = $api_instance->sushiswap_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_users__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| User address. | [optional] 

### Return type

[**ARRAY[SushiswapUserDTO]**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_hour_data__current**
> ARRAY[SushiswapHourDataDTO] sushiswap_hour_data__current()

HourData (current)

Gets hourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_hour_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_hour_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapHourDataDTO]**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_liquidity_position_snapshots__current**
> ARRAY[SushiswapLiquidityPositionSnapshotDTO] sushiswap_liquidity_position_snapshots__current()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_liquidity_position_snapshots__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_liquidity_position_snapshots__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapLiquidityPositionSnapshotDTO]**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_liquidity_positions__current**
> ARRAY[SushiswapLiquidityPositionDTO] sushiswap_liquidity_positions__current()

LiquidityPositions (current)

Gets liquidityPositions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_liquidity_positions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_liquidity_positions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapLiquidityPositionDTO]**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_mints__current**
> ARRAY[SushiswapMintDTO] sushiswap_mints__current()

Mints (current)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_mints__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_mints__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapMintDTO]**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_pair_day_data__current**
> ARRAY[SushiswapPairDayDataDTO] sushiswap_pair_day_data__current()

PairDayData (current)

Gets pairDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_pair_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_pair_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapPairDayDataDTO]**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_pair_hour_data__current**
> ARRAY[SushiswapPairHourDataDTO] sushiswap_pair_hour_data__current()

PairHourData (current)

Gets pairHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_pair_hour_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_pair_hour_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapPairHourDataDTO]**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_pairs__current**
> ARRAY[SushiswapPairDTO] sushiswap_pairs__current(id => $id)

Pairs (current)

Gets pairs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $id = "id_example"; # string | Pair contract address.

eval {
    my $result = $api_instance->sushiswap_pairs__current(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_pairs__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Pair contract address. | [optional] 

### Return type

[**ARRAY[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_swaps__current**
> ARRAY[SushiswapSwapDTO] sushiswap_swaps__current(pair => $pair)

Swaps (current)

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->sushiswap_swaps__current(pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_swaps__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_token_day_data__current**
> ARRAY[SushiswapTokenDayDataDTO] sushiswap_token_day_data__current()

TokenDayData (current)

Gets tokenDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_token_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_token_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapTokenDayDataDTO]**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_tokens__current**
> ARRAY[SushiswapTokenDTO] sushiswap_tokens__current()

Tokens (current)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_transactions__current**
> ARRAY[SushiswapTransactionDTO] sushiswap_transactions__current()

Transactions (current)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_transactions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_transactions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapTransactionDTO]**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_users__current**
> ARRAY[SushiswapUserDTO] sushiswap_users__current()

Users (current)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_users__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_users__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapUserDTO]**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

