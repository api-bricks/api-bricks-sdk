<a name="__pageTop"></a>
# openapi_client.apis.tags.uniswap_v2_api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_bundles__historical**](#uniswap_v2_get_bundles__historical) | **get** /dapps/uniswapv2/bundles/historical | Bundles (historical)
[**uniswap_v2_get_burns__historical**](#uniswap_v2_get_burns__historical) | **get** /dapps/uniswapv2/burns/historical | Burns (historical)
[**uniswap_v2_get_day_data__historical**](#uniswap_v2_get_day_data__historical) | **get** /dapps/uniswapv2/dayData/historical | DayData (historical)
[**uniswap_v2_get_factory__historical**](#uniswap_v2_get_factory__historical) | **get** /dapps/uniswapv2/factory/historical | Factory (historical)
[**uniswap_v2_get_liquidity_positions__historical**](#uniswap_v2_get_liquidity_positions__historical) | **get** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
[**uniswap_v2_get_liquidity_positions_snapshots__historical**](#uniswap_v2_get_liquidity_positions_snapshots__historical) | **get** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
[**uniswap_v2_get_mints__historical**](#uniswap_v2_get_mints__historical) | **get** /dapps/uniswapv2/mints/historical | Mints (historical)
[**uniswap_v2_get_pools__current**](#uniswap_v2_get_pools__current) | **get** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_pools__historical**](#uniswap_v2_get_pools__historical) | **get** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
[**uniswap_v2_get_pools_day_data__historical**](#uniswap_v2_get_pools_day_data__historical) | **get** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
[**uniswap_v2_get_pools_hour_data__historical**](#uniswap_v2_get_pools_hour_data__historical) | **get** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
[**uniswap_v2_get_swaps__current**](#uniswap_v2_get_swaps__current) | **get** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_swaps__historical**](#uniswap_v2_get_swaps__historical) | **get** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
[**uniswap_v2_get_tokens__current**](#uniswap_v2_get_tokens__current) | **get** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswap_v2_get_tokens__historical**](#uniswap_v2_get_tokens__historical) | **get** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
[**uniswap_v2_get_tokens_day_data__historical**](#uniswap_v2_get_tokens_day_data__historical) | **get** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
[**uniswap_v2_get_transactions__historical**](#uniswap_v2_get_transactions__historical) | **get** /dapps/uniswapv2/transactions/historical | Transactions (historical)
[**uniswap_v2_get_users__historical**](#uniswap_v2_get_users__historical) | **get** /dapps/uniswapv2/users/historical | Users (historical)

# **uniswap_v2_get_bundles__historical**
<a name="uniswap_v2_get_bundles__historical"></a>
> [UniswapV2BundleV2DTO] uniswap_v2_get_bundles__historical()

Bundles (historical)

Gets bundles.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_bundle_v2_dto import UniswapV2BundleV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # Bundles (historical)
        api_response = api_instance.uniswap_v2_get_bundles__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_bundles__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_bundles__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_bundles__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) | [**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) | [**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) | [**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) | [**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) | [**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) | [**UniswapV2BundleV2DTO**]({{complexTypePrefix}}UniswapV2BundleV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_burns__historical**
<a name="uniswap_v2_get_burns__historical"></a>
> [UniswapV2BurnV2DTO] uniswap_v2_get_burns__historical()

Burns (historical)

Gets burns.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_burn_v2_dto import UniswapV2BurnV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # Burns (historical)
        api_response = api_instance.uniswap_v2_get_burns__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_burns__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_burns__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_burns__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) | [**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) | [**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) | [**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) | [**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) | [**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) | [**UniswapV2BurnV2DTO**]({{complexTypePrefix}}UniswapV2BurnV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_day_data__historical**
<a name="uniswap_v2_get_day_data__historical"></a>
> [UniswapV2UniswapDayDataV2DTO] uniswap_v2_get_day_data__historical()

DayData (historical)

Gets uniswapv2 day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_uniswap_day_data_v2_dto import UniswapV2UniswapDayDataV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # DayData (historical)
        api_response = api_instance.uniswap_v2_get_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_day_data__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_day_data__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) | [**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) | [**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) | [**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) | [**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) | [**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) | [**UniswapV2UniswapDayDataV2DTO**]({{complexTypePrefix}}UniswapV2UniswapDayDataV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_factory__historical**
<a name="uniswap_v2_get_factory__historical"></a>
> [UniswapV2UniswapFactoryV2DTO] uniswap_v2_get_factory__historical()

Factory (historical)

Gets factory.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_uniswap_factory_v2_dto import UniswapV2UniswapFactoryV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # Factory (historical)
        api_response = api_instance.uniswap_v2_get_factory__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_factory__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_factory__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_factory__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) | [**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) | [**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) | [**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) | [**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) | [**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) | [**UniswapV2UniswapFactoryV2DTO**]({{complexTypePrefix}}UniswapV2UniswapFactoryV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_liquidity_positions__historical**
<a name="uniswap_v2_get_liquidity_positions__historical"></a>
> [UniswapV2LiquidityPositionV2DTO] uniswap_v2_get_liquidity_positions__historical()

LiquidityPositions (historical)

Gets liquidity positions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_liquidity_position_v2_dto import UniswapV2LiquidityPositionV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # LiquidityPositions (historical)
        api_response = api_instance.uniswap_v2_get_liquidity_positions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_positions__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_liquidity_positions__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_liquidity_positions__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) | [**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) | [**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) | [**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) | [**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) | [**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) | [**UniswapV2LiquidityPositionV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_liquidity_positions_snapshots__historical**
<a name="uniswap_v2_get_liquidity_positions_snapshots__historical"></a>
> [UniswapV2LiquidityPositionSnapshotV2DTO] uniswap_v2_get_liquidity_positions_snapshots__historical()

LiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_liquidity_position_snapshot_v2_dto import UniswapV2LiquidityPositionSnapshotV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # LiquidityPositionsSnapshots (historical)
        api_response = api_instance.uniswap_v2_get_liquidity_positions_snapshots__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_positions_snapshots__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_liquidity_positions_snapshots__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_liquidity_positions_snapshots__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) | [**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) | [**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) | [**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) | [**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) | [**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) | [**UniswapV2LiquidityPositionSnapshotV2DTO**]({{complexTypePrefix}}UniswapV2LiquidityPositionSnapshotV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_mints__historical**
<a name="uniswap_v2_get_mints__historical"></a>
> [UniswapV2MintV2DTO] uniswap_v2_get_mints__historical()

Mints (historical)

Gets mints.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_mint_v2_dto import UniswapV2MintV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # Mints (historical)
        api_response = api_instance.uniswap_v2_get_mints__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_mints__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_mints__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_mints__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) | [**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) | [**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) | [**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) | [**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) | [**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) | [**UniswapV2MintV2DTO**]({{complexTypePrefix}}UniswapV2MintV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_pools__current**
<a name="uniswap_v2_get_pools__current"></a>
> [UniswapV2PairV2DTO] uniswap_v2_get_pools__current()

Pools (current) 🔥

Gets pools.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_pair_v2_dto import UniswapV2PairV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # Pools (current) 🔥
        api_response = api_instance.uniswap_v2_get_pools__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_pools__current: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
filter_pool_id | FilterPoolIdSchema | | optional


# FilterPoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_pools__current.ApiResponseFor200) | successful operation

#### uniswap_v2_get_pools__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_pools__historical**
<a name="uniswap_v2_get_pools__historical"></a>
> [UniswapV2PairV2DTO] uniswap_v2_get_pools__historical()

Pools (historical) 🔥

Gets pools.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_pair_v2_dto import UniswapV2PairV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # Pools (historical) 🔥
        api_response = api_instance.uniswap_v2_get_pools__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_pools__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_pools__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_pools__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_pools_day_data__historical**
<a name="uniswap_v2_get_pools_day_data__historical"></a>
> [UniswapV2PairDayDataV2DTO] uniswap_v2_get_pools_day_data__historical()

PoolsDayData (historical)

Gets pools day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_pair_day_data_v2_dto import UniswapV2PairDayDataV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # PoolsDayData (historical)
        api_response = api_instance.uniswap_v2_get_pools_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_pools_day_data__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_pools_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_pools_day_data__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) | [**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) | [**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) | [**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) | [**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) | [**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) | [**UniswapV2PairDayDataV2DTO**]({{complexTypePrefix}}UniswapV2PairDayDataV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_pools_hour_data__historical**
<a name="uniswap_v2_get_pools_hour_data__historical"></a>
> [UniswapV2PairHourDataV2DTO] uniswap_v2_get_pools_hour_data__historical()

PoolsHourData (historical)

Gets pools tracked each our.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_pair_hour_data_v2_dto import UniswapV2PairHourDataV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # PoolsHourData (historical)
        api_response = api_instance.uniswap_v2_get_pools_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_pools_hour_data__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_pools_hour_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_pools_hour_data__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) | [**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) | [**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) | [**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) | [**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) | [**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) | [**UniswapV2PairHourDataV2DTO**]({{complexTypePrefix}}UniswapV2PairHourDataV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_swaps__current**
<a name="uniswap_v2_get_swaps__current"></a>
> [UniswapV2SwapV2DTO] uniswap_v2_get_swaps__current()

Swaps (current) 🔥

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_swap_v2_dto import UniswapV2SwapV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Swaps (current) 🔥
        api_response = api_instance.uniswap_v2_get_swaps__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_swaps__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_swaps__current.ApiResponseFor200) | successful operation

#### uniswap_v2_get_swaps__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_swaps__historical**
<a name="uniswap_v2_get_swaps__historical"></a>
> [UniswapV2SwapV2DTO] uniswap_v2_get_swaps__historical()

Swaps (historical) 🔥

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_swap_v2_dto import UniswapV2SwapV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # Swaps (historical) 🔥
        api_response = api_instance.uniswap_v2_get_swaps__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_swaps__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_swaps__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_swaps__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_tokens__current**
<a name="uniswap_v2_get_tokens__current"></a>
> [UniswapV2TokenV2DTO] uniswap_v2_get_tokens__current()

Tokens (current) 🔥

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_token_v2_dto import UniswapV2TokenV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Tokens (current) 🔥
        api_response = api_instance.uniswap_v2_get_tokens__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_tokens__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_tokens__current.ApiResponseFor200) | successful operation

#### uniswap_v2_get_tokens__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_tokens__historical**
<a name="uniswap_v2_get_tokens__historical"></a>
> [UniswapV2TokenV2DTO] uniswap_v2_get_tokens__historical()

Tokens (historical) 🔥

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_token_v2_dto import UniswapV2TokenV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        # Tokens (historical) 🔥
        api_response = api_instance.uniswap_v2_get_tokens__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_tokens__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
tokenId | TokenIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# TokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_tokens__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_tokens__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_tokens_day_data__historical**
<a name="uniswap_v2_get_tokens_day_data__historical"></a>
> [UniswapV2TokenDayDataV2DTO] uniswap_v2_get_tokens_day_data__historical()

TokensDayData (historical)

Gets tokens day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_token_day_data_v2_dto import UniswapV2TokenDayDataV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        # TokensDayData (historical)
        api_response = api_instance.uniswap_v2_get_tokens_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_tokens_day_data__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
tokenId | TokenIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# TokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_tokens_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_tokens_day_data__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) | [**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) | [**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) | [**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) | [**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) | [**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) | [**UniswapV2TokenDayDataV2DTO**]({{complexTypePrefix}}UniswapV2TokenDayDataV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_transactions__historical**
<a name="uniswap_v2_get_transactions__historical"></a>
> [UniswapV2TransactionV2DTO] uniswap_v2_get_transactions__historical()

Transactions (historical)

Gets transactions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_transaction_v2_dto import UniswapV2TransactionV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # Transactions (historical)
        api_response = api_instance.uniswap_v2_get_transactions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_transactions__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_transactions__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_transactions__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) | [**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) | [**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) | [**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) | [**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) | [**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) | [**UniswapV2TransactionV2DTO**]({{complexTypePrefix}}UniswapV2TransactionV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_users__historical**
<a name="uniswap_v2_get_users__historical"></a>
> [UniswapV2UserV2DTO] uniswap_v2_get_users__historical()

Users (historical)

Gets users.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_user_v2_dto import UniswapV2UserV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # Users (historical)
        api_response = api_instance.uniswap_v2_get_users__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_users__historical: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_users__historical.ApiResponseFor200) | successful operation

#### uniswap_v2_get_users__historical.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) | [**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) | [**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) | [**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) | [**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) | [**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) | [**UniswapV2UserV2DTO**]({{complexTypePrefix}}UniswapV2UserV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

