# order_execution_report_all_of_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **char \*** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **char \*** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amount_open** | **double** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **double** | Total quantity filled. | 
**avg_px** | **double** | Calculated average price of all fills on this order. | [optional] 
**status** | **ord_status_t \*** |  | 
**status_history** | **list_t \*** | Timestamped history of order status changes. | [optional] 
**error_message** | **char \*** | Error message. | [optional] 
**fills** | [**list_t**](fills.md) \* | Relay fill information on working orders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


