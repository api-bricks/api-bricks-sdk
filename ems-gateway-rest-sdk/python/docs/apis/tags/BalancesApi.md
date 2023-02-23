<a name="__pageTop"></a>
# openapi_client.apis.tags.balances_api.BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_balances_get**](#v1_balances_get) | **get** /v1/balances | Get balances

# **v1_balances_get**
<a name="v1_balances_get"></a>
> Balances v1_balances_get()

Get balances

Get current currency balance from all or single exchange.

### Example

```python
import openapi_client
from openapi_client.apis.tags import balances_api
from openapi_client.model.balances import Balances
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = balances_api.BalancesApi(api_client)

    # example passing only optional values
    query_params = {
        'exchange_id': "KRAKEN",
    }
    try:
        # Get balances
        api_response = api_instance.v1_balances_get(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling BalancesApi->v1_balances_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', 'appliction/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
exchange_id | ExchangeIdSchema | | optional


# ExchangeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_balances_get.ApiResponseFor200) | Collection of balances.
490 | [ApiResponseFor490](#v1_balances_get.ApiResponseFor490) | Exchange is unreachable.

#### v1_balances_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Balances**](../../models/Balances.md) |  | 


#### v1_balances_get.ApiResponseFor490
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor490ResponseBodyApplictionJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor490ResponseBodyApplictionJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

