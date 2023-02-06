# DexApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexBatchesCurrent**](DexApi.md#dexBatchesCurrent) | **GET** /dapps/dex/batches/current | Batches (current)
[**dexDepositsCurrent**](DexApi.md#dexDepositsCurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**dexGetBatchesHistorical**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dexGetStatsHistorical**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dexGetWithdrawRequestsHistorical**](DexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dexOrdersCurrent**](DexApi.md#dexOrdersCurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**dexPricesCurrent**](DexApi.md#dexPricesCurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**dexSolutionsCurrent**](DexApi.md#dexSolutionsCurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**dexStatsCurrent**](DexApi.md#dexStatsCurrent) | **GET** /dapps/dex/stats/current | Stats (current)
[**dexTokensCurrent**](DexApi.md#dexTokensCurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**dexTradesCurrent**](DexApi.md#dexTradesCurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**dexUsersCurrent**](DexApi.md#dexUsersCurrent) | **GET** /dapps/dex/users/current | Users (current)
[**dexWithdrawRequestsCurrent**](DexApi.md#dexWithdrawRequestsCurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**dexWithdrawsCurrent**](DexApi.md#dexWithdrawsCurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)



## dexBatchesCurrent

Batches (current)

Gets batches.

### Example

```bash
 dexBatchesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexDepositsCurrent

Deposits (current)

Gets deposits.

### Example

```bash
 dexDepositsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetBatchesHistorical

Batches (historical)

Gets batches.

### Example

```bash
 dexGetBatchesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier. | [optional] [default to null]

### Return type

[**array[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetDepositsHistorical

Deposits (historical)

Gets deposits.

### Example

```bash
 dexGetDepositsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, format: (transaction hash)-(token id). | [optional] [default to null]
 **user** | **string** | User address. | [optional] [default to null]

### Return type

[**array[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetOrdersHistorical

Orders (historical)

Gets orders.

### Example

```bash
 dexGetOrdersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  buy_token=value  sell_token=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, format: (owner address)-(order id) | [optional] [default to null]
 **buyToken** | **string** | Identifier of token that was bought. | [optional] [default to null]
 **sellToken** | **string** | Identifier of token that was sold. | [optional] [default to null]

### Return type

[**array[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetPricesHistorical

Prices (historical)

Gets prices.

### Example

```bash
 dexGetPricesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, format: (token id)-(batch id). | [optional] [default to null]

### Return type

[**array[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetSolutionsHistorical

Solutions (historical)

Gets solutions.

### Example

```bash
 dexGetSolutionsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]

### Return type

[**array[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetStatsHistorical

Stats (historical)

Gets stats.

### Example

```bash
 dexGetStatsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]

### Return type

[**array[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTokensHistorical

Tokens (historical)

Gets tokens.

### Example

```bash
 dexGetTokensHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  address=value  symbol=value  name=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **address** | **string** |  | [optional] [default to null]
 **symbol** | **string** |  | [optional] [default to null]
 **name** | **string** |  | [optional] [default to null]

### Return type

[**array[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTradesHistorical

Trades (historical)

Gets trades.

### Example

```bash
 dexGetTradesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  buy_token=value  sell_token=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **buyToken** | **string** |  | [optional] [default to null]
 **sellToken** | **string** |  | [optional] [default to null]

### Return type

[**array[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetUsersHistorical

Users (historical)

Gets users.

### Example

```bash
 dexGetUsersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]

### Return type

[**array[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetWithdrawRequestsHistorical

WithdrawRequests (historical)

Gets withdrawRequests.

### Example

```bash
 dexGetWithdrawRequestsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, format: (transaction hash)-(id). | [optional] [default to null]
 **user** | **string** |  | [optional] [default to null]

### Return type

[**array[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetWithdrawsHistorical

Withdraws (historical)

Gets withdraws.

### Example

```bash
 dexGetWithdrawsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, format: (transaction hash)-(id). | [optional] [default to null]
 **user** | **string** |  | [optional] [default to null]

### Return type

[**array[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexOrdersCurrent

Orders (current)

Gets orders.

### Example

```bash
 dexOrdersCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexPricesCurrent

Prices (current)

Gets prices.

### Example

```bash
 dexPricesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexSolutionsCurrent

Solutions (current)

Gets solutions.

### Example

```bash
 dexSolutionsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexStatsCurrent

Stats (current)

Gets stats.

### Example

```bash
 dexStatsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexTokensCurrent

Tokens (current)

Gets tokens.

### Example

```bash
 dexTokensCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexTradesCurrent

Trades (current)

Gets trades.

### Example

```bash
 dexTradesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexUsersCurrent

Users (current)

Gets users.

### Example

```bash
 dexUsersCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexWithdrawRequestsCurrent

WithdrawRequests (current)

Gets withdrawRequests.

### Example

```bash
 dexWithdrawRequestsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexWithdrawsCurrent

Withdraws (current)

Gets withdraws.

### Example

```bash
 dexWithdrawsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

