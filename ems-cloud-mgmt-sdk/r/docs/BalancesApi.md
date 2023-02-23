# BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1BalancesGet**](BalancesApi.md#V1BalancesGet) | **GET** /v1/balances | Get balances


# **V1BalancesGet**
> array[Balance] V1BalancesGet(exchange_id = var.exchange_id)

Get balances

Get current currency balance from all or single exchange.

### Example
```R
library(openapi)

# Get balances
#
# prepare function argument(s)
var_exchange_id <- "KRAKEN" # character | Filter the balances to the specific exchange. (Optional)

api_instance <- BalancesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1BalancesGet(exchange_id = var_exchange_iddata_file = "result.txt")
result <- api_instance$V1BalancesGet(exchange_id = var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**array[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of balances. |  -  |
| **490** | Exchange is unreachable. |  -  |

