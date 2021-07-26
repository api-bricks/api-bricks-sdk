# OrderExecutionReportAllOf

The order execution report message.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **str** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amount_open** | **float** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **float** | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**exchange_order_id** | **str** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**avg_px** | **float** | Calculated average price of all fills on this order. | [optional] 
**status_history** | **[[str]]** | Timestamped history of order status changes. | [optional] 
**error_message** | **str** | Error message. | [optional] 
**fills** | [**[Fills]**](Fills.md) | Relay fill information on working orders. | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


