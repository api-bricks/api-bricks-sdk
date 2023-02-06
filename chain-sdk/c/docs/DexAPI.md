# DexAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexAPI_dexBatchesCurrent**](DexAPI.md#DexAPI_dexBatchesCurrent) | **GET** /dapps/dex/batches/current | Batches (current)
[**DexAPI_dexDepositsCurrent**](DexAPI.md#DexAPI_dexDepositsCurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**DexAPI_dexGetBatchesHistorical**](DexAPI.md#DexAPI_dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**DexAPI_dexGetDepositsHistorical**](DexAPI.md#DexAPI_dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**DexAPI_dexGetOrdersHistorical**](DexAPI.md#DexAPI_dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**DexAPI_dexGetPricesHistorical**](DexAPI.md#DexAPI_dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**DexAPI_dexGetSolutionsHistorical**](DexAPI.md#DexAPI_dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**DexAPI_dexGetStatsHistorical**](DexAPI.md#DexAPI_dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**DexAPI_dexGetTokensHistorical**](DexAPI.md#DexAPI_dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**DexAPI_dexGetTradesHistorical**](DexAPI.md#DexAPI_dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**DexAPI_dexGetUsersHistorical**](DexAPI.md#DexAPI_dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**DexAPI_dexGetWithdrawRequestsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**DexAPI_dexGetWithdrawsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**DexAPI_dexOrdersCurrent**](DexAPI.md#DexAPI_dexOrdersCurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**DexAPI_dexPricesCurrent**](DexAPI.md#DexAPI_dexPricesCurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**DexAPI_dexSolutionsCurrent**](DexAPI.md#DexAPI_dexSolutionsCurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**DexAPI_dexStatsCurrent**](DexAPI.md#DexAPI_dexStatsCurrent) | **GET** /dapps/dex/stats/current | Stats (current)
[**DexAPI_dexTokensCurrent**](DexAPI.md#DexAPI_dexTokensCurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**DexAPI_dexTradesCurrent**](DexAPI.md#DexAPI_dexTradesCurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**DexAPI_dexUsersCurrent**](DexAPI.md#DexAPI_dexUsersCurrent) | **GET** /dapps/dex/users/current | Users (current)
[**DexAPI_dexWithdrawRequestsCurrent**](DexAPI.md#DexAPI_dexWithdrawRequestsCurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**DexAPI_dexWithdrawsCurrent**](DexAPI.md#DexAPI_dexWithdrawsCurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)


# **DexAPI_dexBatchesCurrent**
```c
// Batches (current)
//
// Gets batches.
//
list_t* DexAPI_dexBatchesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_batch_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexDepositsCurrent**
```c
// Deposits (current)
//
// Gets deposits.
//
list_t* DexAPI_dexDepositsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_deposit_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetBatchesHistorical**
```c
// Batches (historical)
//
// Gets batches.
//
list_t* DexAPI_dexGetBatchesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Identifier. | [optional] 

### Return type

[list_t](dex_batch_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetDepositsHistorical**
```c
// Deposits (historical)
//
// Gets deposits.
//
list_t* DexAPI_dexGetDepositsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * user);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Identifier, format: (transaction hash)-(token id). | [optional] 
**user** | **char \*** | User address. | [optional] 

### Return type

[list_t](dex_deposit_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetOrdersHistorical**
```c
// Orders (historical)
//
// Gets orders.
//
list_t* DexAPI_dexGetOrdersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * buy_token, char * sell_token);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Identifier, format: (owner address)-(order id) | [optional] 
**buy_token** | **char \*** | Identifier of token that was bought. | [optional] 
**sell_token** | **char \*** | Identifier of token that was sold. | [optional] 

### Return type

[list_t](dex_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetPricesHistorical**
```c
// Prices (historical)
//
// Gets prices.
//
list_t* DexAPI_dexGetPricesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Identifier, format: (token id)-(batch id). | [optional] 

### Return type

[list_t](dex_price_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetSolutionsHistorical**
```c
// Solutions (historical)
//
// Gets solutions.
//
list_t* DexAPI_dexGetSolutionsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](dex_solution_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetStatsHistorical**
```c
// Stats (historical)
//
// Gets stats.
//
list_t* DexAPI_dexGetStatsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](dex_stats_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetTokensHistorical**
```c
// Tokens (historical)
//
// Gets tokens.
//
list_t* DexAPI_dexGetTokensHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * address, char * symbol, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 
**address** | **char \*** |  | [optional] 
**symbol** | **char \*** |  | [optional] 
**name** | **char \*** |  | [optional] 

### Return type

[list_t](dex_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetTradesHistorical**
```c
// Trades (historical)
//
// Gets trades.
//
list_t* DexAPI_dexGetTradesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * buy_token, char * sell_token);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 
**buy_token** | **char \*** |  | [optional] 
**sell_token** | **char \*** |  | [optional] 

### Return type

[list_t](dex_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetUsersHistorical**
```c
// Users (historical)
//
// Gets users.
//
list_t* DexAPI_dexGetUsersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](dex_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetWithdrawRequestsHistorical**
```c
// WithdrawRequests (historical)
//
// Gets withdrawRequests.
//
list_t* DexAPI_dexGetWithdrawRequestsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * user);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Identifier, format: (transaction hash)-(id). | [optional] 
**user** | **char \*** |  | [optional] 

### Return type

[list_t](dex_withdraw_request_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetWithdrawsHistorical**
```c
// Withdraws (historical)
//
// Gets withdraws.
//
list_t* DexAPI_dexGetWithdrawsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * user);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Identifier, format: (transaction hash)-(id). | [optional] 
**user** | **char \*** |  | [optional] 

### Return type

[list_t](dex_withdraw_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexOrdersCurrent**
```c
// Orders (current)
//
// Gets orders.
//
list_t* DexAPI_dexOrdersCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexPricesCurrent**
```c
// Prices (current)
//
// Gets prices.
//
list_t* DexAPI_dexPricesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_price_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexSolutionsCurrent**
```c
// Solutions (current)
//
// Gets solutions.
//
list_t* DexAPI_dexSolutionsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_solution_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexStatsCurrent**
```c
// Stats (current)
//
// Gets stats.
//
list_t* DexAPI_dexStatsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_stats_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexTokensCurrent**
```c
// Tokens (current)
//
// Gets tokens.
//
list_t* DexAPI_dexTokensCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexTradesCurrent**
```c
// Trades (current)
//
// Gets trades.
//
list_t* DexAPI_dexTradesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexUsersCurrent**
```c
// Users (current)
//
// Gets users.
//
list_t* DexAPI_dexUsersCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexWithdrawRequestsCurrent**
```c
// WithdrawRequests (current)
//
// Gets withdrawRequests.
//
list_t* DexAPI_dexWithdrawRequestsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_withdraw_request_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexWithdrawsCurrent**
```c
// Withdraws (current)
//
// Gets withdraws.
//
list_t* DexAPI_dexWithdrawsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_withdraw_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

