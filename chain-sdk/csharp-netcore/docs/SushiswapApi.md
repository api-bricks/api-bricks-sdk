# CoinAPI.EMS.REST.V1.Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CurveGetExchangesCurrent**](SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥 |
| [**DexGetTradesCurrent**](SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥 |
| [**SushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥 |
| [**SushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥 |
| [**SushiswapGetDayDatasHistorical**](SushiswapApi.md#sushiswapgetdaydatashistorical) | **GET** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥 |
| [**SushiswapGetFactorysHistorical**](SushiswapApi.md#sushiswapgetfactoryshistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥 |
| [**SushiswapGetHourDatasHistorical**](SushiswapApi.md#sushiswapgethourdatashistorical) | **GET** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥 |
| [**SushiswapGetLiquidityPositionSnapshotsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥 |
| [**SushiswapGetLiquidityPositionsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥 |
| [**SushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥 |
| [**SushiswapGetPairDayDatasHistorical**](SushiswapApi.md#sushiswapgetpairdaydatashistorical) | **GET** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥 |
| [**SushiswapGetPairHourDatasHistorical**](SushiswapApi.md#sushiswapgetpairhourdatashistorical) | **GET** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥 |
| [**SushiswapGetPairsHistorical**](SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥 |
| [**SushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥 |
| [**SushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥 |
| [**SushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥 |
| [**SushiswapGetTokenDayDatasHistorical**](SushiswapApi.md#sushiswapgettokendaydatashistorical) | **GET** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥 |
| [**SushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥 |
| [**SushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥 |
| [**SushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥 |
| [**SushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥 |

<a name="curvegetexchangescurrent"></a>
# **CurveGetExchangesCurrent**
> List&lt;CurveExchangeDTO&gt; CurveGetExchangesCurrent ()

Exchanges (current) 🔥

Gets exchanges.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetExchangesCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Exchanges (current) 🔥
                List<CurveExchangeDTO> result = apiInstance.CurveGetExchangesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.CurveGetExchangesCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetExchangesCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Exchanges (current) 🔥
    ApiResponse<List<CurveExchangeDTO>> response = apiInstance.CurveGetExchangesCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.CurveGetExchangesCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgettradescurrent"></a>
# **DexGetTradesCurrent**
> List&lt;DexTradeDTO&gt; DexGetTradesCurrent ()

Trades (current) 🔥

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
    public class DexGetTradesCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Trades (current) 🔥
                List<DexTradeDTO> result = apiInstance.DexGetTradesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DexGetTradesCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetTradesCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Trades (current) 🔥
    ApiResponse<List<DexTradeDTO>> response = apiInstance.DexGetTradesCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DexGetTradesCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetbundleshistorical"></a>
# **SushiswapGetBundlesHistorical**
> List&lt;SushiswapBundleDTO&gt; SushiswapGetBundlesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Bundles (historical) 🔥

Gets bundles.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetBundlesHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Hardcoded to '1'. (optional) 

            try
            {
                // Bundles (historical) 🔥
                List<SushiswapBundleDTO> result = apiInstance.SushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetBundlesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetBundlesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Bundles (historical) 🔥
    ApiResponse<List<SushiswapBundleDTO>> response = apiInstance.SushiswapGetBundlesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetBundlesHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Hardcoded to &#39;1&#39;. | [optional]  |

### Return type

[**List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetburnshistorical"></a>
# **SushiswapGetBurnsHistorical**
> List&lt;SushiswapBurnDTO&gt; SushiswapGetBurnsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

Burns (historical) 🔥

Gets burns.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetBurnsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // Burns (historical) 🔥
                List<SushiswapBurnDTO> result = apiInstance.SushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetBurnsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetBurnsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Burns (historical) 🔥
    ApiResponse<List<SushiswapBurnDTO>> response = apiInstance.SushiswapGetBurnsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetBurnsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetdaydatashistorical"></a>
# **SushiswapGetDayDatasHistorical**
> List&lt;SushiswapDayDataDTO&gt; SushiswapGetDayDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

DayDatas (historical) 🔥

Gets daydatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetDayDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Unix timestamp for start of day / 86400 giving a unique day index. (optional) 

            try
            {
                // DayDatas (historical) 🔥
                List<SushiswapDayDataDTO> result = apiInstance.SushiswapGetDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetDayDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetDayDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // DayDatas (historical) 🔥
    ApiResponse<List<SushiswapDayDataDTO>> response = apiInstance.SushiswapGetDayDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetDayDatasHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Unix timestamp for start of day / 86400 giving a unique day index. | [optional]  |

### Return type

[**List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetfactoryshistorical"></a>
# **SushiswapGetFactorysHistorical**
> List&lt;SushiswapFactoryDTO&gt; SushiswapGetFactorysHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Factorys (historical) 🔥

Gets factorys.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetFactorysHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Factory address. (optional) 

            try
            {
                // Factorys (historical) 🔥
                List<SushiswapFactoryDTO> result = apiInstance.SushiswapGetFactorysHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetFactorysHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetFactorysHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Factorys (historical) 🔥
    ApiResponse<List<SushiswapFactoryDTO>> response = apiInstance.SushiswapGetFactorysHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetFactorysHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Factory address. | [optional]  |

### Return type

[**List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgethourdatashistorical"></a>
# **SushiswapGetHourDatasHistorical**
> List&lt;SushiswapHourDataDTO&gt; SushiswapGetHourDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

HourDatas (historical) 🔥

Gets hourdatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetHourDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Start of hour timestamp. (optional) 

            try
            {
                // HourDatas (historical) 🔥
                List<SushiswapHourDataDTO> result = apiInstance.SushiswapGetHourDatasHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetHourDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetHourDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HourDatas (historical) 🔥
    ApiResponse<List<SushiswapHourDataDTO>> response = apiInstance.SushiswapGetHourDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetHourDatasHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Start of hour timestamp. | [optional]  |

### Return type

[**List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetliquiditypositionsnapshotshistorical"></a>
# **SushiswapGetLiquidityPositionSnapshotsHistorical**
> List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; SushiswapGetLiquidityPositionSnapshotsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null, string pair = null)

LiquidityPositionSnapshots (historical) 🔥

Gets liquiditypositionsnapshots.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetLiquidityPositionSnapshotsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // LiquidityPositionSnapshots (historical) 🔥
                List<SushiswapLiquidityPositionSnapshotDTO> result = apiInstance.SushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionSnapshotsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LiquidityPositionSnapshots (historical) 🔥
    ApiResponse<List<SushiswapLiquidityPositionSnapshotDTO>> response = apiInstance.SushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **user** | **string** |  | [optional]  |
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetliquiditypositionshistorical"></a>
# **SushiswapGetLiquidityPositionsHistorical**
> List&lt;SushiswapLiquidityPositionDTO&gt; SushiswapGetLiquidityPositionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null, string pair = null)

LiquidityPositions (historical) 🔥

Gets liquiditypositions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetLiquidityPositionsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // LiquidityPositions (historical) 🔥
                List<SushiswapLiquidityPositionDTO> result = apiInstance.SushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetLiquidityPositionsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LiquidityPositions (historical) 🔥
    ApiResponse<List<SushiswapLiquidityPositionDTO>> response = apiInstance.SushiswapGetLiquidityPositionsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **user** | **string** |  | [optional]  |
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetmintshistorical"></a>
# **SushiswapGetMintsHistorical**
> List&lt;SushiswapMintDTO&gt; SushiswapGetMintsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

Mints (historical) 🔥

Gets mints.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetMintsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // Mints (historical) 🔥
                List<SushiswapMintDTO> result = apiInstance.SushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetMintsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetMintsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Mints (historical) 🔥
    ApiResponse<List<SushiswapMintDTO>> response = apiInstance.SushiswapGetMintsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetMintsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetpairdaydatashistorical"></a>
# **SushiswapGetPairDayDatasHistorical**
> List&lt;SushiswapPairDayDataDTO&gt; SushiswapGetPairDayDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null, string token0 = null, string token1 = null)

PairDayDatas (historical) 🔥

Gets pairdaydatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPairDayDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 
            var token0 = "token0_example";  // string |  (optional) 
            var token1 = "token1_example";  // string |  (optional) 

            try
            {
                // PairDayDatas (historical) 🔥
                List<SushiswapPairDayDataDTO> result = apiInstance.SushiswapGetPairDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairDayDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPairDayDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PairDayDatas (historical) 🔥
    ApiResponse<List<SushiswapPairDayDataDTO>> response = apiInstance.SushiswapGetPairDayDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairDayDatasHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **pair** | **string** |  | [optional]  |
| **token0** | **string** |  | [optional]  |
| **token1** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetpairhourdatashistorical"></a>
# **SushiswapGetPairHourDatasHistorical**
> List&lt;SushiswapPairHourDataDTO&gt; SushiswapGetPairHourDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

PairHourDatas (historical) 🔥

Gets pairhourdatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPairHourDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // PairHourDatas (historical) 🔥
                List<SushiswapPairHourDataDTO> result = apiInstance.SushiswapGetPairHourDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairHourDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPairHourDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PairHourDatas (historical) 🔥
    ApiResponse<List<SushiswapPairHourDataDTO>> response = apiInstance.SushiswapGetPairHourDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairHourDatasHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetpairshistorical"></a>
# **SushiswapGetPairsHistorical**
> List&lt;SushiswapPairDTO&gt; SushiswapGetPairsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string name = null, string token0 = null, string token1 = null)

Pairs (historical) 🔥

Gets pairs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPairsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var name = "name_example";  // string |  (optional) 
            var token0 = "token0_example";  // string |  (optional) 
            var token1 = "token1_example";  // string |  (optional) 

            try
            {
                // Pairs (historical) 🔥
                List<SushiswapPairDTO> result = apiInstance.SushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPairsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Pairs (historical) 🔥
    ApiResponse<List<SushiswapPairDTO>> response = apiInstance.SushiswapGetPairsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **name** | **string** |  | [optional]  |
| **token0** | **string** |  | [optional]  |
| **token1** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetpoolscurrent"></a>
# **SushiswapGetPoolsCurrent**
> List&lt;SushiswapPairDTO&gt; SushiswapGetPoolsCurrent ()

Pools (current) 🔥

Gets pools.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPoolsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Pools (current) 🔥
                List<SushiswapPairDTO> result = apiInstance.SushiswapGetPoolsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPoolsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPoolsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Pools (current) 🔥
    ApiResponse<List<SushiswapPairDTO>> response = apiInstance.SushiswapGetPoolsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPoolsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetswapscurrent"></a>
# **SushiswapGetSwapsCurrent**
> List&lt;SushiswapSwapDTO&gt; SushiswapGetSwapsCurrent ()

Swaps (current) 🔥

Gets swaps.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetSwapsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Swaps (current) 🔥
                List<SushiswapSwapDTO> result = apiInstance.SushiswapGetSwapsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetSwapsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetSwapsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Swaps (current) 🔥
    ApiResponse<List<SushiswapSwapDTO>> response = apiInstance.SushiswapGetSwapsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetSwapsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetswapshistorical"></a>
# **SushiswapGetSwapsHistorical**
> List&lt;SushiswapSwapDTO&gt; SushiswapGetSwapsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

Swaps (historical) 🔥

Gets swaps.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetSwapsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Transaction hash plus index in Transaction swap array. (optional) 
            var pair = "pair_example";  // string | Reference to pair. (optional) 

            try
            {
                // Swaps (historical) 🔥
                List<SushiswapSwapDTO> result = apiInstance.SushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetSwapsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetSwapsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Swaps (historical) 🔥
    ApiResponse<List<SushiswapSwapDTO>> response = apiInstance.SushiswapGetSwapsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetSwapsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Transaction hash plus index in Transaction swap array. | [optional]  |
| **pair** | **string** | Reference to pair. | [optional]  |

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgettokendaydatashistorical"></a>
# **SushiswapGetTokenDayDatasHistorical**
> List&lt;SushiswapTokenDayDataDTO&gt; SushiswapGetTokenDayDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

TokenDayDatas (historical) 🔥

Gets tokendaydatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetTokenDayDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, day start timestamp in unix / 86400. (optional) 

            try
            {
                // TokenDayDatas (historical) 🔥
                List<SushiswapTokenDayDataDTO> result = apiInstance.SushiswapGetTokenDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokenDayDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTokenDayDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // TokenDayDatas (historical) 🔥
    ApiResponse<List<SushiswapTokenDayDataDTO>> response = apiInstance.SushiswapGetTokenDayDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokenDayDatasHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Identifier, day start timestamp in unix / 86400. | [optional]  |

### Return type

[**List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgettokenscurrent"></a>
# **SushiswapGetTokensCurrent**
> List&lt;SushiswapTokenDTO&gt; SushiswapGetTokensCurrent ()

Tokens (current) 🔥

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
    public class SushiswapGetTokensCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Tokens (current) 🔥
                List<SushiswapTokenDTO> result = apiInstance.SushiswapGetTokensCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokensCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTokensCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (current) 🔥
    ApiResponse<List<SushiswapTokenDTO>> response = apiInstance.SushiswapGetTokensCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokensCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgettokenshistorical"></a>
# **SushiswapGetTokensHistorical**
> List&lt;SushiswapTokenDTO&gt; SushiswapGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string symbol = null, string name = null)

Tokens (historical) 🔥

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
    public class SushiswapGetTokensHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Token address. (optional) 
            var symbol = "symbol_example";  // string | Token symbol. (optional) 
            var name = "name_example";  // string | Token name. (optional) 

            try
            {
                // Tokens (historical) 🔥
                List<SushiswapTokenDTO> result = apiInstance.SushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokensHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTokensHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (historical) 🔥
    ApiResponse<List<SushiswapTokenDTO>> response = apiInstance.SushiswapGetTokensHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, symbol, name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokensHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Token address. | [optional]  |
| **symbol** | **string** | Token symbol. | [optional]  |
| **name** | **string** | Token name. | [optional]  |

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgettransactionshistorical"></a>
# **SushiswapGetTransactionsHistorical**
> List&lt;SushiswapTransactionDTO&gt; SushiswapGetTransactionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Transactions (historical) 🔥

Gets transactions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetTransactionsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Ethereum transaction hash. (optional) 

            try
            {
                // Transactions (historical) 🔥
                List<SushiswapTransactionDTO> result = apiInstance.SushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTransactionsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTransactionsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Transactions (historical) 🔥
    ApiResponse<List<SushiswapTransactionDTO>> response = apiInstance.SushiswapGetTransactionsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTransactionsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Ethereum transaction hash. | [optional]  |

### Return type

[**List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sushiswapgetusershistorical"></a>
# **SushiswapGetUsersHistorical**
> List&lt;SushiswapUserDTO&gt; SushiswapGetUsersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Users (historical) 🔥

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
    public class SushiswapGetUsersHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | User address. (optional) 

            try
            {
                // Users (historical) 🔥
                List<SushiswapUserDTO> result = apiInstance.SushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetUsersHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetUsersHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Users (historical) 🔥
    ApiResponse<List<SushiswapUserDTO>> response = apiInstance.SushiswapGetUsersHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetUsersHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | User address. | [optional]  |

### Return type

[**List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

