# CRYPTOPUNKSDataSourcesDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int32** |  | [optional] 
**BlockRange** | Pointer to **NullableString** |  | [optional] 
**CausalityRegion** | Pointer to **int32** |  | [optional] 
**ManifestIdx** | Pointer to **int32** |  | [optional] 
**Parent** | Pointer to **NullableInt32** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**Param** | Pointer to **NullableString** |  | [optional] 
**Context** | Pointer to **NullableString** |  | [optional] 
**DoneAt** | Pointer to **NullableInt32** |  | [optional] 

## Methods

### NewCRYPTOPUNKSDataSourcesDTO

`func NewCRYPTOPUNKSDataSourcesDTO() *CRYPTOPUNKSDataSourcesDTO`

NewCRYPTOPUNKSDataSourcesDTO instantiates a new CRYPTOPUNKSDataSourcesDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCRYPTOPUNKSDataSourcesDTOWithDefaults

`func NewCRYPTOPUNKSDataSourcesDTOWithDefaults() *CRYPTOPUNKSDataSourcesDTO`

NewCRYPTOPUNKSDataSourcesDTOWithDefaults instantiates a new CRYPTOPUNKSDataSourcesDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CRYPTOPUNKSDataSourcesDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CRYPTOPUNKSDataSourcesDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CRYPTOPUNKSDataSourcesDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CRYPTOPUNKSDataSourcesDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CRYPTOPUNKSDataSourcesDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CRYPTOPUNKSDataSourcesDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CRYPTOPUNKSDataSourcesDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CRYPTOPUNKSDataSourcesDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CRYPTOPUNKSDataSourcesDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *CRYPTOPUNKSDataSourcesDTO) GetVid() int32`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetVidOk() (*int32, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CRYPTOPUNKSDataSourcesDTO) SetVid(v int32)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CRYPTOPUNKSDataSourcesDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *CRYPTOPUNKSDataSourcesDTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *CRYPTOPUNKSDataSourcesDTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *CRYPTOPUNKSDataSourcesDTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *CRYPTOPUNKSDataSourcesDTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *CRYPTOPUNKSDataSourcesDTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil
### GetCausalityRegion

`func (o *CRYPTOPUNKSDataSourcesDTO) GetCausalityRegion() int32`

GetCausalityRegion returns the CausalityRegion field if non-nil, zero value otherwise.

### GetCausalityRegionOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetCausalityRegionOk() (*int32, bool)`

GetCausalityRegionOk returns a tuple with the CausalityRegion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCausalityRegion

`func (o *CRYPTOPUNKSDataSourcesDTO) SetCausalityRegion(v int32)`

SetCausalityRegion sets CausalityRegion field to given value.

### HasCausalityRegion

`func (o *CRYPTOPUNKSDataSourcesDTO) HasCausalityRegion() bool`

HasCausalityRegion returns a boolean if a field has been set.

### GetManifestIdx

`func (o *CRYPTOPUNKSDataSourcesDTO) GetManifestIdx() int32`

GetManifestIdx returns the ManifestIdx field if non-nil, zero value otherwise.

### GetManifestIdxOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetManifestIdxOk() (*int32, bool)`

GetManifestIdxOk returns a tuple with the ManifestIdx field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetManifestIdx

`func (o *CRYPTOPUNKSDataSourcesDTO) SetManifestIdx(v int32)`

SetManifestIdx sets ManifestIdx field to given value.

### HasManifestIdx

`func (o *CRYPTOPUNKSDataSourcesDTO) HasManifestIdx() bool`

HasManifestIdx returns a boolean if a field has been set.

### GetParent

`func (o *CRYPTOPUNKSDataSourcesDTO) GetParent() int32`

GetParent returns the Parent field if non-nil, zero value otherwise.

### GetParentOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetParentOk() (*int32, bool)`

GetParentOk returns a tuple with the Parent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParent

`func (o *CRYPTOPUNKSDataSourcesDTO) SetParent(v int32)`

SetParent sets Parent field to given value.

### HasParent

`func (o *CRYPTOPUNKSDataSourcesDTO) HasParent() bool`

HasParent returns a boolean if a field has been set.

### SetParentNil

`func (o *CRYPTOPUNKSDataSourcesDTO) SetParentNil(b bool)`

 SetParentNil sets the value for Parent to be an explicit nil

### UnsetParent
`func (o *CRYPTOPUNKSDataSourcesDTO) UnsetParent()`

UnsetParent ensures that no value is present for Parent, not even an explicit nil
### GetId

`func (o *CRYPTOPUNKSDataSourcesDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CRYPTOPUNKSDataSourcesDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CRYPTOPUNKSDataSourcesDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CRYPTOPUNKSDataSourcesDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CRYPTOPUNKSDataSourcesDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetParam

`func (o *CRYPTOPUNKSDataSourcesDTO) GetParam() string`

GetParam returns the Param field if non-nil, zero value otherwise.

### GetParamOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetParamOk() (*string, bool)`

GetParamOk returns a tuple with the Param field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParam

`func (o *CRYPTOPUNKSDataSourcesDTO) SetParam(v string)`

SetParam sets Param field to given value.

### HasParam

`func (o *CRYPTOPUNKSDataSourcesDTO) HasParam() bool`

HasParam returns a boolean if a field has been set.

### SetParamNil

`func (o *CRYPTOPUNKSDataSourcesDTO) SetParamNil(b bool)`

 SetParamNil sets the value for Param to be an explicit nil

### UnsetParam
`func (o *CRYPTOPUNKSDataSourcesDTO) UnsetParam()`

UnsetParam ensures that no value is present for Param, not even an explicit nil
### GetContext

`func (o *CRYPTOPUNKSDataSourcesDTO) GetContext() string`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetContextOk() (*string, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *CRYPTOPUNKSDataSourcesDTO) SetContext(v string)`

SetContext sets Context field to given value.

### HasContext

`func (o *CRYPTOPUNKSDataSourcesDTO) HasContext() bool`

HasContext returns a boolean if a field has been set.

### SetContextNil

`func (o *CRYPTOPUNKSDataSourcesDTO) SetContextNil(b bool)`

 SetContextNil sets the value for Context to be an explicit nil

### UnsetContext
`func (o *CRYPTOPUNKSDataSourcesDTO) UnsetContext()`

UnsetContext ensures that no value is present for Context, not even an explicit nil
### GetDoneAt

`func (o *CRYPTOPUNKSDataSourcesDTO) GetDoneAt() int32`

GetDoneAt returns the DoneAt field if non-nil, zero value otherwise.

### GetDoneAtOk

`func (o *CRYPTOPUNKSDataSourcesDTO) GetDoneAtOk() (*int32, bool)`

GetDoneAtOk returns a tuple with the DoneAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDoneAt

`func (o *CRYPTOPUNKSDataSourcesDTO) SetDoneAt(v int32)`

SetDoneAt sets DoneAt field to given value.

### HasDoneAt

`func (o *CRYPTOPUNKSDataSourcesDTO) HasDoneAt() bool`

HasDoneAt returns a boolean if a field has been set.

### SetDoneAtNil

`func (o *CRYPTOPUNKSDataSourcesDTO) SetDoneAtNil(b bool)`

 SetDoneAtNil sets the value for DoneAt to be an explicit nil

### UnsetDoneAt
`func (o *CRYPTOPUNKSDataSourcesDTO) UnsetDoneAt()`

UnsetDoneAt ensures that no value is present for DoneAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


