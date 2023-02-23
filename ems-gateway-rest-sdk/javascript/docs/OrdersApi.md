# EmsRestApi.OrdersApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersHistoryTimeStartTimeEndGet**](OrdersApi.md#v1OrdersHistoryTimeStartTimeEndGet) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report



## v1OrdersCancelAllPost

> MessageReject v1OrdersCancelAllPost(orderCancelAllRequest)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.OrdersApi();
let orderCancelAllRequest = new EmsRestApi.OrderCancelAllRequest(); // OrderCancelAllRequest | OrderCancelAllRequest object.
apiInstance.v1OrdersCancelAllPost(orderCancelAllRequest, (error, data, response) => {
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
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**MessageReject**](MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersCancelPost

> OrderExecutionReport v1OrdersCancelPost(orderCancelSingleRequest)

Cancel order request

Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.OrdersApi();
let orderCancelSingleRequest = new EmsRestApi.OrderCancelSingleRequest(); // OrderCancelSingleRequest | OrderCancelSingleRequest object.
apiInstance.v1OrdersCancelPost(orderCancelSingleRequest, (error, data, response) => {
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
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersGet

> [OrderExecutionReport] v1OrdersGet(opts)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.OrdersApi();
let opts = {
  'exchangeId': KRAKEN // String | Filter the open orders to the specific exchange.
};
apiInstance.v1OrdersGet(opts, (error, data, response) => {
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
 **exchangeId** | **String**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json


## v1OrdersHistoryTimeStartTimeEndGet

> [OrderHistory] v1OrdersHistoryTimeStartTimeEndGet(timeStart, timeEnd)

History of order changes

Based on the date range, all changes registered in the orderbook.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.OrdersApi();
let timeStart = 2022-05-01T00:00:00; // String | Start date
let timeEnd = 2022-05-01T12:00:00; // String | End date
apiInstance.v1OrdersHistoryTimeStartTimeEndGet(timeStart, timeEnd, (error, data, response) => {
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
 **timeStart** | **String**| Start date | 
 **timeEnd** | **String**| End date | 

### Return type

[**[OrderHistory]**](OrderHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1OrdersPost

> OrderExecutionReport v1OrdersPost(orderNewSingleRequest)

Send new order

This request creating new order for the specific exchange.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.OrdersApi();
let orderNewSingleRequest = new EmsRestApi.OrderNewSingleRequest(); // OrderNewSingleRequest | OrderNewSingleRequest object.
apiInstance.v1OrdersPost(orderNewSingleRequest, (error, data, response) => {
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
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersStatusClientOrderIdGet

> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```javascript
import EmsRestApi from 'ems_rest_api';

let apiInstance = new EmsRestApi.OrdersApi();
let clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | The unique identifier of the order assigned by the client.
apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId, (error, data, response) => {
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
 **clientOrderId** | **String**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

