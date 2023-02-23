# PositionsAPI

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PositionsAPI_v1PositionsGet**](PositionsAPI.md#PositionsAPI_v1PositionsGet) | **GET** /v1/positions | Get open positions


# **PositionsAPI_v1PositionsGet**
```c
// Get open positions
//
// Get current open positions across all or single exchange.
//
list_t* PositionsAPI_v1PositionsGet(apiClient_t *apiClient, char * exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Filter the balances to the specific exchange. | [optional] 

### Return type

[list_t](position.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

