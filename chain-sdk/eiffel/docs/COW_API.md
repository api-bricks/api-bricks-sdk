# COW_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**cow_get_orders_historical**](COW_API.md#cow_get_orders_historical) | **Get** /dapps/cow/orders/historical | Orders (historical)
[**cow_get_settlements_historical**](COW_API.md#cow_get_settlements_historical) | **Get** /dapps/cow/settlements/historical | Settlements (historical)
[**cow_get_tokens_historical**](COW_API.md#cow_get_tokens_historical) | **Get** /dapps/cow/tokens/historical | Tokens (historical)
[**cow_get_trades_historical**](COW_API.md#cow_get_trades_historical) | **Get** /dapps/cow/trades/historical | Trades (historical)
[**cow_get_users_historical**](COW_API.md#cow_get_users_historical) | **Get** /dapps/cow/users/historical | Users (historical)
[**cow_orders_current**](COW_API.md#cow_orders_current) | **Get** /dapps/cow/orders/current | Orders (current)
[**cow_settlements_current**](COW_API.md#cow_settlements_current) | **Get** /dapps/cow/settlements/current | Settlements (current)
[**cow_tokens_current**](COW_API.md#cow_tokens_current) | **Get** /dapps/cow/tokens/current | Tokens (current)
[**cow_trades_current**](COW_API.md#cow_trades_current) | **Get** /dapps/cow/trades/current | Trades (current)
[**cow_users_current**](COW_API.md#cow_users_current) | **Get** /dapps/cow/users/current | Users (current)


# **cow_get_orders_historical**
> cow_get_orders_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [COW_ORDER_DTO]


Orders (historical)

Gets orders.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| User&#39;s address. | [optional] [default to null]

### Return type

[**LIST [COW_ORDER_DTO]**](Cow.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_settlements_historical**
> cow_get_settlements_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [COW_SETTLEMENT_DTO]


Settlements (historical)

Gets settlements.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Transaction hash. | [optional] [default to null]

### Return type

[**LIST [COW_SETTLEMENT_DTO]**](Cow.SettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_tokens_historical**
> cow_get_tokens_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; address:  detachable STRING_32 ; name:  detachable STRING_32 ; symbol:  detachable STRING_32 ): detachable LIST [COW_TOKEN_DTO]


Tokens (historical)

Gets tokens.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Token&#39;s address. | [optional] [default to null]
 **address** | **STRING_32**| Token&#39;s address. | [optional] [default to null]
 **name** | **STRING_32**| Token name fetched by ERC20 contract call. | [optional] [default to null]
 **symbol** | **STRING_32**| Token symbol fetched by contract call. | [optional] [default to null]

### Return type

[**LIST [COW_TOKEN_DTO]**](Cow.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_trades_historical**
> cow_get_trades_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; sell_token:  detachable STRING_32 ; buy_token:  detachable STRING_32 ): detachable LIST [COW_TRADE_DTO]


Trades (historical)

Gets trades.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] [default to null]
 **sell_token** | **STRING_32**| Address of token that is sold. | [optional] [default to null]
 **buy_token** | **STRING_32**| Address of token that is bought. | [optional] [default to null]

### Return type

[**LIST [COW_TRADE_DTO]**](Cow.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_get_users_historical**
> cow_get_users_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; address:  detachable STRING_32 ): detachable LIST [COW_USER_DTO]


Users (historical)

Gets users.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| User&#39;s address. | [optional] [default to null]
 **address** | **STRING_32**| User&#39;s address. | [optional] [default to null]

### Return type

[**LIST [COW_USER_DTO]**](Cow.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_orders_current**
> cow_orders_current : detachable LIST [COW_ORDER_DTO]


Orders (current)

Gets orders.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [COW_ORDER_DTO]**](Cow.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_settlements_current**
> cow_settlements_current : detachable LIST [COW_SETTLEMENT_DTO]


Settlements (current)

Gets settlements.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [COW_SETTLEMENT_DTO]**](Cow.SettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_tokens_current**
> cow_tokens_current : detachable LIST [COW_TOKEN_DTO]


Tokens (current)

Gets tokens.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [COW_TOKEN_DTO]**](Cow.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_trades_current**
> cow_trades_current : detachable LIST [COW_TRADE_DTO]


Trades (current)

Gets trades.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [COW_TRADE_DTO]**](Cow.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cow_users_current**
> cow_users_current : detachable LIST [COW_USER_DTO]


Users (current)

Gets users.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [COW_USER_DTO]**](Cow.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

