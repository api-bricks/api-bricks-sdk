# CoinAPI.EMS.REST.V1.Api.MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**MetadataChainsGet**](MetadataApi.md#metadatachainsget) | **GET** /metadata/chains | List all chains. |
| [**MetadataDappsGet**](MetadataApi.md#metadatadappsget) | **GET** /metadata/dapps | List all decentralized applications. |

<a name="metadatachainsget"></a>
# **MetadataChainsGet**
> void MetadataChainsGet ()

List all chains.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class MetadataChainsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new MetadataApi(config);

            try
            {
                // List all chains.
                apiInstance.MetadataChainsGet();
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.MetadataChainsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the MetadataChainsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all chains.
    apiInstance.MetadataChainsGetWithHttpInfo();
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.MetadataChainsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="metadatadappsget"></a>
# **MetadataDappsGet**
> void MetadataDappsGet ()

List all decentralized applications.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class MetadataDappsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new MetadataApi(config);

            try
            {
                // List all decentralized applications.
                apiInstance.MetadataDappsGet();
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.MetadataDappsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the MetadataDappsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all decentralized applications.
    apiInstance.MetadataDappsGetWithHttpInfo();
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.MetadataDappsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

