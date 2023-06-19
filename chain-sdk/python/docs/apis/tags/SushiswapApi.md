<a id="__pageTop"></a>
# openapi_client.apis.tags.sushiswap_api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswap_bundles__current**](#sushiswap_bundles__current) | **get** /dapps/sushiswap/bundles/current | Bundles (current)
[**sushiswap_burns__current**](#sushiswap_burns__current) | **get** /dapps/sushiswap/burns/current | Burns (current)
[**sushiswap_day_data__current**](#sushiswap_day_data__current) | **get** /dapps/sushiswap/dayData/current | DayData (current)
[**sushiswap_factories__current**](#sushiswap_factories__current) | **get** /dapps/sushiswap/factories/current | Factories (current)
[**sushiswap_get_bundles__historical**](#sushiswap_get_bundles__historical) | **get** /dapps/sushiswap/bundles/historical | Bundles (historical)
[**sushiswap_get_burns__historical**](#sushiswap_get_burns__historical) | **get** /dapps/sushiswap/burns/historical | Burns (historical)
[**sushiswap_get_day_data__historical**](#sushiswap_get_day_data__historical) | **get** /dapps/sushiswap/dayData/historical | DayData (historical)
[**sushiswap_get_factories__historical**](#sushiswap_get_factories__historical) | **get** /dapps/sushiswap/factories/historical | Factories (historical)
[**sushiswap_get_hour_data__historical**](#sushiswap_get_hour_data__historical) | **get** /dapps/sushiswap/hourData/historical | HourData (historical)
[**sushiswap_get_liquidity_position_snapshots__historical**](#sushiswap_get_liquidity_position_snapshots__historical) | **get** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical)
[**sushiswap_get_liquidity_positions__historical**](#sushiswap_get_liquidity_positions__historical) | **get** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical)
[**sushiswap_get_mints__historical**](#sushiswap_get_mints__historical) | **get** /dapps/sushiswap/mints/historical | Mints (historical)
[**sushiswap_get_pair_day_data__historical**](#sushiswap_get_pair_day_data__historical) | **get** /dapps/sushiswap/pairDayData/historical | PairDayData (historical)
[**sushiswap_get_pair_hour_data__historical**](#sushiswap_get_pair_hour_data__historical) | **get** /dapps/sushiswap/pairHourData/historical | PairHourData (historical)
[**sushiswap_get_pairs__historical**](#sushiswap_get_pairs__historical) | **get** /dapps/sushiswap/pairs/historical | Pairs (historical)
[**sushiswap_get_swaps__historical**](#sushiswap_get_swaps__historical) | **get** /dapps/sushiswap/swaps/historical | Swaps (historical)
[**sushiswap_get_token_day_data__historical**](#sushiswap_get_token_day_data__historical) | **get** /dapps/sushiswap/tokenDayData/historical | TokenDayData (historical)
[**sushiswap_get_tokens__historical**](#sushiswap_get_tokens__historical) | **get** /dapps/sushiswap/tokens/historical | Tokens (historical)
[**sushiswap_get_transactions__historical**](#sushiswap_get_transactions__historical) | **get** /dapps/sushiswap/transactions/historical | Transactions (historical)
[**sushiswap_get_users__historical**](#sushiswap_get_users__historical) | **get** /dapps/sushiswap/users/historical | Users (historical)
[**sushiswap_hour_data__current**](#sushiswap_hour_data__current) | **get** /dapps/sushiswap/hourData/current | HourData (current)
[**sushiswap_liquidity_position_snapshots__current**](#sushiswap_liquidity_position_snapshots__current) | **get** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
[**sushiswap_liquidity_positions__current**](#sushiswap_liquidity_positions__current) | **get** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current)
[**sushiswap_mints__current**](#sushiswap_mints__current) | **get** /dapps/sushiswap/mints/current | Mints (current)
[**sushiswap_pair_day_data__current**](#sushiswap_pair_day_data__current) | **get** /dapps/sushiswap/pairDayData/current | PairDayData (current)
[**sushiswap_pair_hour_data__current**](#sushiswap_pair_hour_data__current) | **get** /dapps/sushiswap/pairHourData/current | PairHourData (current)
[**sushiswap_pairs__current**](#sushiswap_pairs__current) | **get** /dapps/sushiswap/pairs/current | Pairs (current)
[**sushiswap_swaps__current**](#sushiswap_swaps__current) | **get** /dapps/sushiswap/swaps/current | Swaps (current)
[**sushiswap_token_day_data__current**](#sushiswap_token_day_data__current) | **get** /dapps/sushiswap/tokenDayData/current | TokenDayData (current)
[**sushiswap_tokens__current**](#sushiswap_tokens__current) | **get** /dapps/sushiswap/tokens/current | Tokens (current)
[**sushiswap_transactions__current**](#sushiswap_transactions__current) | **get** /dapps/sushiswap/transactions/current | Transactions (current)
[**sushiswap_users__current**](#sushiswap_users__current) | **get** /dapps/sushiswap/users/current | Users (current)

# **sushiswap_bundles__current**
<a id="sushiswap_bundles__current"></a>
> [SushiswapBundleDTO] sushiswap_bundles__current()

Bundles (current)

Gets bundles.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_bundle_dto import SushiswapBundleDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Bundles (current)
        api_response = api_instance.sushiswap_bundles__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_bundles__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_bundles__current.ApiResponseFor200) | successful operation

#### sushiswap_bundles__current.ApiResponseFor200
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
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_burns__current**
<a id="sushiswap_burns__current"></a>
> [SushiswapBurnDTO] sushiswap_burns__current()

Burns (current)

Gets burns.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_burn_dto import SushiswapBurnDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Burns (current)
        api_response = api_instance.sushiswap_burns__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_burns__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_burns__current.ApiResponseFor200) | successful operation

#### sushiswap_burns__current.ApiResponseFor200
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
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_day_data__current**
<a id="sushiswap_day_data__current"></a>
> [SushiswapDayDataDTO] sushiswap_day_data__current()

DayData (current)

Gets dayData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_day_data_dto import SushiswapDayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # DayData (current)
        api_response = api_instance.sushiswap_day_data__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_day_data__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_day_data__current.ApiResponseFor200) | successful operation

#### sushiswap_day_data__current.ApiResponseFor200
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
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_factories__current**
<a id="sushiswap_factories__current"></a>
> [SushiswapFactoryDTO] sushiswap_factories__current()

Factories (current)

Gets factories.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_factory_dto import SushiswapFactoryDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Factories (current)
        api_response = api_instance.sushiswap_factories__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_factories__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_factories__current.ApiResponseFor200) | successful operation

#### sushiswap_factories__current.ApiResponseFor200
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
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_bundles__historical**
<a id="sushiswap_get_bundles__historical"></a>
> [SushiswapBundleDTO] sushiswap_get_bundles__historical()

Bundles (historical)

Gets bundles.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_bundle_dto import SushiswapBundleDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Bundles (historical)
        api_response = api_instance.sushiswap_get_bundles__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_bundles__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_bundles__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_bundles__historical.ApiResponseFor200
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
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_burns__historical**
<a id="sushiswap_get_burns__historical"></a>
> [SushiswapBurnDTO] sushiswap_get_burns__historical()

Burns (historical)

Gets burns.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_burn_dto import SushiswapBurnDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'pair': "pair_example",
    }
    try:
        # Burns (historical)
        api_response = api_instance.sushiswap_get_burns__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_burns__historical: %s\n" % e)
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
id | IdSchema | | optional
pair | PairSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_burns__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_burns__historical.ApiResponseFor200
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
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_day_data__historical**
<a id="sushiswap_get_day_data__historical"></a>
> [SushiswapDayDataDTO] sushiswap_get_day_data__historical()

DayData (historical)

Gets dayData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_day_data_dto import SushiswapDayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # DayData (historical)
        api_response = api_instance.sushiswap_get_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_day_data__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_day_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_day_data__historical.ApiResponseFor200
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
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_factories__historical**
<a id="sushiswap_get_factories__historical"></a>
> [SushiswapFactoryDTO] sushiswap_get_factories__historical()

Factories (historical)

Gets factories.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_factory_dto import SushiswapFactoryDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Factories (historical)
        api_response = api_instance.sushiswap_get_factories__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_factories__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_factories__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_factories__historical.ApiResponseFor200
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
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_hour_data__historical**
<a id="sushiswap_get_hour_data__historical"></a>
> [SushiswapHourDataDTO] sushiswap_get_hour_data__historical()

HourData (historical)

Gets hourData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_hour_data_dto import SushiswapHourDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # HourData (historical)
        api_response = api_instance.sushiswap_get_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_hour_data__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_hour_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_hour_data__historical.ApiResponseFor200
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
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_liquidity_position_snapshots__historical**
<a id="sushiswap_get_liquidity_position_snapshots__historical"></a>
> [SushiswapLiquidityPositionSnapshotDTO] sushiswap_get_liquidity_position_snapshots__historical()

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_liquidity_position_snapshot_dto import SushiswapLiquidityPositionSnapshotDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'user': "user_example",
        'pair': "pair_example",
    }
    try:
        # LiquidityPositionSnapshots (historical)
        api_response = api_instance.sushiswap_get_liquidity_position_snapshots__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_liquidity_position_snapshots__historical: %s\n" % e)
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
id | IdSchema | | optional
user | UserSchema | | optional
pair | PairSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# UserSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_liquidity_position_snapshots__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_liquidity_position_snapshots__historical.ApiResponseFor200
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
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_liquidity_positions__historical**
<a id="sushiswap_get_liquidity_positions__historical"></a>
> [SushiswapLiquidityPositionDTO] sushiswap_get_liquidity_positions__historical()

LiquidityPositions (historical)

Gets liquidityPositions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_liquidity_position_dto import SushiswapLiquidityPositionDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'user': "user_example",
        'pair': "pair_example",
    }
    try:
        # LiquidityPositions (historical)
        api_response = api_instance.sushiswap_get_liquidity_positions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_liquidity_positions__historical: %s\n" % e)
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
id | IdSchema | | optional
user | UserSchema | | optional
pair | PairSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# UserSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_liquidity_positions__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_liquidity_positions__historical.ApiResponseFor200
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
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_mints__historical**
<a id="sushiswap_get_mints__historical"></a>
> [SushiswapMintDTO] sushiswap_get_mints__historical()

Mints (historical)

Gets mints.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_mint_dto import SushiswapMintDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'pair': "pair_example",
    }
    try:
        # Mints (historical)
        api_response = api_instance.sushiswap_get_mints__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_mints__historical: %s\n" % e)
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
id | IdSchema | | optional
pair | PairSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_mints__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_mints__historical.ApiResponseFor200
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
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_pair_day_data__historical**
<a id="sushiswap_get_pair_day_data__historical"></a>
> [SushiswapPairDayDataDTO] sushiswap_get_pair_day_data__historical()

PairDayData (historical)

Gets pairDayData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_day_data_dto import SushiswapPairDayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'pair': "pair_example",
        'token_0': "token_0_example",
        'token_1': "token_1_example",
    }
    try:
        # PairDayData (historical)
        api_response = api_instance.sushiswap_get_pair_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pair_day_data__historical: %s\n" % e)
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
id | IdSchema | | optional
pair | PairSchema | | optional
token_0 | Token0Schema | | optional
token_1 | Token1Schema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# Token0Schema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# Token1Schema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pair_day_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_pair_day_data__historical.ApiResponseFor200
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
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_pair_hour_data__historical**
<a id="sushiswap_get_pair_hour_data__historical"></a>
> [SushiswapPairHourDataDTO] sushiswap_get_pair_hour_data__historical()

PairHourData (historical)

Gets pairHourData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_hour_data_dto import SushiswapPairHourDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'pair': "pair_example",
    }
    try:
        # PairHourData (historical)
        api_response = api_instance.sushiswap_get_pair_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pair_hour_data__historical: %s\n" % e)
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
id | IdSchema | | optional
pair | PairSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pair_hour_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_pair_hour_data__historical.ApiResponseFor200
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
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_pairs__historical**
<a id="sushiswap_get_pairs__historical"></a>
> [SushiswapPairDTO] sushiswap_get_pairs__historical()

Pairs (historical)

Gets pairs.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_dto import SushiswapPairDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'name': "name_example",
        'token_0': "token_0_example",
        'token_1': "token_1_example",
    }
    try:
        # Pairs (historical)
        api_response = api_instance.sushiswap_get_pairs__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pairs__historical: %s\n" % e)
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
id | IdSchema | | optional
name | NameSchema | | optional
token_0 | Token0Schema | | optional
token_1 | Token1Schema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# NameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# Token0Schema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# Token1Schema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pairs__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_pairs__historical.ApiResponseFor200
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
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_swaps__historical**
<a id="sushiswap_get_swaps__historical"></a>
> [SushiswapSwapDTO] sushiswap_get_swaps__historical()

Swaps (historical)

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_swap_dto import SushiswapSwapDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'pair': "pair_example",
    }
    try:
        # Swaps (historical)
        api_response = api_instance.sushiswap_get_swaps__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_swaps__historical: %s\n" % e)
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
id | IdSchema | | optional
pair | PairSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_swaps__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_swaps__historical.ApiResponseFor200
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
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_token_day_data__historical**
<a id="sushiswap_get_token_day_data__historical"></a>
> [SushiswapTokenDayDataDTO] sushiswap_get_token_day_data__historical()

TokenDayData (historical)

Gets tokenDayData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_token_day_data_dto import SushiswapTokenDayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # TokenDayData (historical)
        api_response = api_instance.sushiswap_get_token_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_token_day_data__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_token_day_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_token_day_data__historical.ApiResponseFor200
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
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_tokens__historical**
<a id="sushiswap_get_tokens__historical"></a>
> [SushiswapTokenDTO] sushiswap_get_tokens__historical()

Tokens (historical)

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_token_dto import SushiswapTokenDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
        'symbol': "symbol_example",
        'name': "name_example",
    }
    try:
        # Tokens (historical)
        api_response = api_instance.sushiswap_get_tokens__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_tokens__historical: %s\n" % e)
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
id | IdSchema | | optional
symbol | SymbolSchema | | optional
name | NameSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# SymbolSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# NameSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_tokens__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_tokens__historical.ApiResponseFor200
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
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_transactions__historical**
<a id="sushiswap_get_transactions__historical"></a>
> [SushiswapTransactionDTO] sushiswap_get_transactions__historical()

Transactions (historical)

Gets transactions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_transaction_dto import SushiswapTransactionDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Transactions (historical)
        api_response = api_instance.sushiswap_get_transactions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_transactions__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_transactions__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_transactions__historical.ApiResponseFor200
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
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_users__historical**
<a id="sushiswap_get_users__historical"></a>
> [SushiswapUserDTO] sushiswap_get_users__historical()

Users (historical)

Gets users.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_user_dto import SushiswapUserDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Users (historical)
        api_response = api_instance.sushiswap_get_users__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_users__historical: %s\n" % e)
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
id | IdSchema | | optional


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

# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_users__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_users__historical.ApiResponseFor200
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
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_hour_data__current**
<a id="sushiswap_hour_data__current"></a>
> [SushiswapHourDataDTO] sushiswap_hour_data__current()

HourData (current)

Gets hourData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_hour_data_dto import SushiswapHourDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # HourData (current)
        api_response = api_instance.sushiswap_hour_data__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_hour_data__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_hour_data__current.ApiResponseFor200) | successful operation

#### sushiswap_hour_data__current.ApiResponseFor200
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
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_liquidity_position_snapshots__current**
<a id="sushiswap_liquidity_position_snapshots__current"></a>
> [SushiswapLiquidityPositionSnapshotDTO] sushiswap_liquidity_position_snapshots__current()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_liquidity_position_snapshot_dto import SushiswapLiquidityPositionSnapshotDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # LiquidityPositionSnapshots (current)
        api_response = api_instance.sushiswap_liquidity_position_snapshots__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_liquidity_position_snapshots__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_liquidity_position_snapshots__current.ApiResponseFor200) | successful operation

#### sushiswap_liquidity_position_snapshots__current.ApiResponseFor200
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
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_liquidity_positions__current**
<a id="sushiswap_liquidity_positions__current"></a>
> [SushiswapLiquidityPositionDTO] sushiswap_liquidity_positions__current()

LiquidityPositions (current)

Gets liquidityPositions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_liquidity_position_dto import SushiswapLiquidityPositionDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # LiquidityPositions (current)
        api_response = api_instance.sushiswap_liquidity_positions__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_liquidity_positions__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_liquidity_positions__current.ApiResponseFor200) | successful operation

#### sushiswap_liquidity_positions__current.ApiResponseFor200
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
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_mints__current**
<a id="sushiswap_mints__current"></a>
> [SushiswapMintDTO] sushiswap_mints__current()

Mints (current)

Gets mints.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_mint_dto import SushiswapMintDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Mints (current)
        api_response = api_instance.sushiswap_mints__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_mints__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_mints__current.ApiResponseFor200) | successful operation

#### sushiswap_mints__current.ApiResponseFor200
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
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_pair_day_data__current**
<a id="sushiswap_pair_day_data__current"></a>
> [SushiswapPairDayDataDTO] sushiswap_pair_day_data__current()

PairDayData (current)

Gets pairDayData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_day_data_dto import SushiswapPairDayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # PairDayData (current)
        api_response = api_instance.sushiswap_pair_day_data__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_pair_day_data__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_pair_day_data__current.ApiResponseFor200) | successful operation

#### sushiswap_pair_day_data__current.ApiResponseFor200
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
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_pair_hour_data__current**
<a id="sushiswap_pair_hour_data__current"></a>
> [SushiswapPairHourDataDTO] sushiswap_pair_hour_data__current()

PairHourData (current)

Gets pairHourData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_hour_data_dto import SushiswapPairHourDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # PairHourData (current)
        api_response = api_instance.sushiswap_pair_hour_data__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_pair_hour_data__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_pair_hour_data__current.ApiResponseFor200) | successful operation

#### sushiswap_pair_hour_data__current.ApiResponseFor200
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
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_pairs__current**
<a id="sushiswap_pairs__current"></a>
> [SushiswapPairDTO] sushiswap_pairs__current()

Pairs (current)

Gets pairs.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_dto import SushiswapPairDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'id': "id_example",
    }
    try:
        # Pairs (current)
        api_response = api_instance.sushiswap_pairs__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_pairs__current: %s\n" % e)
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
id | IdSchema | | optional


# IdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_pairs__current.ApiResponseFor200) | successful operation

#### sushiswap_pairs__current.ApiResponseFor200
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
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_swaps__current**
<a id="sushiswap_swaps__current"></a>
> [SushiswapSwapDTO] sushiswap_swaps__current()

Swaps (current)

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_swap_dto import SushiswapSwapDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example passing only optional values
    query_params = {
        'pair': "pair_example",
    }
    try:
        # Swaps (current)
        api_response = api_instance.sushiswap_swaps__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_swaps__current: %s\n" % e)
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
pair | PairSchema | | optional


# PairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_swaps__current.ApiResponseFor200) | successful operation

#### sushiswap_swaps__current.ApiResponseFor200
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
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_token_day_data__current**
<a id="sushiswap_token_day_data__current"></a>
> [SushiswapTokenDayDataDTO] sushiswap_token_day_data__current()

TokenDayData (current)

Gets tokenDayData.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_token_day_data_dto import SushiswapTokenDayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # TokenDayData (current)
        api_response = api_instance.sushiswap_token_day_data__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_token_day_data__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_token_day_data__current.ApiResponseFor200) | successful operation

#### sushiswap_token_day_data__current.ApiResponseFor200
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
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_tokens__current**
<a id="sushiswap_tokens__current"></a>
> [SushiswapTokenDTO] sushiswap_tokens__current()

Tokens (current)

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_token_dto import SushiswapTokenDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Tokens (current)
        api_response = api_instance.sushiswap_tokens__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_tokens__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_tokens__current.ApiResponseFor200) | successful operation

#### sushiswap_tokens__current.ApiResponseFor200
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
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_transactions__current**
<a id="sushiswap_transactions__current"></a>
> [SushiswapTransactionDTO] sushiswap_transactions__current()

Transactions (current)

Gets transactions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_transaction_dto import SushiswapTransactionDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Transactions (current)
        api_response = api_instance.sushiswap_transactions__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_transactions__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_transactions__current.ApiResponseFor200) | successful operation

#### sushiswap_transactions__current.ApiResponseFor200
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
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_users__current**
<a id="sushiswap_users__current"></a>
> [SushiswapUserDTO] sushiswap_users__current()

Users (current)

Gets users.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_user_dto import SushiswapUserDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Users (current)
        api_response = api_instance.sushiswap_users__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_users__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_users__current.ApiResponseFor200) | successful operation

#### sushiswap_users__current.ApiResponseFor200
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
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

