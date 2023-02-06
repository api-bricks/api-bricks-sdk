<a name="__pageTop"></a>
# openapi_client.apis.tags.metadata_api.MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadata_chains_get**](#metadata_chains_get) | **get** /metadata/chains | List all chains.
[**metadata_dapps_get**](#metadata_dapps_get) | **get** /metadata/dapps | List all decentralized applications.

# **metadata_chains_get**
<a name="metadata_chains_get"></a>
> metadata_chains_get()

List all chains.

### Example

```python
import openapi_client
from openapi_client.apis.tags import metadata_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metadata_api.MetadataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List all chains.
        api_response = api_instance.metadata_chains_get()
    except openapi_client.ApiException as e:
        print("Exception when calling MetadataApi->metadata_chains_get: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#metadata_chains_get.ApiResponseFor200) | Success

#### metadata_chains_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **metadata_dapps_get**
<a name="metadata_dapps_get"></a>
> metadata_dapps_get()

List all decentralized applications.

### Example

```python
import openapi_client
from openapi_client.apis.tags import metadata_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metadata_api.MetadataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List all decentralized applications.
        api_response = api_instance.metadata_dapps_get()
    except openapi_client.ApiException as e:
        print("Exception when calling MetadataApi->metadata_dapps_get: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#metadata_dapps_get.ApiResponseFor200) | Success

#### metadata_dapps_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

