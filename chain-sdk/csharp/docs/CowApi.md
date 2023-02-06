# CoinAPI.EMS.REST.V1.Api.CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowGetOrdersHistorical**](CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**CowGetSettlementsHistorical**](CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**CowGetTokensHistorical**](CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**CowGetTradesHistorical**](CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**CowGetUsersHistorical**](CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**CowOrdersCurrent**](CowApi.md#coworderscurrent) | **GET** /dapps/cow/orders/current | Orders (current)
[**CowSettlementsCurrent**](CowApi.md#cowsettlementscurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**CowTokensCurrent**](CowApi.md#cowtokenscurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**CowTradesCurrent**](CowApi.md#cowtradescurrent) | **GET** /dapps/cow/trades/current | Trades (current)
[**CowUsersCurrent**](CowApi.md#cowuserscurrent) | **GET** /dapps/cow/users/current | Users (current)



## CowGetOrdersHistorical

> List&lt;CowOrderDTO&gt; CowGetOrdersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

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
    public class CowGetOrdersHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | User's address. (optional) 

            try
            {
                // Orders (historical)
                List<CowOrderDTO> result = apiInstance.CowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetOrdersHistorical: " + e.Message );
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
 **id** | **string**| User&#39;s address. | [optional] 

### Return type

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

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


## CowGetSettlementsHistorical

> List&lt;CowSettlementDTO&gt; CowGetSettlementsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Settlements (historical)

Gets settlements.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetSettlementsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Transaction hash. (optional) 

            try
            {
                // Settlements (historical)
                List<CowSettlementDTO> result = apiInstance.CowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetSettlementsHistorical: " + e.Message );
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
 **id** | **string**| Transaction hash. | [optional] 

### Return type

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

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


## CowGetTokensHistorical

> List&lt;CowTokenDTO&gt; CowGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string address = null, string name = null, string symbol = null)

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
    public class CowGetTokensHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Token's address. (optional) 
            var address = "address_example";  // string | Token's address. (optional) 
            var name = "name_example";  // string | Token name fetched by ERC20 contract call. (optional) 
            var symbol = "symbol_example";  // string | Token symbol fetched by contract call. (optional) 

            try
            {
                // Tokens (historical)
                List<CowTokenDTO> result = apiInstance.CowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetTokensHistorical: " + e.Message );
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
 **id** | **string**| Token&#39;s address. | [optional] 
 **address** | **string**| Token&#39;s address. | [optional] 
 **name** | **string**| Token name fetched by ERC20 contract call. | [optional] 
 **symbol** | **string**| Token symbol fetched by contract call. | [optional] 

### Return type

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

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


## CowGetTradesHistorical

> List&lt;CowTradeDTO&gt; CowGetTradesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string sellToken = null, string buyToken = null)

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
    public class CowGetTradesHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, format: (order id)|(transaction hash)|(event index). (optional) 
            var sellToken = "sellToken_example";  // string | Address of token that is sold. (optional) 
            var buyToken = "buyToken_example";  // string | Address of token that is bought. (optional) 

            try
            {
                // Trades (historical)
                List<CowTradeDTO> result = apiInstance.CowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetTradesHistorical: " + e.Message );
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
 **id** | **string**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
 **sellToken** | **string**| Address of token that is sold. | [optional] 
 **buyToken** | **string**| Address of token that is bought. | [optional] 

### Return type

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

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


## CowGetUsersHistorical

> List&lt;CowUserDTO&gt; CowGetUsersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string address = null)

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
    public class CowGetUsersHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | User's address. (optional) 
            var address = "address_example";  // string | User's address. (optional) 

            try
            {
                // Users (historical)
                List<CowUserDTO> result = apiInstance.CowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetUsersHistorical: " + e.Message );
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
 **id** | **string**| User&#39;s address. | [optional] 
 **address** | **string**| User&#39;s address. | [optional] 

### Return type

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

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


## CowOrdersCurrent

> List&lt;CowOrderDTO&gt; CowOrdersCurrent ()

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
    public class CowOrdersCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);

            try
            {
                // Orders (current)
                List<CowOrderDTO> result = apiInstance.CowOrdersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowOrdersCurrent: " + e.Message );
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

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

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


## CowSettlementsCurrent

> List&lt;CowSettlementDTO&gt; CowSettlementsCurrent ()

Settlements (current)

Gets settlements.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowSettlementsCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);

            try
            {
                // Settlements (current)
                List<CowSettlementDTO> result = apiInstance.CowSettlementsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowSettlementsCurrent: " + e.Message );
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

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

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


## CowTokensCurrent

> List&lt;CowTokenDTO&gt; CowTokensCurrent ()

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
    public class CowTokensCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);

            try
            {
                // Tokens (current)
                List<CowTokenDTO> result = apiInstance.CowTokensCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowTokensCurrent: " + e.Message );
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

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

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


## CowTradesCurrent

> List&lt;CowTradeDTO&gt; CowTradesCurrent ()

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
    public class CowTradesCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);

            try
            {
                // Trades (current)
                List<CowTradeDTO> result = apiInstance.CowTradesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowTradesCurrent: " + e.Message );
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

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

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


## CowUsersCurrent

> List&lt;CowUserDTO&gt; CowUsersCurrent ()

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
    public class CowUsersCurrentExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);

            try
            {
                // Users (current)
                List<CowUserDTO> result = apiInstance.CowUsersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowUsersCurrent: " + e.Message );
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

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

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

