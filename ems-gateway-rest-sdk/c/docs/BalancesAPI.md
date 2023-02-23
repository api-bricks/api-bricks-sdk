# BalancesAPI

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BalancesAPI_v1BalancesGet**](BalancesAPI.md#BalancesAPI_v1BalancesGet) | **GET** /v1/balances | Get balances


# **BalancesAPI_v1BalancesGet**
```c
// Get balances
//
// Get current currency balance from all or single exchange.
//
list_t* BalancesAPI_v1BalancesGet(apiClient_t *apiClient, char * exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Filter the balances to the specific exchange. | [optional] 

### Return type

[list_t](balance.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

