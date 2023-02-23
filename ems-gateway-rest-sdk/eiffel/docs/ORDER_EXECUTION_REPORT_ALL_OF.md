# ORDER_EXECUTION_REPORT_ALL_OF

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | [**STRING_32**](STRING_32.md) | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | [default to null]
**exchange_order_id** | [**STRING_32**](STRING_32.md) | Unique identifier of the order assigned by the exchange or executing system. | [optional] [default to null]
**amount_open** | **REAL_32** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | [default to null]
**amount_filled** | **REAL_32** | Total quantity filled. | [default to null]
**avg_px** | **REAL_32** | Calculated average price of all fills on this order. | [optional] [default to null]
**status** | [**ORD_STATUS**](OrdStatus.md) |  | [default to null]
**status_history** | [**LIST [LIST [STRING_32]]**](LIST.md) | Timestamped history of order status changes. | [optional] [default to null]
**error_message** | [**STRING_32**](STRING_32.md) | Error message. | [optional] [default to null]
**fills** | [**LIST [FILLS]**](Fills.md) | Relay fill information on working orders. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


