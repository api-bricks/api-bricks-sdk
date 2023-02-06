# CowApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**cowOrdersCurrent**](CowApi.md#cowOrdersCurrent) | **GET** /dapps/cow/orders/current | Orders (current)
[**cowSettlementsCurrent**](CowApi.md#cowSettlementsCurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**cowTokensCurrent**](CowApi.md#cowTokensCurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**cowTradesCurrent**](CowApi.md#cowTradesCurrent) | **GET** /dapps/cow/trades/current | Trades (current)
[**cowUsersCurrent**](CowApi.md#cowUsersCurrent) | **GET** /dapps/cow/users/current | Users (current)



## cowGetOrdersHistorical

Orders (historical)

Gets orders.

### Example

```bash
 cowGetOrdersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | User's address. | [optional] [default to null]

### Return type

[**array[CowOrderDTO]**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowGetSettlementsHistorical

Settlements (historical)

Gets settlements.

### Example

```bash
 cowGetSettlementsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Transaction hash. | [optional] [default to null]

### Return type

[**array[CowSettlementDTO]**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowGetTokensHistorical

Tokens (historical)

Gets tokens.

### Example

```bash
 cowGetTokensHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  address=value  name=value  symbol=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Token's address. | [optional] [default to null]
 **address** | **string** | Token's address. | [optional] [default to null]
 **name** | **string** | Token name fetched by ERC20 contract call. | [optional] [default to null]
 **symbol** | **string** | Token symbol fetched by contract call. | [optional] [default to null]

### Return type

[**array[CowTokenDTO]**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowGetTradesHistorical

Trades (historical)

Gets trades.

### Example

```bash
 cowGetTradesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  sell_token=value  buy_token=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] [default to null]
 **sellToken** | **string** | Address of token that is sold. | [optional] [default to null]
 **buyToken** | **string** | Address of token that is bought. | [optional] [default to null]

### Return type

[**array[CowTradeDTO]**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowGetUsersHistorical

Users (historical)

Gets users.

### Example

```bash
 cowGetUsersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  address=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | User's address. | [optional] [default to null]
 **address** | **string** | User's address. | [optional] [default to null]

### Return type

[**array[CowUserDTO]**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowOrdersCurrent

Orders (current)

Gets orders.

### Example

```bash
 cowOrdersCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[CowOrderDTO]**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowSettlementsCurrent

Settlements (current)

Gets settlements.

### Example

```bash
 cowSettlementsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[CowSettlementDTO]**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowTokensCurrent

Tokens (current)

Gets tokens.

### Example

```bash
 cowTokensCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[CowTokenDTO]**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowTradesCurrent

Trades (current)

Gets trades.

### Example

```bash
 cowTradesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[CowTradeDTO]**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cowUsersCurrent

Users (current)

Gets users.

### Example

```bash
 cowUsersCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[CowUserDTO]**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

