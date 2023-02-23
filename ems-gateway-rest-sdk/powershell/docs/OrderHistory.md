# OrderHistory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Apikey** | **String** | Apikey | [optional] 
**ExchangeId** | **String** | Exchange id | [optional] 
**ClientOrderId** | **String** | Client order id | [optional] 
**SymbolIdExchange** | **String** | Symbol id exchange | [optional] 
**SymbolIdCoinapi** | **String** | Symbol id in coinapi | [optional] 
**AmountOrder** | **Decimal** | Amount | [optional] 
**Price** | **Decimal** | Price | [optional] 
**Side** | **Decimal** | 1-buy, 2-sell | [optional] 
**OrderType** | **String** | Order type | [optional] 
**TimeInForce** | **String** | Time in force | [optional] 
**ExpireTime** | **System.DateTime** | Expire time | [optional] 
**ExecInst** | **String[]** | Exec inst | [optional] 
**ClientOrderIdFormatExchange** | **String** | Client order id format | [optional] 
**ExchangeOrderId** | **String** | Exchange order id | [optional] 
**AmountOpen** | **Decimal** | Amount open | [optional] 
**AmountFilled** | **Decimal** | Amount filled | [optional] 
**AvgPx** | **Decimal** | Average price | [optional] 
**Status** | **String** | Status | [optional] 
**StatusHistoryStatus** | **String[]** | History status | [optional] 
**StatusHistoryTime** | **System.DateTime[]** | History status time | [optional] 
**ErrorMessageResult** | **String** | Error message | [optional] 
**ErrorMessageReason** | **String** | Error message reason | [optional] 
**ErrorMessageMessage** | **String** | Error message | [optional] 
**FillsTime** | **System.DateTime[]** | Fills time | [optional] 
**FillsPrice** | **Decimal[]** | Fills price | [optional] 
**FillsAmount** | **Decimal[]** | Fills amount | [optional] 
**CreatedTime** | **System.DateTime** | Created time | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderHistory = Initialize-PSOpenAPIToolsOrderHistory  -Apikey 9a55567a-b5ff-4b78-b6aa-xxxx `
 -ExchangeId BINANCE `
 -ClientOrderId 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b `
 -SymbolIdExchange BTCUSDT `
 -SymbolIdCoinapi BINANCE_SPOT_BTC_USDT `
 -AmountOrder 0.00034 `
 -Price 31939.47 `
 -Side 2 `
 -OrderType LIMIT `
 -TimeInForce GOOD_TILL_CANCEL `
 -ExpireTime 2022-05-01T00:00:00 `
 -ExecInst null `
 -ClientOrderIdFormatExchange 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b `
 -ExchangeOrderId 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b `
 -AmountOpen 0.00034 `
 -AmountFilled 0 `
 -AvgPx 0 `
 -Status REJECTED `
 -StatusHistoryStatus null `
 -StatusHistoryTime null `
 -ErrorMessageResult null `
 -ErrorMessageReason null `
 -ErrorMessageMessage -2015 Invalid API-key, IP, or permissions for action. https://api.binance.com/api/v3/order?newOrderRespType `
 -FillsTime null `
 -FillsPrice null `
 -FillsAmount null `
 -CreatedTime 2022-06-27T07:02:33.1977903Z
```

- Convert the resource to JSON
```powershell
$OrderHistory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

