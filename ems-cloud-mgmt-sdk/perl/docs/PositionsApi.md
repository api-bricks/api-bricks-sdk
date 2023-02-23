# WWW::OpenAPIClient::PositionsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::PositionsApi;
```

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_positions_get**](PositionsApi.md#v1_positions_get) | **GET** /v1/positions | Get open positions


# **v1_positions_get**
> ARRAY[Position] v1_positions_get(exchange_id => $exchange_id)

Get open positions

Get current open positions across all or single exchange.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::PositionsApi;
my $api_instance = WWW::OpenAPIClient::PositionsApi->new(
);

my $exchange_id = KRAKEN; # string | Filter the balances to the specific exchange.

eval {
    my $result = $api_instance->v1_positions_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PositionsApi->v1_positions_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**ARRAY[Position]**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

