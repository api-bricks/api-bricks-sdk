# SushiswapPairHourDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**Date** | Pointer to **int32** | Hour start timestamp. | [optional] 
**Pair** | Pointer to **NullableString** | Reference to pair. | [optional] 
**Reserve0** | Pointer to **NullableString** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | Pointer to **NullableString** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**ReserveUsd** | Pointer to **NullableString** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Total amount of token0 swapped throughout hour. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Total amount of token1 swapped throughout hour. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Total volume within pair throughout hour. | [optional] 
**TxCount** | Pointer to **NullableString** | Amount of transactions on pair throughout hour. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewSushiswapPairHourDataDTO

`func NewSushiswapPairHourDataDTO() *SushiswapPairHourDataDTO`

NewSushiswapPairHourDataDTO instantiates a new SushiswapPairHourDataDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapPairHourDataDTOWithDefaults

`func NewSushiswapPairHourDataDTOWithDefaults() *SushiswapPairHourDataDTO`

NewSushiswapPairHourDataDTOWithDefaults instantiates a new SushiswapPairHourDataDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapPairHourDataDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapPairHourDataDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapPairHourDataDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapPairHourDataDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapPairHourDataDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapPairHourDataDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapPairHourDataDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapPairHourDataDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapPairHourDataDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapPairHourDataDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapPairHourDataDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapPairHourDataDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapPairHourDataDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapPairHourDataDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapPairHourDataDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapPairHourDataDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapPairHourDataDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapPairHourDataDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *SushiswapPairHourDataDTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *SushiswapPairHourDataDTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *SushiswapPairHourDataDTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *SushiswapPairHourDataDTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetPair

`func (o *SushiswapPairHourDataDTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SushiswapPairHourDataDTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SushiswapPairHourDataDTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SushiswapPairHourDataDTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SushiswapPairHourDataDTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SushiswapPairHourDataDTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetReserve0

`func (o *SushiswapPairHourDataDTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *SushiswapPairHourDataDTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *SushiswapPairHourDataDTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *SushiswapPairHourDataDTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *SushiswapPairHourDataDTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *SushiswapPairHourDataDTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *SushiswapPairHourDataDTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *SushiswapPairHourDataDTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *SushiswapPairHourDataDTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *SushiswapPairHourDataDTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *SushiswapPairHourDataDTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *SushiswapPairHourDataDTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetReserveUsd

`func (o *SushiswapPairHourDataDTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *SushiswapPairHourDataDTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *SushiswapPairHourDataDTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *SushiswapPairHourDataDTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *SushiswapPairHourDataDTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *SushiswapPairHourDataDTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetVolumeToken0

`func (o *SushiswapPairHourDataDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *SushiswapPairHourDataDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *SushiswapPairHourDataDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *SushiswapPairHourDataDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *SushiswapPairHourDataDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *SushiswapPairHourDataDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *SushiswapPairHourDataDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *SushiswapPairHourDataDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *SushiswapPairHourDataDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *SushiswapPairHourDataDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *SushiswapPairHourDataDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *SushiswapPairHourDataDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *SushiswapPairHourDataDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *SushiswapPairHourDataDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *SushiswapPairHourDataDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *SushiswapPairHourDataDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *SushiswapPairHourDataDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *SushiswapPairHourDataDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetTxCount

`func (o *SushiswapPairHourDataDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *SushiswapPairHourDataDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *SushiswapPairHourDataDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *SushiswapPairHourDataDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *SushiswapPairHourDataDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *SushiswapPairHourDataDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetVid

`func (o *SushiswapPairHourDataDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapPairHourDataDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapPairHourDataDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapPairHourDataDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


