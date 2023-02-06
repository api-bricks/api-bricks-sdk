# WWW::OpenAPIClient::DexApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DexApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dex_batches__current**](DexApi.md#dex_batches__current) | **GET** /dapps/dex/batches/current | Batches (current)
[**dex_deposits__current**](DexApi.md#dex_deposits__current) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**dex_get_batches__historical**](DexApi.md#dex_get_batches__historical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dex_get_deposits__historical**](DexApi.md#dex_get_deposits__historical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dex_get_orders__historical**](DexApi.md#dex_get_orders__historical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dex_get_prices__historical**](DexApi.md#dex_get_prices__historical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dex_get_solutions__historical**](DexApi.md#dex_get_solutions__historical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dex_get_stats__historical**](DexApi.md#dex_get_stats__historical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dex_get_tokens__historical**](DexApi.md#dex_get_tokens__historical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**dex_get_trades__historical**](DexApi.md#dex_get_trades__historical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**dex_get_users__historical**](DexApi.md#dex_get_users__historical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dex_get_withdraw_requests__historical**](DexApi.md#dex_get_withdraw_requests__historical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**dex_get_withdraws__historical**](DexApi.md#dex_get_withdraws__historical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dex_orders__current**](DexApi.md#dex_orders__current) | **GET** /dapps/dex/orders/current | Orders (current)
[**dex_prices__current**](DexApi.md#dex_prices__current) | **GET** /dapps/dex/prices/current | Prices (current)
[**dex_solutions__current**](DexApi.md#dex_solutions__current) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**dex_stats__current**](DexApi.md#dex_stats__current) | **GET** /dapps/dex/stats/current | Stats (current)
[**dex_tokens__current**](DexApi.md#dex_tokens__current) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**dex_trades__current**](DexApi.md#dex_trades__current) | **GET** /dapps/dex/trades/current | Trades (current)
[**dex_users__current**](DexApi.md#dex_users__current) | **GET** /dapps/dex/users/current | Users (current)
[**dex_withdraw_requests__current**](DexApi.md#dex_withdraw_requests__current) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**dex_withdraws__current**](DexApi.md#dex_withdraws__current) | **GET** /dapps/dex/withdraws/current | Withdraws (current)


# **dex_batches__current**
> ARRAY[DexBatchDTO] dex_batches__current()

Batches (current)

Gets batches.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_batches__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_batches__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_deposits__current**
> ARRAY[DexDepositDTO] dex_deposits__current()

Deposits (current)

Gets deposits.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_deposits__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_deposits__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_batches__historical**
> ARRAY[DexBatchDTO] dex_get_batches__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Batches (historical)

Gets batches.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier.

eval {
    my $result = $api_instance->dex_get_batches__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_batches__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier. | [optional] 

### Return type

[**ARRAY[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_deposits__historical**
> ARRAY[DexDepositDTO] dex_get_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user)

Deposits (historical)

Gets deposits.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (transaction hash)-(token id).
my $user = "user_example"; # string | User address.

eval {
    my $result = $api_instance->dex_get_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_deposits__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(token id). | [optional] 
 **user** | **string**| User address. | [optional] 

### Return type

[**ARRAY[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_orders__historical**
> ARRAY[DexOrderDTO] dex_get_orders__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, buy_token => $buy_token, sell_token => $sell_token)

Orders (historical)

Gets orders.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (owner address)-(order id)
my $buy_token = "buy_token_example"; # string | Identifier of token that was bought.
my $sell_token = "sell_token_example"; # string | Identifier of token that was sold.

eval {
    my $result = $api_instance->dex_get_orders__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, buy_token => $buy_token, sell_token => $sell_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_orders__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (owner address)-(order id) | [optional] 
 **buy_token** | **string**| Identifier of token that was bought. | [optional] 
 **sell_token** | **string**| Identifier of token that was sold. | [optional] 

### Return type

[**ARRAY[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_prices__historical**
> ARRAY[DexPriceDTO] dex_get_prices__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Prices (historical)

Gets prices.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (token id)-(batch id).

eval {
    my $result = $api_instance->dex_get_prices__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_prices__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (token id)-(batch id). | [optional] 

### Return type

[**ARRAY[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_solutions__historical**
> ARRAY[DexSolutionDTO] dex_get_solutions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Solutions (historical)

Gets solutions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_solutions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_solutions__historical: $@\n";
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

[**ARRAY[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_stats__historical**
> ARRAY[DexStatsDTO] dex_get_stats__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Stats (historical)

Gets stats.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_stats__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_stats__historical: $@\n";
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

[**ARRAY[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_tokens__historical**
> ARRAY[DexTokenDTO] dex_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, symbol => $symbol, name => $name)

Tokens (historical)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $address = "address_example"; # string | 
my $symbol = "symbol_example"; # string | 
my $name = "name_example"; # string | 

eval {
    my $result = $api_instance->dex_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, symbol => $symbol, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_tokens__historical: $@\n";
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
 **address** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 

### Return type

[**ARRAY[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trades__historical**
> ARRAY[DexTradeDTO] dex_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, buy_token => $buy_token, sell_token => $sell_token)

Trades (historical)

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $buy_token = "buy_token_example"; # string | 
my $sell_token = "sell_token_example"; # string | 

eval {
    my $result = $api_instance->dex_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, buy_token => $buy_token, sell_token => $sell_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_trades__historical: $@\n";
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
 **buy_token** | **string**|  | [optional] 
 **sell_token** | **string**|  | [optional] 

### Return type

[**ARRAY[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_users__historical**
> ARRAY[DexUserDTO] dex_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_users__historical: $@\n";
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

[**ARRAY[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraw_requests__historical**
> ARRAY[DexWithdrawRequestDTO] dex_get_withdraw_requests__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user)

WithdrawRequests (historical)

Gets withdrawRequests.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (transaction hash)-(id).
my $user = "user_example"; # string | 

eval {
    my $result = $api_instance->dex_get_withdraw_requests__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_withdraw_requests__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(id). | [optional] 
 **user** | **string**|  | [optional] 

### Return type

[**ARRAY[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraws__historical**
> ARRAY[DexWithdrawDTO] dex_get_withdraws__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user)

Withdraws (historical)

Gets withdraws.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (transaction hash)-(id).
my $user = "user_example"; # string | 

eval {
    my $result = $api_instance->dex_get_withdraws__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_withdraws__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(id). | [optional] 
 **user** | **string**|  | [optional] 

### Return type

[**ARRAY[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_orders__current**
> ARRAY[DexOrderDTO] dex_orders__current()

Orders (current)

Gets orders.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_orders__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_orders__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_prices__current**
> ARRAY[DexPriceDTO] dex_prices__current()

Prices (current)

Gets prices.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_prices__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_prices__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_solutions__current**
> ARRAY[DexSolutionDTO] dex_solutions__current()

Solutions (current)

Gets solutions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_solutions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_solutions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_stats__current**
> ARRAY[DexStatsDTO] dex_stats__current()

Stats (current)

Gets stats.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_stats__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_stats__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_tokens__current**
> ARRAY[DexTokenDTO] dex_tokens__current()

Tokens (current)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_trades__current**
> ARRAY[DexTradeDTO] dex_trades__current()

Trades (current)

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_trades__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_trades__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_users__current**
> ARRAY[DexUserDTO] dex_users__current()

Users (current)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_users__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_users__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_withdraw_requests__current**
> ARRAY[DexWithdrawRequestDTO] dex_withdraw_requests__current()

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_withdraw_requests__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_withdraw_requests__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_withdraws__current**
> ARRAY[DexWithdrawDTO] dex_withdraws__current()

Withdraws (current)

Gets withdraws.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);


eval {
    my $result = $api_instance->dex_withdraws__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_withdraws__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

