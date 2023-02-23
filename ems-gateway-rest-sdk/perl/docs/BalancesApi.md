# WWW::OpenAPIClient::BalancesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BalancesApi;
```

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_balances_get**](BalancesApi.md#v1_balances_get) | **GET** /v1/balances | Get balances


# **v1_balances_get**
> ARRAY[Balance] v1_balances_get(exchange_id => $exchange_id)

Get balances

Get current currency balance from all or single exchange.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BalancesApi;
my $api_instance = WWW::OpenAPIClient::BalancesApi->new(
);

my $exchange_id = KRAKEN; # string | Filter the balances to the specific exchange.

eval {
    my $result = $api_instance->v1_balances_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BalancesApi->v1_balances_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**ARRAY[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

