# CoinAPI.EMS.REST.V1.Api.BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1BalancesGet**](BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances |

<a name="v1balancesget"></a>
# **V1BalancesGet**
> List&lt;Balance&gt; V1BalancesGet (string exchangeId = null)

Get balances

Get current currency balance from all or single exchange.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class V1BalancesGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io";
            var apiInstance = new BalancesApi(config);
            var exchangeId = KRAKEN;  // string | Filter the balances to the specific exchange. (optional) 

            try
            {
                // Get balances
                List<Balance> result = apiInstance.V1BalancesGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BalancesApi.V1BalancesGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1BalancesGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get balances
    ApiResponse<List<Balance>> response = apiInstance.V1BalancesGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BalancesApi.V1BalancesGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | Filter the balances to the specific exchange. | [optional]  |

### Return type

[**List&lt;Balance&gt;**](Balance.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

