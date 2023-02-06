# OnChainDappsRestApi.CowApi

All URIs are relative to *https://onchain.coinapi.io*

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

> [CowOrderDTO] cowGetOrdersHistorical(opts)

Orders (historical)

Gets orders.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | User's address.
};
apiInstance.cowGetOrdersHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**| User&#39;s address. | [optional] 

### Return type

[**[CowOrderDTO]**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetSettlementsHistorical

> [CowSettlementDTO] cowGetSettlementsHistorical(opts)

Settlements (historical)

Gets settlements.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | Transaction hash.
};
apiInstance.cowGetSettlementsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash. | [optional] 

### Return type

[**[CowSettlementDTO]**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTokensHistorical

> [CowTokenDTO] cowGetTokensHistorical(opts)

Tokens (historical)

Gets tokens.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example", // String | Token's address.
  'address': "address_example", // String | Token's address.
  'name': "name_example", // String | Token name fetched by ERC20 contract call.
  'symbol': "symbol_example" // String | Token symbol fetched by contract call.
};
apiInstance.cowGetTokensHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**| Token&#39;s address. | [optional] 
 **address** | **String**| Token&#39;s address. | [optional] 
 **name** | **String**| Token name fetched by ERC20 contract call. | [optional] 
 **symbol** | **String**| Token symbol fetched by contract call. | [optional] 

### Return type

[**[CowTokenDTO]**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTradesHistorical

> [CowTradeDTO] cowGetTradesHistorical(opts)

Trades (historical)

Gets trades.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example", // String | Identifier, format: (order id)|(transaction hash)|(event index).
  'sellToken': "sellToken_example", // String | Address of token that is sold.
  'buyToken': "buyToken_example" // String | Address of token that is bought.
};
apiInstance.cowGetTradesHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
 **sellToken** | **String**| Address of token that is sold. | [optional] 
 **buyToken** | **String**| Address of token that is bought. | [optional] 

### Return type

[**[CowTradeDTO]**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetUsersHistorical

> [CowUserDTO] cowGetUsersHistorical(opts)

Users (historical)

Gets users.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example", // String | User's address.
  'address': "address_example" // String | User's address.
};
apiInstance.cowGetUsersHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**| User&#39;s address. | [optional] 
 **address** | **String**| User&#39;s address. | [optional] 

### Return type

[**[CowUserDTO]**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowOrdersCurrent

> [CowOrderDTO] cowOrdersCurrent()

Orders (current)

Gets orders.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
apiInstance.cowOrdersCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CowOrderDTO]**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowSettlementsCurrent

> [CowSettlementDTO] cowSettlementsCurrent()

Settlements (current)

Gets settlements.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
apiInstance.cowSettlementsCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CowSettlementDTO]**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowTokensCurrent

> [CowTokenDTO] cowTokensCurrent()

Tokens (current)

Gets tokens.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
apiInstance.cowTokensCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CowTokenDTO]**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowTradesCurrent

> [CowTradeDTO] cowTradesCurrent()

Trades (current)

Gets trades.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
apiInstance.cowTradesCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CowTradeDTO]**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowUsersCurrent

> [CowUserDTO] cowUsersCurrent()

Users (current)

Gets users.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CowApi();
apiInstance.cowUsersCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CowUserDTO]**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

