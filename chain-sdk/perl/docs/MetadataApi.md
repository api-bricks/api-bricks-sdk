# WWW::OpenAPIClient::MetadataApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MetadataApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadata_chains_get**](MetadataApi.md#metadata_chains_get) | **GET** /metadata/chains | List all chains.
[**metadata_dapps_dapp_name_get**](MetadataApi.md#metadata_dapps_dapp_name_get) | **GET** /metadata/dapps/{dappName} | Gets dapp by name.
[**metadata_dapps_get**](MetadataApi.md#metadata_dapps_get) | **GET** /metadata/dapps | List all decentralized applications.


# **metadata_chains_get**
> metadata_chains_get()

List all chains.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(
);


eval {
    $api_instance->metadata_chains_get();
};
if ($@) {
    warn "Exception when calling MetadataApi->metadata_chains_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **metadata_dapps_dapp_name_get**
> metadata_dapps_dapp_name_get(dapp_name => $dapp_name)

Gets dapp by name.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(
);

my $dapp_name = "dapp_name_example"; # string | 

eval {
    $api_instance->metadata_dapps_dapp_name_get(dapp_name => $dapp_name);
};
if ($@) {
    warn "Exception when calling MetadataApi->metadata_dapps_dapp_name_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dapp_name** | **string**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **metadata_dapps_get**
> metadata_dapps_get()

List all decentralized applications.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(
);


eval {
    $api_instance->metadata_dapps_get();
};
if ($@) {
    warn "Exception when calling MetadataApi->metadata_dapps_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

