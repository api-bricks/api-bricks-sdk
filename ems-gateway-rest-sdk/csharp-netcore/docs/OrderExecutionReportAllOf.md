# CoinAPI.EMS.REST.V1.Model.OrderExecutionReportAllOf
The order execution report message.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**AmountOpen** | **decimal** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**AmountFilled** | **decimal** | Total quantity filled. | 
**AvgPx** | **decimal** | Calculated average price of all fills on this order. | [optional] 
**Status** | **OrdStatus** |  | 
**StatusHistory** | **List&lt;List&lt;string&gt;&gt;** | Timestamped history of order status changes. | [optional] 
**ErrorMessage** | **string** | Error message. | [optional] 
**Fills** | [**List&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

