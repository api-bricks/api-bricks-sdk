# WWW::OpenAPIClient::CowApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CowApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cow_get_orders__historical**](CowApi.md#cow_get_orders__historical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cow_get_settlements__historical**](CowApi.md#cow_get_settlements__historical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cow_get_tokens__historical**](CowApi.md#cow_get_tokens__historical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**cow_get_trades__historical**](CowApi.md#cow_get_trades__historical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**cow_get_users__historical**](CowApi.md#cow_get_users__historical) | **GET** /dapps/cow/users/historical | Users (historical)
[**cow_orders__current**](CowApi.md#cow_orders__current) | **GET** /dapps/cow/orders/current | Orders (current)
[**cow_settlements__current**](CowApi.md#cow_settlements__current) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**cow_tokens__current**](CowApi.md#cow_tokens__current) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**cow_trades__current**](CowApi.md#cow_trades__current) | **GET** /dapps/cow/trades/current | Trades (current)
[**cow_users__current**](CowApi.md#cow_users__current) | **GET** /dapps/cow/users/current | Users (current)


# **cow_get_orders__historical**
> ARRAY[CowOrderDTO] cow_get_orders__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Orders (historical)

Gets orders.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User's address.

eval {
    my $result = $api_instance->cow_get_orders__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_get_orders__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| User&#39;s address. | [optional] 

### Return type

[**ARRAY[CowOrderDTO]**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_settlements__historical**
> ARRAY[CowSettlementDTO] cow_get_settlements__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Settlements (historical)

Gets settlements.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash.

eval {
    my $result = $api_instance->cow_get_settlements__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_get_settlements__historical: $@\n";
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

[**ARRAY[CowSettlementDTO]**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_tokens__historical**
> ARRAY[CowTokenDTO] cow_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, name => $name, symbol => $symbol)

Tokens (historical)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token's address.
my $address = "address_example"; # string | Token's address.
my $name = "name_example"; # string | Token name fetched by ERC20 contract call.
my $symbol = "symbol_example"; # string | Token symbol fetched by contract call.

eval {
    my $result = $api_instance->cow_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, name => $name, symbol => $symbol);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_get_tokens__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token&#39;s address. | [optional] 
 **address** | **string**| Token&#39;s address. | [optional] 
 **name** | **string**| Token name fetched by ERC20 contract call. | [optional] 
 **symbol** | **string**| Token symbol fetched by contract call. | [optional] 

### Return type

[**ARRAY[CowTokenDTO]**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_trades__historical**
> ARRAY[CowTradeDTO] cow_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, sell_token => $sell_token, buy_token => $buy_token)

Trades (historical)

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (order id)|(transaction hash)|(event index).
my $sell_token = "sell_token_example"; # string | Address of token that is sold.
my $buy_token = "buy_token_example"; # string | Address of token that is bought.

eval {
    my $result = $api_instance->cow_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, sell_token => $sell_token, buy_token => $buy_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_get_trades__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
 **sell_token** | **string**| Address of token that is sold. | [optional] 
 **buy_token** | **string**| Address of token that is bought. | [optional] 

### Return type

[**ARRAY[CowTradeDTO]**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_users__historical**
> ARRAY[CowUserDTO] cow_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User's address.
my $address = "address_example"; # string | User's address.

eval {
    my $result = $api_instance->cow_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_get_users__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| User&#39;s address. | [optional] 
 **address** | **string**| User&#39;s address. | [optional] 

### Return type

[**ARRAY[CowUserDTO]**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_orders__current**
> ARRAY[CowOrderDTO] cow_orders__current()

Orders (current)

Gets orders.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);


eval {
    my $result = $api_instance->cow_orders__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_orders__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CowOrderDTO]**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_settlements__current**
> ARRAY[CowSettlementDTO] cow_settlements__current()

Settlements (current)

Gets settlements.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);


eval {
    my $result = $api_instance->cow_settlements__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_settlements__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CowSettlementDTO]**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_tokens__current**
> ARRAY[CowTokenDTO] cow_tokens__current()

Tokens (current)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);


eval {
    my $result = $api_instance->cow_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CowTokenDTO]**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_trades__current**
> ARRAY[CowTradeDTO] cow_trades__current()

Trades (current)

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);


eval {
    my $result = $api_instance->cow_trades__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_trades__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CowTradeDTO]**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_users__current**
> ARRAY[CowUserDTO] cow_users__current()

Users (current)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CowApi;
my $api_instance = WWW::OpenAPIClient::CowApi->new(
);


eval {
    my $result = $api_instance->cow_users__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CowApi->cow_users__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CowUserDTO]**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

