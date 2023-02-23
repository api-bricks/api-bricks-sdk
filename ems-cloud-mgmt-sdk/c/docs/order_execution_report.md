# order_execution_report_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **char \*** | Exchange identifier used to identify the routing destination. | 
**client_order_id** | **char \*** | The unique identifier of the order assigned by the client. | 
**symbol_id_exchange** | **char \*** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**symbol_id_coinapi** | **char \*** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**amount_order** | **double** | Order quantity. | 
**price** | **double** | Order price. | 
**side** | **ord_side_t \*** |  | 
**order_type** | **ord_type_t \*** |  | 
**time_in_force** | **time_in_force_t \*** |  | 
**expire_time** |  | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | **list_t \*** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
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


