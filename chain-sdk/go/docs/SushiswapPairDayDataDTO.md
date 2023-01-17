# SushiswapPairDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pair id)-(day start timestamp). | [optional] 
**Date** | Pointer to **int32** | Unix timestamp for start of day. | [optional] 
**Pair** | Pointer to **NullableString** | Reference to pair. | [optional] 
**Token0** | Pointer to **NullableString** | Reference to token0. | [optional] 
**Token1** | Pointer to **NullableString** | Reference to token1. | [optional] 
**Reserve0** | Pointer to **NullableString** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | Pointer to **NullableString** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**TotalSupply** | Pointer to **NullableString** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveUsd** | Pointer to **NullableString** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Total amount of token0 swapped throughout day. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Total amount of token1 swapped throughout day. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Total volume within pair throughout day. | [optional] 
**TxCount** | Pointer to **NullableString** | Amount of transactions on pair throughout day. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewSushiswapPairDayDataDTO

`func NewSushiswapPairDayDataDTO() *SushiswapPairDayDataDTO`

NewSushiswapPairDayDataDTO instantiates a new SushiswapPairDayDataDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapPairDayDataDTOWithDefaults

`func NewSushiswapPairDayDataDTOWithDefaults() *SushiswapPairDayDataDTO`

NewSushiswapPairDayDataDTOWithDefaults instantiates a new SushiswapPairDayDataDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapPairDayDataDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapPairDayDataDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapPairDayDataDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapPairDayDataDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapPairDayDataDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapPairDayDataDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapPairDayDataDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapPairDayDataDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapPairDayDataDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapPairDayDataDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapPairDayDataDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapPairDayDataDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapPairDayDataDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapPairDayDataDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapPairDayDataDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapPairDayDataDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapPairDayDataDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapPairDayDataDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *SushiswapPairDayDataDTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *SushiswapPairDayDataDTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *SushiswapPairDayDataDTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *SushiswapPairDayDataDTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetPair

`func (o *SushiswapPairDayDataDTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SushiswapPairDayDataDTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SushiswapPairDayDataDTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SushiswapPairDayDataDTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SushiswapPairDayDataDTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SushiswapPairDayDataDTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetToken0

`func (o *SushiswapPairDayDataDTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *SushiswapPairDayDataDTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *SushiswapPairDayDataDTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *SushiswapPairDayDataDTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *SushiswapPairDayDataDTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *SushiswapPairDayDataDTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *SushiswapPairDayDataDTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *SushiswapPairDayDataDTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *SushiswapPairDayDataDTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *SushiswapPairDayDataDTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *SushiswapPairDayDataDTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *SushiswapPairDayDataDTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetReserve0

`func (o *SushiswapPairDayDataDTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *SushiswapPairDayDataDTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *SushiswapPairDayDataDTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *SushiswapPairDayDataDTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *SushiswapPairDayDataDTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *SushiswapPairDayDataDTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *SushiswapPairDayDataDTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *SushiswapPairDayDataDTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *SushiswapPairDayDataDTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *SushiswapPairDayDataDTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *SushiswapPairDayDataDTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *SushiswapPairDayDataDTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetTotalSupply

`func (o *SushiswapPairDayDataDTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *SushiswapPairDayDataDTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *SushiswapPairDayDataDTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *SushiswapPairDayDataDTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *SushiswapPairDayDataDTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *SushiswapPairDayDataDTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetReserveUsd

`func (o *SushiswapPairDayDataDTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *SushiswapPairDayDataDTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *SushiswapPairDayDataDTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *SushiswapPairDayDataDTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *SushiswapPairDayDataDTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *SushiswapPairDayDataDTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetVolumeToken0

`func (o *SushiswapPairDayDataDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *SushiswapPairDayDataDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *SushiswapPairDayDataDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *SushiswapPairDayDataDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *SushiswapPairDayDataDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *SushiswapPairDayDataDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *SushiswapPairDayDataDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *SushiswapPairDayDataDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *SushiswapPairDayDataDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *SushiswapPairDayDataDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *SushiswapPairDayDataDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *SushiswapPairDayDataDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *SushiswapPairDayDataDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *SushiswapPairDayDataDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *SushiswapPairDayDataDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *SushiswapPairDayDataDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *SushiswapPairDayDataDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *SushiswapPairDayDataDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetTxCount

`func (o *SushiswapPairDayDataDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *SushiswapPairDayDataDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *SushiswapPairDayDataDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *SushiswapPairDayDataDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *SushiswapPairDayDataDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *SushiswapPairDayDataDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetVid

`func (o *SushiswapPairDayDataDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapPairDayDataDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapPairDayDataDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapPairDayDataDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


