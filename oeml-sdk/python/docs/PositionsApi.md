# openapi_client.PositionsApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_positions_get**](PositionsApi.md#v1_positions_get) | **GET** /v1/positions | Get open positions


# **v1_positions_get**
> Positions v1_positions_get()

Get open positions

Get current open positions across all or single exchange.

### Example

```python
import time
import openapi_client
from openapi_client.api import positions_api
from openapi_client.model.positions import Positions
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = positions_api.PositionsApi(api_client)
    exchange_id = "KRAKEN" # str | Filter the balances to the specific exchange. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get open positions
        api_response = api_instance.v1_positions_get(exchange_id=exchange_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling PositionsApi->v1_positions_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Filter the balances to the specific exchange. | [optional]

### Return type

[**Positions**](Positions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collection of positons. |  -  |
**490** | Exchange is unreachable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

