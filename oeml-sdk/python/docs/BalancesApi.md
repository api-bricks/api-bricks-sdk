# openapi_client.BalancesApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_balances_get**](BalancesApi.md#v1_balances_get) | **GET** /v1/balances | Get balances


# **v1_balances_get**
> Balances v1_balances_get()

Get balances

Get current currency balance from all or single exchange.

### Example

```python
import time
import openapi_client
from openapi_client.api import balances_api
from openapi_client.model.message import Message
from openapi_client.model.balances import Balances
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = balances_api.BalancesApi(api_client)
    exchange_id = "KRAKEN" # str | Filter the balances to the specific exchange. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get balances
        api_response = api_instance.v1_balances_get(exchange_id=exchange_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling BalancesApi->v1_balances_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Filter the balances to the specific exchange. | [optional]

### Return type

[**Balances**](Balances.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collection of balances. |  -  |
**490** | Exchange is unreachable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

