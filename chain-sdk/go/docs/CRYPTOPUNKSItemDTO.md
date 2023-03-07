# CRYPTOPUNKSItemDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**BlockRange** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewCRYPTOPUNKSItemDTO

`func NewCRYPTOPUNKSItemDTO() *CRYPTOPUNKSItemDTO`

NewCRYPTOPUNKSItemDTO instantiates a new CRYPTOPUNKSItemDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCRYPTOPUNKSItemDTOWithDefaults

`func NewCRYPTOPUNKSItemDTOWithDefaults() *CRYPTOPUNKSItemDTO`

NewCRYPTOPUNKSItemDTOWithDefaults instantiates a new CRYPTOPUNKSItemDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CRYPTOPUNKSItemDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CRYPTOPUNKSItemDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CRYPTOPUNKSItemDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CRYPTOPUNKSItemDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CRYPTOPUNKSItemDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CRYPTOPUNKSItemDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CRYPTOPUNKSItemDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CRYPTOPUNKSItemDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CRYPTOPUNKSItemDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CRYPTOPUNKSItemDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CRYPTOPUNKSItemDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CRYPTOPUNKSItemDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *CRYPTOPUNKSItemDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CRYPTOPUNKSItemDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CRYPTOPUNKSItemDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CRYPTOPUNKSItemDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *CRYPTOPUNKSItemDTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *CRYPTOPUNKSItemDTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *CRYPTOPUNKSItemDTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *CRYPTOPUNKSItemDTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *CRYPTOPUNKSItemDTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *CRYPTOPUNKSItemDTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil
### GetId

`func (o *CRYPTOPUNKSItemDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CRYPTOPUNKSItemDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CRYPTOPUNKSItemDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CRYPTOPUNKSItemDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CRYPTOPUNKSItemDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CRYPTOPUNKSItemDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


