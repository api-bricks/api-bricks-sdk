# WWW::OpenAPIClient::UniswapV2Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV2Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_bundles__current**](UniswapV2Api.md#uniswap_v2_bundles__current) | **GET** /dapps/uniswapv2/bundles/current | Bundles (current)
[**uniswap_v2_burns__current**](UniswapV2Api.md#uniswap_v2_burns__current) | **GET** /dapps/uniswapv2/burns/current | Burns (current)
[**uniswap_v2_get_bundles__historical**](UniswapV2Api.md#uniswap_v2_get_bundles__historical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
[**uniswap_v2_get_burns__historical**](UniswapV2Api.md#uniswap_v2_get_burns__historical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
[**uniswap_v2_get_liquidity_position_snapshots__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_position_snapshots__historical) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical)
[**uniswap_v2_get_liquidity_positions__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_positions__historical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
[**uniswap_v2_get_mints__historical**](UniswapV2Api.md#uniswap_v2_get_mints__historical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
[**uniswap_v2_get_pair_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_pair_day_data__historical) | **GET** /dapps/uniswapv2/pairDayData/historical | PairDayData (historical)
[**uniswap_v2_get_pair_hour_data__historical**](UniswapV2Api.md#uniswap_v2_get_pair_hour_data__historical) | **GET** /dapps/uniswapv2/pairHourData/historical | PairHourData (historical)
[**uniswap_v2_get_pairs__historical**](UniswapV2Api.md#uniswap_v2_get_pairs__historical) | **GET** /dapps/uniswapv2/pairs/historical | Pairs (historical)
[**uniswap_v2_get_swaps__historical**](UniswapV2Api.md#uniswap_v2_get_swaps__historical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical)
[**uniswap_v2_get_token_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_token_day_data__historical) | **GET** /dapps/uniswapv2/tokenDayData/historical | TokenDayData (historical)
[**uniswap_v2_get_tokens__historical**](UniswapV2Api.md#uniswap_v2_get_tokens__historical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical)
[**uniswap_v2_get_transactions__historical**](UniswapV2Api.md#uniswap_v2_get_transactions__historical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
[**uniswap_v2_get_uniswap_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_uniswap_day_data__historical) | **GET** /dapps/uniswapv2/uniswapDayData/historical | UniswapDayData (historical)
[**uniswap_v2_get_uniswap_factories__historical**](UniswapV2Api.md#uniswap_v2_get_uniswap_factories__historical) | **GET** /dapps/uniswapv2/uniswapFactories/historical | UniswapFactories (historical)
[**uniswap_v2_get_users__historical**](UniswapV2Api.md#uniswap_v2_get_users__historical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)
[**uniswap_v2_liquidity_position_snapshots__current**](UniswapV2Api.md#uniswap_v2_liquidity_position_snapshots__current) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
[**uniswap_v2_liquidity_positions__current**](UniswapV2Api.md#uniswap_v2_liquidity_positions__current) | **GET** /dapps/uniswapv2/liquidityPositions/current | LiquidityPositions (current)
[**uniswap_v2_mints__current**](UniswapV2Api.md#uniswap_v2_mints__current) | **GET** /dapps/uniswapv2/mints/current | Mints (current)
[**uniswap_v2_pair_day_data__current**](UniswapV2Api.md#uniswap_v2_pair_day_data__current) | **GET** /dapps/uniswapv2/pairDayData/current | PairDayData (current)
[**uniswap_v2_pair_hour_data__current**](UniswapV2Api.md#uniswap_v2_pair_hour_data__current) | **GET** /dapps/uniswapv2/pairHourData/current | PairHourData (current)
[**uniswap_v2_pairs__current**](UniswapV2Api.md#uniswap_v2_pairs__current) | **GET** /dapps/uniswapv2/pairs/current | Pairs (current)
[**uniswap_v2_swaps__current**](UniswapV2Api.md#uniswap_v2_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current)
[**uniswap_v2_token_day_data__current**](UniswapV2Api.md#uniswap_v2_token_day_data__current) | **GET** /dapps/uniswapv2/tokenDayData/current | TokenDayData (current)
[**uniswap_v2_tokens__current**](UniswapV2Api.md#uniswap_v2_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current)
[**uniswap_v2_transactions__current**](UniswapV2Api.md#uniswap_v2_transactions__current) | **GET** /dapps/uniswapv2/transactions/current | Transactions (current)
[**uniswap_v2_uniswap_day_data__current**](UniswapV2Api.md#uniswap_v2_uniswap_day_data__current) | **GET** /dapps/uniswapv2/uniswapDayData/current | UniswapDayData (current)
[**uniswap_v2_uniswap_factories__current**](UniswapV2Api.md#uniswap_v2_uniswap_factories__current) | **GET** /dapps/uniswapv2/uniswapFactories/current | UniswapFactories (current)
[**uniswap_v2_users__current**](UniswapV2Api.md#uniswap_v2_users__current) | **GET** /dapps/uniswapv2/users/current | Users (current)


# **uniswap_v2_bundles__current**
> ARRAY[UniswapV2BundleDTO] uniswap_v2_bundles__current()

Bundles (current)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_bundles__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_bundles__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2BundleDTO]**](UniswapV2BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_burns__current**
> ARRAY[UniswapV2BurnDTO] uniswap_v2_burns__current()

Burns (current)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_burns__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_burns__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2BurnDTO]**](UniswapV2BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_bundles__historical**
> ARRAY[UniswapV2BundleDTO] uniswap_v2_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Bundles (historical)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Constant 1.

eval {
    my $result = $api_instance->uniswap_v2_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_bundles__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Constant 1. | [optional] 

### Return type

[**ARRAY[UniswapV2BundleDTO]**](UniswapV2BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_burns__historical**
> ARRAY[UniswapV2BurnDTO] uniswap_v2_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

Burns (historical)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in the transaction burn array
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_burns__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash plus index in the transaction burn array | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[UniswapV2BurnDTO]**](UniswapV2BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_position_snapshots__historical**
> ARRAY[UniswapV2LiquidityPositionSnapshotDTO] uniswap_v2_get_liquidity_position_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair)

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pair address)-(user address)
my $user = "user_example"; # string | Reference to user.
my $pair = "pair_example"; # string | Reference to the pair liquidity is being provided on.

eval {
    my $result = $api_instance->uniswap_v2_get_liquidity_position_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_position_snapshots__historical: $@\n";
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
 **user** | **string**| Reference to user. | [optional] 
 **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**ARRAY[UniswapV2LiquidityPositionSnapshotDTO]**](UniswapV2LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_positions__historical**
> ARRAY[UniswapV2LiquidityPositionDTO] uniswap_v2_get_liquidity_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair)

LiquidityPositions (historical)

Gets liquidityPositions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User address and pair address concatenated with a dash.
my $user = "user_example"; # string | Reference to user.
my $pair = "pair_example"; # string | Reference to the pair liquidity is being provided on.

eval {
    my $result = $api_instance->uniswap_v2_get_liquidity_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_positions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| User address and pair address concatenated with a dash. | [optional] 
 **user** | **string**| Reference to user. | [optional] 
 **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**ARRAY[UniswapV2LiquidityPositionDTO]**](UniswapV2LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_mints__historical**
> ARRAY[UniswapV2MintDTO] uniswap_v2_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

Mints (historical)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in the transaction mint array.
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_mints__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash plus index in the transaction mint array. | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[UniswapV2MintDTO]**](UniswapV2MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_day_data__historical**
> ARRAY[UniswapV2PairDayDataDTO] uniswap_v2_get_pair_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1)

PairDayData (historical)

Gets pairDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $token_0 = "token_0_example"; # string | Reference to token0.
my $token_1 = "token_1_example"; # string | Reference to token1.

eval {
    my $result = $api_instance->uniswap_v2_get_pair_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pair_day_data__historical: $@\n";
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
 **token_0** | **string**| Reference to token0. | [optional] 
 **token_1** | **string**| Reference to token1. | [optional] 

### Return type

[**ARRAY[UniswapV2PairDayDataDTO]**](UniswapV2PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_hour_data__historical**
> ARRAY[UniswapV2PairHourDataDTO] uniswap_v2_get_pair_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

PairHourData (historical)

Gets pairHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pair = "pair_example"; # string | Address for pair contract.

eval {
    my $result = $api_instance->uniswap_v2_get_pair_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pair_hour_data__historical: $@\n";
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
 **pair** | **string**| Address for pair contract. | [optional] 

### Return type

[**ARRAY[UniswapV2PairHourDataDTO]**](UniswapV2PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pairs__historical**
> ARRAY[UniswapV2PairDTO] uniswap_v2_get_pairs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1)

Pairs (historical)

Gets pairs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Pair contract address.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pair contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pair contract.

eval {
    my $result = $api_instance->uniswap_v2_get_pairs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pairs__historical: $@\n";
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
 **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**ARRAY[UniswapV2PairDTO]**](UniswapV2PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_swaps__historical**
> ARRAY[UniswapV2SwapDTO] uniswap_v2_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

Swaps (historical)

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in Transaction swap array.
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_swaps__historical: $@\n";
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

[**ARRAY[UniswapV2SwapDTO]**](UniswapV2SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_token_day_data__historical**
> ARRAY[UniswapV2TokenDayDataDTO] uniswap_v2_get_token_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

TokenDayData (historical)

Gets tokenDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.

eval {
    my $result = $api_instance->uniswap_v2_get_token_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_token_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] 

### Return type

[**ARRAY[UniswapV2TokenDayDataDTO]**](UniswapV2TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_tokens__historical**
> ARRAY[UniswapV2TokenDTO] uniswap_v2_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name)

Tokens (historical)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address.
my $symbol = "symbol_example"; # string | Token symbol.
my $name = "name_example"; # string | Token name.

eval {
    my $result = $api_instance->uniswap_v2_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_tokens__historical: $@\n";
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

[**ARRAY[UniswapV2TokenDTO]**](UniswapV2TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_transactions__historical**
> ARRAY[UniswapV2TransactionDTO] uniswap_v2_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Transactions (historical)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Ethereum transaction hash.

eval {
    my $result = $api_instance->uniswap_v2_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_transactions__historical: $@\n";
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

[**ARRAY[UniswapV2TransactionDTO]**](UniswapV2TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_uniswap_day_data__historical**
> ARRAY[UniswapV2UniswapDayDataDTO] uniswap_v2_get_uniswap_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

UniswapDayData (historical)

Gets uniswapDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Unix timestamp for start of day / 86400 giving a unique day index.

eval {
    my $result = $api_instance->uniswap_v2_get_uniswap_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_uniswap_day_data__historical: $@\n";
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

[**ARRAY[UniswapV2UniswapDayDataDTO]**](UniswapV2UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_uniswap_factories__historical**
> ARRAY[UniswapV2UniswapFactoryDTO] uniswap_v2_get_uniswap_factories__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

UniswapFactories (historical)

Gets uniswapFactories.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Factory address.

eval {
    my $result = $api_instance->uniswap_v2_get_uniswap_factories__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_uniswap_factories__historical: $@\n";
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

[**ARRAY[UniswapV2UniswapFactoryDTO]**](UniswapV2UniswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_users__historical**
> ARRAY[UniswapV2UserDTO] uniswap_v2_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User address.

eval {
    my $result = $api_instance->uniswap_v2_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_users__historical: $@\n";
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

[**ARRAY[UniswapV2UserDTO]**](UniswapV2UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_liquidity_position_snapshots__current**
> ARRAY[UniswapV2LiquidityPositionSnapshotDTO] uniswap_v2_liquidity_position_snapshots__current()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_liquidity_position_snapshots__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_liquidity_position_snapshots__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2LiquidityPositionSnapshotDTO]**](UniswapV2LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_liquidity_positions__current**
> ARRAY[UniswapV2LiquidityPositionDTO] uniswap_v2_liquidity_positions__current()

LiquidityPositions (current)

Gets liquidityPositions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_liquidity_positions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_liquidity_positions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2LiquidityPositionDTO]**](UniswapV2LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_mints__current**
> ARRAY[UniswapV2MintDTO] uniswap_v2_mints__current()

Mints (current)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_mints__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_mints__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2MintDTO]**](UniswapV2MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_pair_day_data__current**
> ARRAY[UniswapV2PairDayDataDTO] uniswap_v2_pair_day_data__current()

PairDayData (current)

Gets pairDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_pair_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_pair_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2PairDayDataDTO]**](UniswapV2PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_pair_hour_data__current**
> ARRAY[UniswapV2PairHourDataDTO] uniswap_v2_pair_hour_data__current()

PairHourData (current)

Gets pairHourData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_pair_hour_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_pair_hour_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2PairHourDataDTO]**](UniswapV2PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_pairs__current**
> ARRAY[UniswapV2PairDTO] uniswap_v2_pairs__current(id => $id)

Pairs (current)

Gets pairs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $id = "id_example"; # string | Pair contract address.

eval {
    my $result = $api_instance->uniswap_v2_pairs__current(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_pairs__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Pair contract address. | [optional] 

### Return type

[**ARRAY[UniswapV2PairDTO]**](UniswapV2PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_swaps__current**
> ARRAY[UniswapV2SwapDTO] uniswap_v2_swaps__current(pair => $pair)

Swaps (current)

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_swaps__current(pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_swaps__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[UniswapV2SwapDTO]**](UniswapV2SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_token_day_data__current**
> ARRAY[UniswapV2TokenDayDataDTO] uniswap_v2_token_day_data__current()

TokenDayData (current)

Gets tokenDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_token_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_token_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2TokenDayDataDTO]**](UniswapV2TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_tokens__current**
> ARRAY[UniswapV2TokenDTO] uniswap_v2_tokens__current()

Tokens (current)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2TokenDTO]**](UniswapV2TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_transactions__current**
> ARRAY[UniswapV2TransactionDTO] uniswap_v2_transactions__current()

Transactions (current)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_transactions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_transactions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2TransactionDTO]**](UniswapV2TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_uniswap_day_data__current**
> ARRAY[UniswapV2UniswapDayDataDTO] uniswap_v2_uniswap_day_data__current()

UniswapDayData (current)

Gets uniswapDayData.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_uniswap_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_uniswap_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2UniswapDayDataDTO]**](UniswapV2UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_uniswap_factories__current**
> ARRAY[UniswapV2UniswapFactoryDTO] uniswap_v2_uniswap_factories__current()

UniswapFactories (current)

Gets uniswapFactories.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_uniswap_factories__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_uniswap_factories__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2UniswapFactoryDTO]**](UniswapV2UniswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_users__current**
> ARRAY[UniswapV2UserDTO] uniswap_v2_users__current()

Users (current)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_users__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_users__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2UserDTO]**](UniswapV2UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

