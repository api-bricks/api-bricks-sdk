# CowAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowAPI_cowGetOrdersHistorical**](CowAPI.md#CowAPI_cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) 🔥
[**CowAPI_cowGetSettlementsHistorical**](CowAPI.md#CowAPI_cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) 🔥
[**CowAPI_cowGetTokensHistorical**](CowAPI.md#CowAPI_cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**CowAPI_cowGetTradesHistorical**](CowAPI.md#CowAPI_cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**CowAPI_cowGetUsersHistorical**](CowAPI.md#CowAPI_cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical) 🔥


# **CowAPI_cowGetOrdersHistorical**
```c
// Orders (historical) 🔥
//
// Gets orders.
//
list_t* CowAPI_cowGetOrdersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | User&#39;s address. | [optional] 

### Return type

[list_t](cow_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetSettlementsHistorical**
```c
// Settlements (historical) 🔥
//
// Gets settlements.
//
list_t* CowAPI_cowGetSettlementsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Transaction hash. | [optional] 

### Return type

[list_t](cow_settlement_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetTokensHistorical**
```c
// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t* CowAPI_cowGetTokensHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * address, char * name, char * symbol);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Token&#39;s address. | [optional] 
**address** | **char \*** | Token&#39;s address. | [optional] 
**name** | **char \*** | Token name fetched by ERC20 contract call. | [optional] 
**symbol** | **char \*** | Token symbol fetched by contract call. | [optional] 

### Return type

[list_t](cow_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetTradesHistorical**
```c
// Trades (historical) 🔥
//
// Gets trades.
//
list_t* CowAPI_cowGetTradesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * sell_token, char * buy_token);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**id** | **char \*** |  | [optional] 
**sell_token** | **char \*** |  | [optional] 
**buy_token** | **char \*** |  | [optional] 

### Return type

[list_t](cow_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetUsersHistorical**
```c
// Users (historical) 🔥
//
// Gets users.
//
list_t* CowAPI_cowGetUsersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * address);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | User&#39;s address. | [optional] 
**address** | **char \*** | User&#39;s address. | [optional] 

### Return type

[list_t](cow_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

