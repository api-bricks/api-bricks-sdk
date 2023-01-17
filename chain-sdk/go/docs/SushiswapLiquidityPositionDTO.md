# SushiswapLiquidityPositionDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pair address)-(user address) | [optional] 
**User** | Pointer to **NullableString** | User address. | [optional] 
**Pair** | Pointer to **NullableString** | Pair address. | [optional] 
**LiquidityTokenBalance** | Pointer to **NullableString** | Amount of LP tokens minted for this position. | [optional] 
**Block** | Pointer to **int32** | Block number at which position was created. | [optional] 
**Timestamp** | Pointer to **int32** | Creation time. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewSushiswapLiquidityPositionDTO

`func NewSushiswapLiquidityPositionDTO() *SushiswapLiquidityPositionDTO`

NewSushiswapLiquidityPositionDTO instantiates a new SushiswapLiquidityPositionDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapLiquidityPositionDTOWithDefaults

`func NewSushiswapLiquidityPositionDTOWithDefaults() *SushiswapLiquidityPositionDTO`

NewSushiswapLiquidityPositionDTOWithDefaults instantiates a new SushiswapLiquidityPositionDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapLiquidityPositionDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapLiquidityPositionDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapLiquidityPositionDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapLiquidityPositionDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapLiquidityPositionDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapLiquidityPositionDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapLiquidityPositionDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapLiquidityPositionDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapLiquidityPositionDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapLiquidityPositionDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapLiquidityPositionDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapLiquidityPositionDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapLiquidityPositionDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapLiquidityPositionDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapLiquidityPositionDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapLiquidityPositionDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapLiquidityPositionDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapLiquidityPositionDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetUser

`func (o *SushiswapLiquidityPositionDTO) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *SushiswapLiquidityPositionDTO) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *SushiswapLiquidityPositionDTO) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *SushiswapLiquidityPositionDTO) HasUser() bool`

HasUser returns a boolean if a field has been set.

### SetUserNil

`func (o *SushiswapLiquidityPositionDTO) SetUserNil(b bool)`

 SetUserNil sets the value for User to be an explicit nil

### UnsetUser
`func (o *SushiswapLiquidityPositionDTO) UnsetUser()`

UnsetUser ensures that no value is present for User, not even an explicit nil
### GetPair

`func (o *SushiswapLiquidityPositionDTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SushiswapLiquidityPositionDTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SushiswapLiquidityPositionDTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SushiswapLiquidityPositionDTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SushiswapLiquidityPositionDTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SushiswapLiquidityPositionDTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetLiquidityTokenBalance

`func (o *SushiswapLiquidityPositionDTO) GetLiquidityTokenBalance() string`

GetLiquidityTokenBalance returns the LiquidityTokenBalance field if non-nil, zero value otherwise.

### GetLiquidityTokenBalanceOk

`func (o *SushiswapLiquidityPositionDTO) GetLiquidityTokenBalanceOk() (*string, bool)`

GetLiquidityTokenBalanceOk returns a tuple with the LiquidityTokenBalance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityTokenBalance

`func (o *SushiswapLiquidityPositionDTO) SetLiquidityTokenBalance(v string)`

SetLiquidityTokenBalance sets LiquidityTokenBalance field to given value.

### HasLiquidityTokenBalance

`func (o *SushiswapLiquidityPositionDTO) HasLiquidityTokenBalance() bool`

HasLiquidityTokenBalance returns a boolean if a field has been set.

### SetLiquidityTokenBalanceNil

`func (o *SushiswapLiquidityPositionDTO) SetLiquidityTokenBalanceNil(b bool)`

 SetLiquidityTokenBalanceNil sets the value for LiquidityTokenBalance to be an explicit nil

### UnsetLiquidityTokenBalance
`func (o *SushiswapLiquidityPositionDTO) UnsetLiquidityTokenBalance()`

UnsetLiquidityTokenBalance ensures that no value is present for LiquidityTokenBalance, not even an explicit nil
### GetBlock

`func (o *SushiswapLiquidityPositionDTO) GetBlock() int32`

GetBlock returns the Block field if non-nil, zero value otherwise.

### GetBlockOk

`func (o *SushiswapLiquidityPositionDTO) GetBlockOk() (*int32, bool)`

GetBlockOk returns a tuple with the Block field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlock

`func (o *SushiswapLiquidityPositionDTO) SetBlock(v int32)`

SetBlock sets Block field to given value.

### HasBlock

`func (o *SushiswapLiquidityPositionDTO) HasBlock() bool`

HasBlock returns a boolean if a field has been set.

### GetTimestamp

`func (o *SushiswapLiquidityPositionDTO) GetTimestamp() int32`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SushiswapLiquidityPositionDTO) GetTimestampOk() (*int32, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SushiswapLiquidityPositionDTO) SetTimestamp(v int32)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SushiswapLiquidityPositionDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetVid

`func (o *SushiswapLiquidityPositionDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapLiquidityPositionDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapLiquidityPositionDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapLiquidityPositionDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


