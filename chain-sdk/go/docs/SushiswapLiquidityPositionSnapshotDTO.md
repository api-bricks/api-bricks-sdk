# SushiswapLiquidityPositionSnapshotDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
**LiquidityPosition** | Pointer to **NullableString** | Reference to LP identifier. | [optional] 
**Timestamp** | Pointer to **int32** | Creation time. | [optional] 
**Block** | Pointer to **int32** | Block in which snapshot has been created. | [optional] 
**User** | Pointer to **NullableString** | Reference to user. | [optional] 
**Pair** | Pointer to **NullableString** | Reference to the pair liquidity is being provided on. | [optional] 
**Token0PriceUsd** | Pointer to **NullableString** | Snapshot of token0 price in USD. | [optional] 
**Token1PriceUsd** | Pointer to **NullableString** | Snapshot of token0 price in USD. | [optional] 
**Reserve0** | Pointer to **NullableString** | Snapshot of pair token0 reserves. | [optional] 
**Reserve1** | Pointer to **NullableString** | Snapshot of pair token1 reserves. | [optional] 
**ReserveUsd** | Pointer to **NullableString** | Snapshot of pair reserves in USD. | [optional] 
**LiquidityTokenTotalSupply** | Pointer to **NullableString** | Snapshot of pool token supply. | [optional] 
**LiquidityTokenBalance** | Pointer to **NullableString** | Snapshot of users pool token balance. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewSushiswapLiquidityPositionSnapshotDTO

`func NewSushiswapLiquidityPositionSnapshotDTO() *SushiswapLiquidityPositionSnapshotDTO`

NewSushiswapLiquidityPositionSnapshotDTO instantiates a new SushiswapLiquidityPositionSnapshotDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapLiquidityPositionSnapshotDTOWithDefaults

`func NewSushiswapLiquidityPositionSnapshotDTOWithDefaults() *SushiswapLiquidityPositionSnapshotDTO`

NewSushiswapLiquidityPositionSnapshotDTOWithDefaults instantiates a new SushiswapLiquidityPositionSnapshotDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetLiquidityPosition

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetLiquidityPosition() string`

GetLiquidityPosition returns the LiquidityPosition field if non-nil, zero value otherwise.

### GetLiquidityPositionOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetLiquidityPositionOk() (*string, bool)`

GetLiquidityPositionOk returns a tuple with the LiquidityPosition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityPosition

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetLiquidityPosition(v string)`

SetLiquidityPosition sets LiquidityPosition field to given value.

### HasLiquidityPosition

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasLiquidityPosition() bool`

HasLiquidityPosition returns a boolean if a field has been set.

### SetLiquidityPositionNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetLiquidityPositionNil(b bool)`

 SetLiquidityPositionNil sets the value for LiquidityPosition to be an explicit nil

### UnsetLiquidityPosition
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetLiquidityPosition()`

UnsetLiquidityPosition ensures that no value is present for LiquidityPosition, not even an explicit nil
### GetTimestamp

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetTimestamp() int32`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetTimestampOk() (*int32, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetTimestamp(v int32)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetBlock

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetBlock() int32`

GetBlock returns the Block field if non-nil, zero value otherwise.

### GetBlockOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetBlockOk() (*int32, bool)`

GetBlockOk returns a tuple with the Block field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlock

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetBlock(v int32)`

SetBlock sets Block field to given value.

### HasBlock

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasBlock() bool`

HasBlock returns a boolean if a field has been set.

### GetUser

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasUser() bool`

HasUser returns a boolean if a field has been set.

### SetUserNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetUserNil(b bool)`

 SetUserNil sets the value for User to be an explicit nil

### UnsetUser
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetUser()`

UnsetUser ensures that no value is present for User, not even an explicit nil
### GetPair

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetToken0PriceUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetToken0PriceUsd() string`

GetToken0PriceUsd returns the Token0PriceUsd field if non-nil, zero value otherwise.

### GetToken0PriceUsdOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetToken0PriceUsdOk() (*string, bool)`

GetToken0PriceUsdOk returns a tuple with the Token0PriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0PriceUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetToken0PriceUsd(v string)`

SetToken0PriceUsd sets Token0PriceUsd field to given value.

### HasToken0PriceUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasToken0PriceUsd() bool`

HasToken0PriceUsd returns a boolean if a field has been set.

### SetToken0PriceUsdNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetToken0PriceUsdNil(b bool)`

 SetToken0PriceUsdNil sets the value for Token0PriceUsd to be an explicit nil

### UnsetToken0PriceUsd
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetToken0PriceUsd()`

UnsetToken0PriceUsd ensures that no value is present for Token0PriceUsd, not even an explicit nil
### GetToken1PriceUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetToken1PriceUsd() string`

GetToken1PriceUsd returns the Token1PriceUsd field if non-nil, zero value otherwise.

### GetToken1PriceUsdOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetToken1PriceUsdOk() (*string, bool)`

GetToken1PriceUsdOk returns a tuple with the Token1PriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1PriceUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetToken1PriceUsd(v string)`

SetToken1PriceUsd sets Token1PriceUsd field to given value.

### HasToken1PriceUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasToken1PriceUsd() bool`

HasToken1PriceUsd returns a boolean if a field has been set.

### SetToken1PriceUsdNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetToken1PriceUsdNil(b bool)`

 SetToken1PriceUsdNil sets the value for Token1PriceUsd to be an explicit nil

### UnsetToken1PriceUsd
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetToken1PriceUsd()`

UnsetToken1PriceUsd ensures that no value is present for Token1PriceUsd, not even an explicit nil
### GetReserve0

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetReserveUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetLiquidityTokenTotalSupply

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetLiquidityTokenTotalSupply() string`

GetLiquidityTokenTotalSupply returns the LiquidityTokenTotalSupply field if non-nil, zero value otherwise.

### GetLiquidityTokenTotalSupplyOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetLiquidityTokenTotalSupplyOk() (*string, bool)`

GetLiquidityTokenTotalSupplyOk returns a tuple with the LiquidityTokenTotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityTokenTotalSupply

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetLiquidityTokenTotalSupply(v string)`

SetLiquidityTokenTotalSupply sets LiquidityTokenTotalSupply field to given value.

### HasLiquidityTokenTotalSupply

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasLiquidityTokenTotalSupply() bool`

HasLiquidityTokenTotalSupply returns a boolean if a field has been set.

### SetLiquidityTokenTotalSupplyNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetLiquidityTokenTotalSupplyNil(b bool)`

 SetLiquidityTokenTotalSupplyNil sets the value for LiquidityTokenTotalSupply to be an explicit nil

### UnsetLiquidityTokenTotalSupply
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetLiquidityTokenTotalSupply()`

UnsetLiquidityTokenTotalSupply ensures that no value is present for LiquidityTokenTotalSupply, not even an explicit nil
### GetLiquidityTokenBalance

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetLiquidityTokenBalance() string`

GetLiquidityTokenBalance returns the LiquidityTokenBalance field if non-nil, zero value otherwise.

### GetLiquidityTokenBalanceOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetLiquidityTokenBalanceOk() (*string, bool)`

GetLiquidityTokenBalanceOk returns a tuple with the LiquidityTokenBalance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityTokenBalance

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetLiquidityTokenBalance(v string)`

SetLiquidityTokenBalance sets LiquidityTokenBalance field to given value.

### HasLiquidityTokenBalance

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasLiquidityTokenBalance() bool`

HasLiquidityTokenBalance returns a boolean if a field has been set.

### SetLiquidityTokenBalanceNil

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetLiquidityTokenBalanceNil(b bool)`

 SetLiquidityTokenBalanceNil sets the value for LiquidityTokenBalance to be an explicit nil

### UnsetLiquidityTokenBalance
`func (o *SushiswapLiquidityPositionSnapshotDTO) UnsetLiquidityTokenBalance()`

UnsetLiquidityTokenBalance ensures that no value is present for LiquidityTokenBalance, not even an explicit nil
### GetVid

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapLiquidityPositionSnapshotDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapLiquidityPositionSnapshotDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapLiquidityPositionSnapshotDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


