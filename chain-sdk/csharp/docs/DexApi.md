# CoinAPI.EMS.REST.V1.Api.DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexBatchesCurrent**](DexApi.md#dexbatchescurrent) | **GET** /dapps/dex/batches/current | Batches (current)
[**DexDepositsCurrent**](DexApi.md#dexdepositscurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**DexGetBatchesHistorical**](DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**DexGetDepositsHistorical**](DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**DexGetOrdersHistorical**](DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**DexGetPricesHistorical**](DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**DexGetSolutionsHistorical**](DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**DexGetStatsHistorical**](DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**DexGetTokensHistorical**](DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical)
[**DexGetTradesHistorical**](DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical)
[**DexGetUsersHistorical**](DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**DexGetWithdrawRequestsHistorical**](DexApi.md#dexgetwithdrawrequestshistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical)
[**DexGetWithdrawsHistorical**](DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**DexOrdersCurrent**](DexApi.md#dexorderscurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**DexPricesCurrent**](DexApi.md#dexpricescurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**DexSolutionsCurrent**](DexApi.md#dexsolutionscurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**DexStatsCurrent**](DexApi.md#dexstatscurrent) | **GET** /dapps/dex/stats/current | Stats (current)
[**DexTokensCurrent**](DexApi.md#dextokenscurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**DexTradesCurrent**](DexApi.md#dextradescurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**DexUsersCurrent**](DexApi.md#dexuserscurrent) | **GET** /dapps/dex/users/current | Users (current)
[**DexWithdrawRequestsCurrent**](DexApi.md#dexwithdrawrequestscurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**DexWithdrawsCurrent**](DexApi.md#dexwithdrawscurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)



## DexBatchesCurrent

> List&lt;DexBatchDTO&gt; DexBatchesCurrent ()

Batches (current)

Gets batches.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexBatchesCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Batches (current)
                List<DexBatchDTO> result = apiInstance.DexBatchesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexBatchesCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexDepositsCurrent

> List&lt;DexDepositDTO&gt; DexDepositsCurrent ()

Deposits (current)

Gets deposits.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexDepositsCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Deposits (current)
                List<DexDepositDTO> result = apiInstance.DexDepositsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexDepositsCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetBatchesHistorical

> List&lt;DexBatchDTO&gt; DexGetBatchesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Batches (historical)

Gets batches.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetBatchesHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier. (optional) 

            try
            {
                // Batches (historical)
                List<DexBatchDTO> result = apiInstance.DexGetBatchesHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetBatchesHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier. | [optional] 

### Return type

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetDepositsHistorical

> List&lt;DexDepositDTO&gt; DexGetDepositsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null)

Deposits (historical)

Gets deposits.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetDepositsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, format: (transaction hash)-(token id). (optional) 
            var user = "user_example";  // string | User address. (optional) 

            try
            {
                // Deposits (historical)
                List<DexDepositDTO> result = apiInstance.DexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetDepositsHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(token id). | [optional] 
 **user** | **string**| User address. | [optional] 

### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetOrdersHistorical

> List&lt;DexOrderDTO&gt; DexGetOrdersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string buyToken = null, string sellToken = null)

Orders (historical)

Gets orders.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetOrdersHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, format: (owner address)-(order id) (optional) 
            var buyToken = "buyToken_example";  // string | Identifier of token that was bought. (optional) 
            var sellToken = "sellToken_example";  // string | Identifier of token that was sold. (optional) 

            try
            {
                // Orders (historical)
                List<DexOrderDTO> result = apiInstance.DexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetOrdersHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (owner address)-(order id) | [optional] 
 **buyToken** | **string**| Identifier of token that was bought. | [optional] 
 **sellToken** | **string**| Identifier of token that was sold. | [optional] 

### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetPricesHistorical

> List&lt;DexPriceDTO&gt; DexGetPricesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Prices (historical)

Gets prices.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetPricesHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, format: (token id)-(batch id). (optional) 

            try
            {
                // Prices (historical)
                List<DexPriceDTO> result = apiInstance.DexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetPricesHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (token id)-(batch id). | [optional] 

### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetSolutionsHistorical

> List&lt;DexSolutionDTO&gt; DexGetSolutionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Solutions (historical)

Gets solutions.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetSolutionsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Solutions (historical)
                List<DexSolutionDTO> result = apiInstance.DexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetSolutionsHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetStatsHistorical

> List&lt;DexStatsDTO&gt; DexGetStatsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Stats (historical)

Gets stats.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetStatsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Stats (historical)
                List<DexStatsDTO> result = apiInstance.DexGetStatsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetStatsHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetTokensHistorical

> List&lt;DexTokenDTO&gt; DexGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string address = null, string symbol = null, string name = null)

Tokens (historical)

Gets tokens.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetTokensHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 
            var address = "address_example";  // string |  (optional) 
            var symbol = "symbol_example";  // string |  (optional) 
            var name = "name_example";  // string |  (optional) 

            try
            {
                // Tokens (historical)
                List<DexTokenDTO> result = apiInstance.DexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetTokensHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **address** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 

### Return type

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetTradesHistorical

> List&lt;DexTradeDTO&gt; DexGetTradesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string buyToken = null, string sellToken = null)

Trades (historical)

Gets trades.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetTradesHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 
            var buyToken = "buyToken_example";  // string |  (optional) 
            var sellToken = "sellToken_example";  // string |  (optional) 

            try
            {
                // Trades (historical)
                List<DexTradeDTO> result = apiInstance.DexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetTradesHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **buyToken** | **string**|  | [optional] 
 **sellToken** | **string**|  | [optional] 

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetUsersHistorical

> List&lt;DexUserDTO&gt; DexGetUsersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Users (historical)

Gets users.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetUsersHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Users (historical)
                List<DexUserDTO> result = apiInstance.DexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetUsersHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetWithdrawRequestsHistorical

> List&lt;DexWithdrawRequestDTO&gt; DexGetWithdrawRequestsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null)

WithdrawRequests (historical)

Gets withdrawRequests.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetWithdrawRequestsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, format: (transaction hash)-(id). (optional) 
            var user = "user_example";  // string |  (optional) 

            try
            {
                // WithdrawRequests (historical)
                List<DexWithdrawRequestDTO> result = apiInstance.DexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetWithdrawRequestsHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(id). | [optional] 
 **user** | **string**|  | [optional] 

### Return type

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetWithdrawsHistorical

> List&lt;DexWithdrawDTO&gt; DexGetWithdrawsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null)

Withdraws (historical)

Gets withdraws.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetWithdrawsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, format: (transaction hash)-(id). (optional) 
            var user = "user_example";  // string |  (optional) 

            try
            {
                // Withdraws (historical)
                List<DexWithdrawDTO> result = apiInstance.DexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexGetWithdrawsHistorical: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **long?**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **long?**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime?**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime?**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (transaction hash)-(id). | [optional] 
 **user** | **string**|  | [optional] 

### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexOrdersCurrent

> List&lt;DexOrderDTO&gt; DexOrdersCurrent ()

Orders (current)

Gets orders.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexOrdersCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Orders (current)
                List<DexOrderDTO> result = apiInstance.DexOrdersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexOrdersCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexPricesCurrent

> List&lt;DexPriceDTO&gt; DexPricesCurrent ()

Prices (current)

Gets prices.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexPricesCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Prices (current)
                List<DexPriceDTO> result = apiInstance.DexPricesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexPricesCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexSolutionsCurrent

> List&lt;DexSolutionDTO&gt; DexSolutionsCurrent ()

Solutions (current)

Gets solutions.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexSolutionsCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Solutions (current)
                List<DexSolutionDTO> result = apiInstance.DexSolutionsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexSolutionsCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexStatsCurrent

> List&lt;DexStatsDTO&gt; DexStatsCurrent ()

Stats (current)

Gets stats.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexStatsCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Stats (current)
                List<DexStatsDTO> result = apiInstance.DexStatsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexStatsCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexTokensCurrent

> List&lt;DexTokenDTO&gt; DexTokensCurrent ()

Tokens (current)

Gets tokens.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexTokensCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Tokens (current)
                List<DexTokenDTO> result = apiInstance.DexTokensCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexTokensCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexTradesCurrent

> List&lt;DexTradeDTO&gt; DexTradesCurrent ()

Trades (current)

Gets trades.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexTradesCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Trades (current)
                List<DexTradeDTO> result = apiInstance.DexTradesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexTradesCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexUsersCurrent

> List&lt;DexUserDTO&gt; DexUsersCurrent ()

Users (current)

Gets users.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexUsersCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Users (current)
                List<DexUserDTO> result = apiInstance.DexUsersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexUsersCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexWithdrawRequestsCurrent

> List&lt;DexWithdrawRequestDTO&gt; DexWithdrawRequestsCurrent ()

WithdrawRequests (current)

Gets withdrawRequests.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexWithdrawRequestsCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // WithdrawRequests (current)
                List<DexWithdrawRequestDTO> result = apiInstance.DexWithdrawRequestsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexWithdrawRequestsCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexWithdrawsCurrent

> List&lt;DexWithdrawDTO&gt; DexWithdrawsCurrent ()

Withdraws (current)

Gets withdraws.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexWithdrawsCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(Configuration.Default);

            try
            {
                // Withdraws (current)
                List<DexWithdrawDTO> result = apiInstance.DexWithdrawsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DexApi.DexWithdrawsCurrent: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

