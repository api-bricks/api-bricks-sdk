# WWW::OpenAPIClient::CRYPTOPUNKSApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CRYPTOPUNKSApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**c_ryptopunks_bids__current**](CRYPTOPUNKSApi.md#c_ryptopunks_bids__current) | **GET** /dapps/cryptopunks/bids/current | Bids (current)
[**c_ryptopunks_collection_daily_snapshots__current**](CRYPTOPUNKSApi.md#c_ryptopunks_collection_daily_snapshots__current) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**c_ryptopunks_collections__current**](CRYPTOPUNKSApi.md#c_ryptopunks_collections__current) | **GET** /dapps/cryptopunks/collections/current | Collections (current)
[**c_ryptopunks_data_sources__current**](CRYPTOPUNKSApi.md#c_ryptopunks_data_sources__current) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**c_ryptopunks_get_bids__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_bids__historical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical)
[**c_ryptopunks_get_collection_daily_snapshots__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_collection_daily_snapshots__historical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**c_ryptopunks_get_collections__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_collections__historical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical)
[**c_ryptopunks_get_data_sources__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_data_sources__historical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**c_ryptopunks_get_items__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_items__historical) | **GET** /dapps/cryptopunks/items/historical | Items (historical)
[**c_ryptopunks_get_market_places__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_market_places__historical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**c_ryptopunks_get_marketplace_daily_snapshots__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_marketplace_daily_snapshots__historical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**c_ryptopunks_get_trades__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_trades__historical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical)
[**c_ryptopunks_get_users__historical**](CRYPTOPUNKSApi.md#c_ryptopunks_get_users__historical) | **GET** /dapps/cryptopunks/users/historical | Users (historical)
[**c_ryptopunks_items__current**](CRYPTOPUNKSApi.md#c_ryptopunks_items__current) | **GET** /dapps/cryptopunks/items/current | Items (current)
[**c_ryptopunks_market_places__current**](CRYPTOPUNKSApi.md#c_ryptopunks_market_places__current) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**c_ryptopunks_marketplace_daily_snapshots__current**](CRYPTOPUNKSApi.md#c_ryptopunks_marketplace_daily_snapshots__current) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**c_ryptopunks_trades__current**](CRYPTOPUNKSApi.md#c_ryptopunks_trades__current) | **GET** /dapps/cryptopunks/trades/current | Trades (current)
[**c_ryptopunks_users__current**](CRYPTOPUNKSApi.md#c_ryptopunks_users__current) | **GET** /dapps/cryptopunks/users/current | Users (current)


# **c_ryptopunks_bids__current**
> ARRAY[CRYPTOPUNKSBidDTO] c_ryptopunks_bids__current()

Bids (current)

Gets bids.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_bids__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_bids__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSBidDTO]**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_collection_daily_snapshots__current**
> ARRAY[CRYPTOPUNKSCollectionDailySnapshotDTO] c_ryptopunks_collection_daily_snapshots__current()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_collection_daily_snapshots__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_collection_daily_snapshots__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSCollectionDailySnapshotDTO]**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_collections__current**
> ARRAY[CRYPTOPUNKSCollectionDTO] c_ryptopunks_collections__current()

Collections (current)

Gets collections.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_collections__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_collections__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSCollectionDTO]**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_data_sources__current**
> ARRAY[CRYPTOPUNKSDataSourcesDTO] c_ryptopunks_data_sources__current()

DataSources (current)

Gets dataSources.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_data_sources__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_data_sources__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSDataSourcesDTO]**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_bids__historical**
> ARRAY[CRYPTOPUNKSBidDTO] c_ryptopunks_get_bids__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Bids (historical)

Gets bids.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_bids__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_bids__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSBidDTO]**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_collection_daily_snapshots__historical**
> ARRAY[CRYPTOPUNKSCollectionDailySnapshotDTO] c_ryptopunks_get_collection_daily_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.

eval {
    my $result = $api_instance->c_ryptopunks_get_collection_daily_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_collection_daily_snapshots__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 

### Return type

[**ARRAY[CRYPTOPUNKSCollectionDailySnapshotDTO]**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_collections__historical**
> ARRAY[CRYPTOPUNKSCollectionDTO] c_ryptopunks_get_collections__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Collections (historical)

Gets collections.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_collections__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_collections__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSCollectionDTO]**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_data_sources__historical**
> ARRAY[CRYPTOPUNKSDataSourcesDTO] c_ryptopunks_get_data_sources__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

DataSources (historical)

Gets dataSources.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_data_sources__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_data_sources__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSDataSourcesDTO]**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_items__historical**
> ARRAY[CRYPTOPUNKSItemDTO] c_ryptopunks_get_items__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Items (historical)

Gets items.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.

eval {
    my $result = $api_instance->c_ryptopunks_get_items__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_items__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 

### Return type

[**ARRAY[CRYPTOPUNKSItemDTO]**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_market_places__historical**
> ARRAY[CRYPTOPUNKSMarketPlaceDTO] c_ryptopunks_get_market_places__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

MarketPlaces (historical)

Gets marketPlaces.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_market_places__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_market_places__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSMarketPlaceDTO]**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_marketplace_daily_snapshots__historical**
> ARRAY[CRYPTOPUNKSMarketplaceDailySnapshotDTO] c_ryptopunks_get_marketplace_daily_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_marketplace_daily_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_marketplace_daily_snapshots__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSMarketplaceDailySnapshotDTO]**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_trades__historical**
> ARRAY[CRYPTOPUNKSTradeDTO] c_ryptopunks_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Trades (historical)

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_trades__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSTradeDTO]**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_get_users__historical**
> ARRAY[CRYPTOPUNKSUserDTO] c_ryptopunks_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->c_ryptopunks_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_users__historical: $@\n";
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

[**ARRAY[CRYPTOPUNKSUserDTO]**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_items__current**
> ARRAY[CRYPTOPUNKSItemDTO] c_ryptopunks_items__current()

Items (current)

Gets items.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_items__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_items__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSItemDTO]**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_market_places__current**
> ARRAY[CRYPTOPUNKSMarketPlaceDTO] c_ryptopunks_market_places__current()

MarketPlaces (current)

Gets marketPlaces.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_market_places__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_market_places__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSMarketPlaceDTO]**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_marketplace_daily_snapshots__current**
> ARRAY[CRYPTOPUNKSMarketplaceDailySnapshotDTO] c_ryptopunks_marketplace_daily_snapshots__current()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_marketplace_daily_snapshots__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_marketplace_daily_snapshots__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSMarketplaceDailySnapshotDTO]**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_trades__current**
> ARRAY[CRYPTOPUNKSTradeDTO] c_ryptopunks_trades__current()

Trades (current)

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_trades__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_trades__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSTradeDTO]**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **c_ryptopunks_users__current**
> ARRAY[CRYPTOPUNKSUserDTO] c_ryptopunks_users__current()

Users (current)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CRYPTOPUNKSApi;
my $api_instance = WWW::OpenAPIClient::CRYPTOPUNKSApi->new(
);


eval {
    my $result = $api_instance->c_ryptopunks_users__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRYPTOPUNKSApi->c_ryptopunks_users__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CRYPTOPUNKSUserDTO]**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

