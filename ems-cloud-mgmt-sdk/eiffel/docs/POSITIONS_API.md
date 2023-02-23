# POSITIONS_API

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_positions_get**](POSITIONS_API.md#v1_positions_get) | **Get** /v1/positions | Get open positions


# **v1_positions_get**
> v1_positions_get (exchange_id:  detachable STRING_32 ): detachable LIST [POSITION]


Get open positions

Get current open positions across all or single exchange.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Filter the balances to the specific exchange. | [optional] [default to null]

### Return type

[**LIST [POSITION]**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

