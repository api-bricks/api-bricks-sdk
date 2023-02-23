

# OrderExecutionReportAllOf

The order execution report message.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. |  [optional]
**amountOpen** | **BigDecimal** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amountFilled** | **BigDecimal** | Total quantity filled. | 
**avgPx** | **BigDecimal** | Calculated average price of all fills on this order. |  [optional]
**status** | **OrdStatus** |  | 
**statusHistory** | **Seq&lt;Seq[String]&gt;** | Timestamped history of order status changes. |  [optional]
**errorMessage** | **String** | Error message. |  [optional]
**fills** | [**Seq&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. |  [optional]



