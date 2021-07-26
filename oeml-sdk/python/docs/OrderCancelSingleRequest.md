# OrderCancelSingleRequest

Cancel single order request object.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** | Exchange identifier used to identify the routing destination. | 
**exchange_order_id** | **str** | Unique identifier of the order assigned by the exchange or executing system. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] 
**client_order_id** | **str** | The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


