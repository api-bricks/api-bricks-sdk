# DEX_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**dex_batches_current**](DEX_API.md#dex_batches_current) | **Get** /dapps/dex/batches/current | Batches (current)
[**dex_deposits_current**](DEX_API.md#dex_deposits_current) | **Get** /dapps/dex/deposits/current | Deposits (current)
[**dex_get_batches_historical**](DEX_API.md#dex_get_batches_historical) | **Get** /dapps/dex/batches/historical | Batches (historical)
[**dex_get_deposits_historical**](DEX_API.md#dex_get_deposits_historical) | **Get** /dapps/dex/deposits/historical | Deposits (historical)
[**dex_get_orders_historical**](DEX_API.md#dex_get_orders_historical) | **Get** /dapps/dex/orders/historical | Orders (historical)
[**dex_get_prices_historical**](DEX_API.md#dex_get_prices_historical) | **Get** /dapps/dex/prices/historical | Prices (historical)
[**dex_get_solutions_historical**](DEX_API.md#dex_get_solutions_historical) | **Get** /dapps/dex/solutions/historical | Solutions (historical)
[**dex_get_stats_historical**](DEX_API.md#dex_get_stats_historical) | **Get** /dapps/dex/stats/historical | Stats (historical)
[**dex_get_tokens_historical**](DEX_API.md#dex_get_tokens_historical) | **Get** /dapps/dex/tokens/historical | Tokens (historical)
[**dex_get_trades_historical**](DEX_API.md#dex_get_trades_historical) | **Get** /dapps/dex/trades/historical | Trades (historical)
[**dex_get_users_historical**](DEX_API.md#dex_get_users_historical) | **Get** /dapps/dex/users/historical | Users (historical)
[**dex_get_withdraw_requests_historical**](DEX_API.md#dex_get_withdraw_requests_historical) | **Get** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**dex_get_withdraws_historical**](DEX_API.md#dex_get_withdraws_historical) | **Get** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dex_orders_current**](DEX_API.md#dex_orders_current) | **Get** /dapps/dex/orders/current | Orders (current)
[**dex_prices_current**](DEX_API.md#dex_prices_current) | **Get** /dapps/dex/prices/current | Prices (current)
[**dex_solutions_current**](DEX_API.md#dex_solutions_current) | **Get** /dapps/dex/solutions/current | Solutions (current)
[**dex_stats_current**](DEX_API.md#dex_stats_current) | **Get** /dapps/dex/stats/current | Stats (current)
[**dex_tokens_current**](DEX_API.md#dex_tokens_current) | **Get** /dapps/dex/tokens/current | Tokens (current)
[**dex_trades_current**](DEX_API.md#dex_trades_current) | **Get** /dapps/dex/trades/current | Trades (current)
[**dex_users_current**](DEX_API.md#dex_users_current) | **Get** /dapps/dex/users/current | Users (current)
[**dex_withdraw_requests_current**](DEX_API.md#dex_withdraw_requests_current) | **Get** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**dex_withdraws_current**](DEX_API.md#dex_withdraws_current) | **Get** /dapps/dex/withdraws/current | Withdraws (current)


# **dex_batches_current**
> dex_batches_current : detachable LIST [DEX_BATCH_DTO]


Batches (current)

Gets batches.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_BATCH_DTO]**](Dex.BatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_deposits_current**
> dex_deposits_current : detachable LIST [DEX_DEPOSIT_DTO]


Deposits (current)

Gets deposits.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_DEPOSIT_DTO]**](Dex.DepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_batches_historical**
> dex_get_batches_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [DEX_BATCH_DTO]


Batches (historical)

Gets batches.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier. | [optional] [default to null]

### Return type

[**LIST [DEX_BATCH_DTO]**](Dex.BatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_deposits_historical**
> dex_get_deposits_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ): detachable LIST [DEX_DEPOSIT_DTO]


Deposits (historical)

Gets deposits.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, format: (transaction hash)-(token id). | [optional] [default to null]
 **user** | **STRING_32**| User address. | [optional] [default to null]

### Return type

[**LIST [DEX_DEPOSIT_DTO]**](Dex.DepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_orders_historical**
> dex_get_orders_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; buy_token:  detachable STRING_32 ; sell_token:  detachable STRING_32 ): detachable LIST [DEX_ORDER_DTO]


Orders (historical)

Gets orders.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, format: (owner address)-(order id) | [optional] [default to null]
 **buy_token** | **STRING_32**| Identifier of token that was bought. | [optional] [default to null]
 **sell_token** | **STRING_32**| Identifier of token that was sold. | [optional] [default to null]

### Return type

[**LIST [DEX_ORDER_DTO]**](Dex.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_prices_historical**
> dex_get_prices_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [DEX_PRICE_DTO]


Prices (historical)

Gets prices.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, format: (token id)-(batch id). | [optional] [default to null]

### Return type

[**LIST [DEX_PRICE_DTO]**](Dex.PriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_solutions_historical**
> dex_get_solutions_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [DEX_SOLUTION_DTO]


Solutions (historical)

Gets solutions.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_SOLUTION_DTO]**](Dex.SolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_stats_historical**
> dex_get_stats_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [DEX_STATS_DTO]


Stats (historical)

Gets stats.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_STATS_DTO]**](Dex.StatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_tokens_historical**
> dex_get_tokens_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; address:  detachable STRING_32 ; symbol:  detachable STRING_32 ; name:  detachable STRING_32 ): detachable LIST [DEX_TOKEN_DTO]


Tokens (historical)

Gets tokens.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **address** | **STRING_32**|  | [optional] [default to null]
 **symbol** | **STRING_32**|  | [optional] [default to null]
 **name** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_TOKEN_DTO]**](Dex.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trades_historical**
> dex_get_trades_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; buy_token:  detachable STRING_32 ; sell_token:  detachable STRING_32 ): detachable LIST [DEX_TRADE_DTO]


Trades (historical)

Gets trades.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **buy_token** | **STRING_32**|  | [optional] [default to null]
 **sell_token** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_TRADE_DTO]**](Dex.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_users_historical**
> dex_get_users_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [DEX_USER_DTO]


Users (historical)

Gets users.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_USER_DTO]**](Dex.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraw_requests_historical**
> dex_get_withdraw_requests_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ): detachable LIST [DEX_WITHDRAW_REQUEST_DTO]


WithdrawRequests (historical)

Gets withdrawRequests.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, format: (transaction hash)-(id). | [optional] [default to null]
 **user** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_WITHDRAW_REQUEST_DTO]**](Dex.WithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraws_historical**
> dex_get_withdraws_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ): detachable LIST [DEX_WITHDRAW_DTO]


Withdraws (historical)

Gets withdraws.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, format: (transaction hash)-(id). | [optional] [default to null]
 **user** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [DEX_WITHDRAW_DTO]**](Dex.WithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_orders_current**
> dex_orders_current : detachable LIST [DEX_ORDER_DTO]


Orders (current)

Gets orders.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_ORDER_DTO]**](Dex.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_prices_current**
> dex_prices_current : detachable LIST [DEX_PRICE_DTO]


Prices (current)

Gets prices.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_PRICE_DTO]**](Dex.PriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_solutions_current**
> dex_solutions_current : detachable LIST [DEX_SOLUTION_DTO]


Solutions (current)

Gets solutions.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_SOLUTION_DTO]**](Dex.SolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_stats_current**
> dex_stats_current : detachable LIST [DEX_STATS_DTO]


Stats (current)

Gets stats.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_STATS_DTO]**](Dex.StatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_tokens_current**
> dex_tokens_current : detachable LIST [DEX_TOKEN_DTO]


Tokens (current)

Gets tokens.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_TOKEN_DTO]**](Dex.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_trades_current**
> dex_trades_current : detachable LIST [DEX_TRADE_DTO]


Trades (current)

Gets trades.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_TRADE_DTO]**](Dex.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_users_current**
> dex_users_current : detachable LIST [DEX_USER_DTO]


Users (current)

Gets users.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_USER_DTO]**](Dex.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_withdraw_requests_current**
> dex_withdraw_requests_current : detachable LIST [DEX_WITHDRAW_REQUEST_DTO]


WithdrawRequests (current)

Gets withdrawRequests.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_WITHDRAW_REQUEST_DTO]**](Dex.WithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_withdraws_current**
> dex_withdraws_current : detachable LIST [DEX_WITHDRAW_DTO]


Withdraws (current)

Gets withdraws.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_WITHDRAW_DTO]**](Dex.WithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

