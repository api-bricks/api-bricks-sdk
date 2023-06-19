<a id="__pageTop"></a>
# openapi_client.apis.tags.cryptopunks_api.CRYPTOPUNKSApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**c_ryptopunks_bids__current**](#c_ryptopunks_bids__current) | **get** /dapps/cryptopunks/bids/current | Bids (current)
[**c_ryptopunks_collection_daily_snapshots__current**](#c_ryptopunks_collection_daily_snapshots__current) | **get** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**c_ryptopunks_collections__current**](#c_ryptopunks_collections__current) | **get** /dapps/cryptopunks/collections/current | Collections (current)
[**c_ryptopunks_data_sources__current**](#c_ryptopunks_data_sources__current) | **get** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**c_ryptopunks_get_bids__historical**](#c_ryptopunks_get_bids__historical) | **get** /dapps/cryptopunks/bids/historical | Bids (historical)
[**c_ryptopunks_get_collection_daily_snapshots__historical**](#c_ryptopunks_get_collection_daily_snapshots__historical) | **get** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**c_ryptopunks_get_collections__historical**](#c_ryptopunks_get_collections__historical) | **get** /dapps/cryptopunks/collections/historical | Collections (historical)
[**c_ryptopunks_get_data_sources__historical**](#c_ryptopunks_get_data_sources__historical) | **get** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**c_ryptopunks_get_items__historical**](#c_ryptopunks_get_items__historical) | **get** /dapps/cryptopunks/items/historical | Items (historical)
[**c_ryptopunks_get_market_places__historical**](#c_ryptopunks_get_market_places__historical) | **get** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**c_ryptopunks_get_marketplace_daily_snapshots__historical**](#c_ryptopunks_get_marketplace_daily_snapshots__historical) | **get** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**c_ryptopunks_get_trades__historical**](#c_ryptopunks_get_trades__historical) | **get** /dapps/cryptopunks/trades/historical | Trades (historical)
[**c_ryptopunks_get_users__historical**](#c_ryptopunks_get_users__historical) | **get** /dapps/cryptopunks/users/historical | Users (historical)
[**c_ryptopunks_items__current**](#c_ryptopunks_items__current) | **get** /dapps/cryptopunks/items/current | Items (current)
[**c_ryptopunks_market_places__current**](#c_ryptopunks_market_places__current) | **get** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**c_ryptopunks_marketplace_daily_snapshots__current**](#c_ryptopunks_marketplace_daily_snapshots__current) | **get** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**c_ryptopunks_trades__current**](#c_ryptopunks_trades__current) | **get** /dapps/cryptopunks/trades/current | Trades (current)
[**c_ryptopunks_users__current**](#c_ryptopunks_users__current) | **get** /dapps/cryptopunks/users/current | Users (current)

# **c_ryptopunks_bids__current**
<a id="c_ryptopunks_bids__current"></a>
> [CRYPTOPUNKSBidDTO] c_ryptopunks_bids__current()

Bids (current)

Gets bids.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_bid_dto import CRYPTOPUNKSBidDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Bids (current)
        api_response = api_instance.c_ryptopunks_bids__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_bids__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_bids__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_bids__current.ApiResponseFor200
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
[**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_collection_daily_snapshots__current**
<a id="c_ryptopunks_collection_daily_snapshots__current"></a>
> [CRYPTOPUNKSCollectionDailySnapshotDTO] c_ryptopunks_collection_daily_snapshots__current()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_collection_daily_snapshot_dto import CRYPTOPUNKSCollectionDailySnapshotDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # CollectionDailySnapshots (current)
        api_response = api_instance.c_ryptopunks_collection_daily_snapshots__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_collection_daily_snapshots__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_collection_daily_snapshots__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_collection_daily_snapshots__current.ApiResponseFor200
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
[**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_collections__current**
<a id="c_ryptopunks_collections__current"></a>
> [CRYPTOPUNKSCollectionDTO] c_ryptopunks_collections__current()

Collections (current)

Gets collections.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_collection_dto import CRYPTOPUNKSCollectionDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Collections (current)
        api_response = api_instance.c_ryptopunks_collections__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_collections__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_collections__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_collections__current.ApiResponseFor200
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
[**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_data_sources__current**
<a id="c_ryptopunks_data_sources__current"></a>
> [CRYPTOPUNKSDataSourcesDTO] c_ryptopunks_data_sources__current()

DataSources (current)

Gets dataSources.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_data_sources_dto import CRYPTOPUNKSDataSourcesDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # DataSources (current)
        api_response = api_instance.c_ryptopunks_data_sources__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_data_sources__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_data_sources__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_data_sources__current.ApiResponseFor200
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
[**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_bids__historical**
<a id="c_ryptopunks_get_bids__historical"></a>
> [CRYPTOPUNKSBidDTO] c_ryptopunks_get_bids__historical()

Bids (historical)

Gets bids.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_bid_dto import CRYPTOPUNKSBidDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Bids (historical)
        api_response = api_instance.c_ryptopunks_get_bids__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_bids__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_bids__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_bids__historical.ApiResponseFor200
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
[**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) | [**CRYPTOPUNKSBidDTO**]({{complexTypePrefix}}CRYPTOPUNKSBidDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_collection_daily_snapshots__historical**
<a id="c_ryptopunks_get_collection_daily_snapshots__historical"></a>
> [CRYPTOPUNKSCollectionDailySnapshotDTO] c_ryptopunks_get_collection_daily_snapshots__historical()

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_collection_daily_snapshot_dto import CRYPTOPUNKSCollectionDailySnapshotDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # CollectionDailySnapshots (historical)
        api_response = api_instance.c_ryptopunks_get_collection_daily_snapshots__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_collection_daily_snapshots__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_collection_daily_snapshots__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_collection_daily_snapshots__historical.ApiResponseFor200
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
[**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) | [**CRYPTOPUNKSCollectionDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDailySnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_collections__historical**
<a id="c_ryptopunks_get_collections__historical"></a>
> [CRYPTOPUNKSCollectionDTO] c_ryptopunks_get_collections__historical()

Collections (historical)

Gets collections.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_collection_dto import CRYPTOPUNKSCollectionDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Collections (historical)
        api_response = api_instance.c_ryptopunks_get_collections__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_collections__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_collections__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_collections__historical.ApiResponseFor200
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
[**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) | [**CRYPTOPUNKSCollectionDTO**]({{complexTypePrefix}}CRYPTOPUNKSCollectionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_data_sources__historical**
<a id="c_ryptopunks_get_data_sources__historical"></a>
> [CRYPTOPUNKSDataSourcesDTO] c_ryptopunks_get_data_sources__historical()

DataSources (historical)

Gets dataSources.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_data_sources_dto import CRYPTOPUNKSDataSourcesDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # DataSources (historical)
        api_response = api_instance.c_ryptopunks_get_data_sources__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_data_sources__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_data_sources__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_data_sources__historical.ApiResponseFor200
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
[**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) | [**CRYPTOPUNKSDataSourcesDTO**]({{complexTypePrefix}}CRYPTOPUNKSDataSourcesDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_items__historical**
<a id="c_ryptopunks_get_items__historical"></a>
> [CRYPTOPUNKSItemDTO] c_ryptopunks_get_items__historical()

Items (historical)

Gets items.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_item_dto import CRYPTOPUNKSItemDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # Items (historical)
        api_response = api_instance.c_ryptopunks_get_items__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_items__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_items__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_items__historical.ApiResponseFor200
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
[**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_market_places__historical**
<a id="c_ryptopunks_get_market_places__historical"></a>
> [CRYPTOPUNKSMarketPlaceDTO] c_ryptopunks_get_market_places__historical()

MarketPlaces (historical)

Gets marketPlaces.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_market_place_dto import CRYPTOPUNKSMarketPlaceDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # MarketPlaces (historical)
        api_response = api_instance.c_ryptopunks_get_market_places__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_market_places__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_market_places__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_market_places__historical.ApiResponseFor200
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
[**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_marketplace_daily_snapshots__historical**
<a id="c_ryptopunks_get_marketplace_daily_snapshots__historical"></a>
> [CRYPTOPUNKSMarketplaceDailySnapshotDTO] c_ryptopunks_get_marketplace_daily_snapshots__historical()

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_marketplace_daily_snapshot_dto import CRYPTOPUNKSMarketplaceDailySnapshotDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # MarketplaceDailySnapshots (historical)
        api_response = api_instance.c_ryptopunks_get_marketplace_daily_snapshots__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_marketplace_daily_snapshots__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_marketplace_daily_snapshots__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_marketplace_daily_snapshots__historical.ApiResponseFor200
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
[**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_trades__historical**
<a id="c_ryptopunks_get_trades__historical"></a>
> [CRYPTOPUNKSTradeDTO] c_ryptopunks_get_trades__historical()

Trades (historical)

Gets trades.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_trade_dto import CRYPTOPUNKSTradeDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'id': "id_example",
    }
    try:
        # Trades (historical)
        api_response = api_instance.c_ryptopunks_get_trades__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_trades__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_trades__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_trades__historical.ApiResponseFor200
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
[**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_get_users__historical**
<a id="c_ryptopunks_get_users__historical"></a>
> [CRYPTOPUNKSUserDTO] c_ryptopunks_get_users__historical()

Users (historical)

Gets users.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_user_dto import CRYPTOPUNKSUserDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

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
        api_response = api_instance.c_ryptopunks_get_users__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_get_users__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#c_ryptopunks_get_users__historical.ApiResponseFor200) | successful operation

#### c_ryptopunks_get_users__historical.ApiResponseFor200
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
[**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_items__current**
<a id="c_ryptopunks_items__current"></a>
> [CRYPTOPUNKSItemDTO] c_ryptopunks_items__current()

Items (current)

Gets items.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_item_dto import CRYPTOPUNKSItemDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Items (current)
        api_response = api_instance.c_ryptopunks_items__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_items__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_items__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_items__current.ApiResponseFor200
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
[**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) | [**CRYPTOPUNKSItemDTO**]({{complexTypePrefix}}CRYPTOPUNKSItemDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_market_places__current**
<a id="c_ryptopunks_market_places__current"></a>
> [CRYPTOPUNKSMarketPlaceDTO] c_ryptopunks_market_places__current()

MarketPlaces (current)

Gets marketPlaces.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_market_place_dto import CRYPTOPUNKSMarketPlaceDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # MarketPlaces (current)
        api_response = api_instance.c_ryptopunks_market_places__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_market_places__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_market_places__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_market_places__current.ApiResponseFor200
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
[**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) | [**CRYPTOPUNKSMarketPlaceDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketPlaceDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_marketplace_daily_snapshots__current**
<a id="c_ryptopunks_marketplace_daily_snapshots__current"></a>
> [CRYPTOPUNKSMarketplaceDailySnapshotDTO] c_ryptopunks_marketplace_daily_snapshots__current()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_marketplace_daily_snapshot_dto import CRYPTOPUNKSMarketplaceDailySnapshotDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # MarketplaceDailySnapshots (current)
        api_response = api_instance.c_ryptopunks_marketplace_daily_snapshots__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_marketplace_daily_snapshots__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_marketplace_daily_snapshots__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_marketplace_daily_snapshots__current.ApiResponseFor200
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
[**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) | [**CRYPTOPUNKSMarketplaceDailySnapshotDTO**]({{complexTypePrefix}}CRYPTOPUNKSMarketplaceDailySnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_trades__current**
<a id="c_ryptopunks_trades__current"></a>
> [CRYPTOPUNKSTradeDTO] c_ryptopunks_trades__current()

Trades (current)

Gets trades.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_trade_dto import CRYPTOPUNKSTradeDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Trades (current)
        api_response = api_instance.c_ryptopunks_trades__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_trades__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_trades__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_trades__current.ApiResponseFor200
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
[**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) | [**CRYPTOPUNKSTradeDTO**]({{complexTypePrefix}}CRYPTOPUNKSTradeDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **c_ryptopunks_users__current**
<a id="c_ryptopunks_users__current"></a>
> [CRYPTOPUNKSUserDTO] c_ryptopunks_users__current()

Users (current)

Gets users.

### Example

```python
import openapi_client
from openapi_client.apis.tags import cryptopunks_api
from openapi_client.model.cryptopunks_user_dto import CRYPTOPUNKSUserDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cryptopunks_api.CRYPTOPUNKSApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Users (current)
        api_response = api_instance.c_ryptopunks_users__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CRYPTOPUNKSApi->c_ryptopunks_users__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#c_ryptopunks_users__current.ApiResponseFor200) | successful operation

#### c_ryptopunks_users__current.ApiResponseFor200
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
[**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) | [**CRYPTOPUNKSUserDTO**]({{complexTypePrefix}}CRYPTOPUNKSUserDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

