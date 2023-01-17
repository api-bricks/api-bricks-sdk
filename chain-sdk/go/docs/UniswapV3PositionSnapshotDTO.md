# UniswapV3PositionSnapshotDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**Owner** | Pointer to **NullableString** | Owner of the NFT. | [optional] 
**Pool** | Pointer to **NullableString** | Pool the position is within. | [optional] 
**Position** | Pointer to **NullableString** | Position of which the snap was taken of. | [optional] 
**Timestamp** | Pointer to **NullableString** | Timestamp of block in which the snap was created. | [optional] 
**Liquidity** | Pointer to **NullableString** | Total position liquidity. | [optional] 
**DepositedToken0** | Pointer to **NullableString** | Amount of token 0 ever deposited to position. | [optional] 
**DepositedToken1** | Pointer to **NullableString** | Amount of token 1 ever deposited to position. | [optional] 
**WithdrawnToken0** | Pointer to **NullableString** | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**WithdrawnToken1** | Pointer to **NullableString** | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**CollectedFeesToken0** | Pointer to **NullableString** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | Pointer to **NullableString** | All time collected fees in token1. | [optional] 
**Transaction** | Pointer to **NullableString** | Transaction in which the snapshot was initialized. | [optional] 
**FeeGrowthInside0LastX128** | Pointer to **NullableString** | Variable needed for fee computation. | [optional] 
**FeeGrowthInside1LastX128** | Pointer to **NullableString** | Variable needed for fee computation. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV3PositionSnapshotDTO

`func NewUniswapV3PositionSnapshotDTO() *UniswapV3PositionSnapshotDTO`

NewUniswapV3PositionSnapshotDTO instantiates a new UniswapV3PositionSnapshotDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV3PositionSnapshotDTOWithDefaults

`func NewUniswapV3PositionSnapshotDTOWithDefaults() *UniswapV3PositionSnapshotDTO`

NewUniswapV3PositionSnapshotDTOWithDefaults instantiates a new UniswapV3PositionSnapshotDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV3PositionSnapshotDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV3PositionSnapshotDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV3PositionSnapshotDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV3PositionSnapshotDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV3PositionSnapshotDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV3PositionSnapshotDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV3PositionSnapshotDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV3PositionSnapshotDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV3PositionSnapshotDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV3PositionSnapshotDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV3PositionSnapshotDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV3PositionSnapshotDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV3PositionSnapshotDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV3PositionSnapshotDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV3PositionSnapshotDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV3PositionSnapshotDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV3PositionSnapshotDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV3PositionSnapshotDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetOwner

`func (o *UniswapV3PositionSnapshotDTO) GetOwner() string`

GetOwner returns the Owner field if non-nil, zero value otherwise.

### GetOwnerOk

`func (o *UniswapV3PositionSnapshotDTO) GetOwnerOk() (*string, bool)`

GetOwnerOk returns a tuple with the Owner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwner

`func (o *UniswapV3PositionSnapshotDTO) SetOwner(v string)`

SetOwner sets Owner field to given value.

### HasOwner

`func (o *UniswapV3PositionSnapshotDTO) HasOwner() bool`

HasOwner returns a boolean if a field has been set.

### SetOwnerNil

`func (o *UniswapV3PositionSnapshotDTO) SetOwnerNil(b bool)`

 SetOwnerNil sets the value for Owner to be an explicit nil

### UnsetOwner
`func (o *UniswapV3PositionSnapshotDTO) UnsetOwner()`

UnsetOwner ensures that no value is present for Owner, not even an explicit nil
### GetPool

`func (o *UniswapV3PositionSnapshotDTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *UniswapV3PositionSnapshotDTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *UniswapV3PositionSnapshotDTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *UniswapV3PositionSnapshotDTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *UniswapV3PositionSnapshotDTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *UniswapV3PositionSnapshotDTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetPosition

`func (o *UniswapV3PositionSnapshotDTO) GetPosition() string`

GetPosition returns the Position field if non-nil, zero value otherwise.

### GetPositionOk

`func (o *UniswapV3PositionSnapshotDTO) GetPositionOk() (*string, bool)`

GetPositionOk returns a tuple with the Position field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPosition

`func (o *UniswapV3PositionSnapshotDTO) SetPosition(v string)`

SetPosition sets Position field to given value.

### HasPosition

`func (o *UniswapV3PositionSnapshotDTO) HasPosition() bool`

HasPosition returns a boolean if a field has been set.

### SetPositionNil

`func (o *UniswapV3PositionSnapshotDTO) SetPositionNil(b bool)`

 SetPositionNil sets the value for Position to be an explicit nil

### UnsetPosition
`func (o *UniswapV3PositionSnapshotDTO) UnsetPosition()`

UnsetPosition ensures that no value is present for Position, not even an explicit nil
### GetTimestamp

`func (o *UniswapV3PositionSnapshotDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *UniswapV3PositionSnapshotDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *UniswapV3PositionSnapshotDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *UniswapV3PositionSnapshotDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *UniswapV3PositionSnapshotDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *UniswapV3PositionSnapshotDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetLiquidity

`func (o *UniswapV3PositionSnapshotDTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *UniswapV3PositionSnapshotDTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *UniswapV3PositionSnapshotDTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *UniswapV3PositionSnapshotDTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *UniswapV3PositionSnapshotDTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *UniswapV3PositionSnapshotDTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetDepositedToken0

`func (o *UniswapV3PositionSnapshotDTO) GetDepositedToken0() string`

GetDepositedToken0 returns the DepositedToken0 field if non-nil, zero value otherwise.

### GetDepositedToken0Ok

`func (o *UniswapV3PositionSnapshotDTO) GetDepositedToken0Ok() (*string, bool)`

GetDepositedToken0Ok returns a tuple with the DepositedToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepositedToken0

`func (o *UniswapV3PositionSnapshotDTO) SetDepositedToken0(v string)`

SetDepositedToken0 sets DepositedToken0 field to given value.

### HasDepositedToken0

`func (o *UniswapV3PositionSnapshotDTO) HasDepositedToken0() bool`

HasDepositedToken0 returns a boolean if a field has been set.

### SetDepositedToken0Nil

`func (o *UniswapV3PositionSnapshotDTO) SetDepositedToken0Nil(b bool)`

 SetDepositedToken0Nil sets the value for DepositedToken0 to be an explicit nil

### UnsetDepositedToken0
`func (o *UniswapV3PositionSnapshotDTO) UnsetDepositedToken0()`

UnsetDepositedToken0 ensures that no value is present for DepositedToken0, not even an explicit nil
### GetDepositedToken1

`func (o *UniswapV3PositionSnapshotDTO) GetDepositedToken1() string`

GetDepositedToken1 returns the DepositedToken1 field if non-nil, zero value otherwise.

### GetDepositedToken1Ok

`func (o *UniswapV3PositionSnapshotDTO) GetDepositedToken1Ok() (*string, bool)`

GetDepositedToken1Ok returns a tuple with the DepositedToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepositedToken1

`func (o *UniswapV3PositionSnapshotDTO) SetDepositedToken1(v string)`

SetDepositedToken1 sets DepositedToken1 field to given value.

### HasDepositedToken1

`func (o *UniswapV3PositionSnapshotDTO) HasDepositedToken1() bool`

HasDepositedToken1 returns a boolean if a field has been set.

### SetDepositedToken1Nil

`func (o *UniswapV3PositionSnapshotDTO) SetDepositedToken1Nil(b bool)`

 SetDepositedToken1Nil sets the value for DepositedToken1 to be an explicit nil

### UnsetDepositedToken1
`func (o *UniswapV3PositionSnapshotDTO) UnsetDepositedToken1()`

UnsetDepositedToken1 ensures that no value is present for DepositedToken1, not even an explicit nil
### GetWithdrawnToken0

`func (o *UniswapV3PositionSnapshotDTO) GetWithdrawnToken0() string`

GetWithdrawnToken0 returns the WithdrawnToken0 field if non-nil, zero value otherwise.

### GetWithdrawnToken0Ok

`func (o *UniswapV3PositionSnapshotDTO) GetWithdrawnToken0Ok() (*string, bool)`

GetWithdrawnToken0Ok returns a tuple with the WithdrawnToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWithdrawnToken0

`func (o *UniswapV3PositionSnapshotDTO) SetWithdrawnToken0(v string)`

SetWithdrawnToken0 sets WithdrawnToken0 field to given value.

### HasWithdrawnToken0

`func (o *UniswapV3PositionSnapshotDTO) HasWithdrawnToken0() bool`

HasWithdrawnToken0 returns a boolean if a field has been set.

### SetWithdrawnToken0Nil

`func (o *UniswapV3PositionSnapshotDTO) SetWithdrawnToken0Nil(b bool)`

 SetWithdrawnToken0Nil sets the value for WithdrawnToken0 to be an explicit nil

### UnsetWithdrawnToken0
`func (o *UniswapV3PositionSnapshotDTO) UnsetWithdrawnToken0()`

UnsetWithdrawnToken0 ensures that no value is present for WithdrawnToken0, not even an explicit nil
### GetWithdrawnToken1

`func (o *UniswapV3PositionSnapshotDTO) GetWithdrawnToken1() string`

GetWithdrawnToken1 returns the WithdrawnToken1 field if non-nil, zero value otherwise.

### GetWithdrawnToken1Ok

`func (o *UniswapV3PositionSnapshotDTO) GetWithdrawnToken1Ok() (*string, bool)`

GetWithdrawnToken1Ok returns a tuple with the WithdrawnToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWithdrawnToken1

`func (o *UniswapV3PositionSnapshotDTO) SetWithdrawnToken1(v string)`

SetWithdrawnToken1 sets WithdrawnToken1 field to given value.

### HasWithdrawnToken1

`func (o *UniswapV3PositionSnapshotDTO) HasWithdrawnToken1() bool`

HasWithdrawnToken1 returns a boolean if a field has been set.

### SetWithdrawnToken1Nil

`func (o *UniswapV3PositionSnapshotDTO) SetWithdrawnToken1Nil(b bool)`

 SetWithdrawnToken1Nil sets the value for WithdrawnToken1 to be an explicit nil

### UnsetWithdrawnToken1
`func (o *UniswapV3PositionSnapshotDTO) UnsetWithdrawnToken1()`

UnsetWithdrawnToken1 ensures that no value is present for WithdrawnToken1, not even an explicit nil
### GetCollectedFeesToken0

`func (o *UniswapV3PositionSnapshotDTO) GetCollectedFeesToken0() string`

GetCollectedFeesToken0 returns the CollectedFeesToken0 field if non-nil, zero value otherwise.

### GetCollectedFeesToken0Ok

`func (o *UniswapV3PositionSnapshotDTO) GetCollectedFeesToken0Ok() (*string, bool)`

GetCollectedFeesToken0Ok returns a tuple with the CollectedFeesToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesToken0

`func (o *UniswapV3PositionSnapshotDTO) SetCollectedFeesToken0(v string)`

SetCollectedFeesToken0 sets CollectedFeesToken0 field to given value.

### HasCollectedFeesToken0

`func (o *UniswapV3PositionSnapshotDTO) HasCollectedFeesToken0() bool`

HasCollectedFeesToken0 returns a boolean if a field has been set.

### SetCollectedFeesToken0Nil

`func (o *UniswapV3PositionSnapshotDTO) SetCollectedFeesToken0Nil(b bool)`

 SetCollectedFeesToken0Nil sets the value for CollectedFeesToken0 to be an explicit nil

### UnsetCollectedFeesToken0
`func (o *UniswapV3PositionSnapshotDTO) UnsetCollectedFeesToken0()`

UnsetCollectedFeesToken0 ensures that no value is present for CollectedFeesToken0, not even an explicit nil
### GetCollectedFeesToken1

`func (o *UniswapV3PositionSnapshotDTO) GetCollectedFeesToken1() string`

GetCollectedFeesToken1 returns the CollectedFeesToken1 field if non-nil, zero value otherwise.

### GetCollectedFeesToken1Ok

`func (o *UniswapV3PositionSnapshotDTO) GetCollectedFeesToken1Ok() (*string, bool)`

GetCollectedFeesToken1Ok returns a tuple with the CollectedFeesToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesToken1

`func (o *UniswapV3PositionSnapshotDTO) SetCollectedFeesToken1(v string)`

SetCollectedFeesToken1 sets CollectedFeesToken1 field to given value.

### HasCollectedFeesToken1

`func (o *UniswapV3PositionSnapshotDTO) HasCollectedFeesToken1() bool`

HasCollectedFeesToken1 returns a boolean if a field has been set.

### SetCollectedFeesToken1Nil

`func (o *UniswapV3PositionSnapshotDTO) SetCollectedFeesToken1Nil(b bool)`

 SetCollectedFeesToken1Nil sets the value for CollectedFeesToken1 to be an explicit nil

### UnsetCollectedFeesToken1
`func (o *UniswapV3PositionSnapshotDTO) UnsetCollectedFeesToken1()`

UnsetCollectedFeesToken1 ensures that no value is present for CollectedFeesToken1, not even an explicit nil
### GetTransaction

`func (o *UniswapV3PositionSnapshotDTO) GetTransaction() string`

GetTransaction returns the Transaction field if non-nil, zero value otherwise.

### GetTransactionOk

`func (o *UniswapV3PositionSnapshotDTO) GetTransactionOk() (*string, bool)`

GetTransactionOk returns a tuple with the Transaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransaction

`func (o *UniswapV3PositionSnapshotDTO) SetTransaction(v string)`

SetTransaction sets Transaction field to given value.

### HasTransaction

`func (o *UniswapV3PositionSnapshotDTO) HasTransaction() bool`

HasTransaction returns a boolean if a field has been set.

### SetTransactionNil

`func (o *UniswapV3PositionSnapshotDTO) SetTransactionNil(b bool)`

 SetTransactionNil sets the value for Transaction to be an explicit nil

### UnsetTransaction
`func (o *UniswapV3PositionSnapshotDTO) UnsetTransaction()`

UnsetTransaction ensures that no value is present for Transaction, not even an explicit nil
### GetFeeGrowthInside0LastX128

`func (o *UniswapV3PositionSnapshotDTO) GetFeeGrowthInside0LastX128() string`

GetFeeGrowthInside0LastX128 returns the FeeGrowthInside0LastX128 field if non-nil, zero value otherwise.

### GetFeeGrowthInside0LastX128Ok

`func (o *UniswapV3PositionSnapshotDTO) GetFeeGrowthInside0LastX128Ok() (*string, bool)`

GetFeeGrowthInside0LastX128Ok returns a tuple with the FeeGrowthInside0LastX128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthInside0LastX128

`func (o *UniswapV3PositionSnapshotDTO) SetFeeGrowthInside0LastX128(v string)`

SetFeeGrowthInside0LastX128 sets FeeGrowthInside0LastX128 field to given value.

### HasFeeGrowthInside0LastX128

`func (o *UniswapV3PositionSnapshotDTO) HasFeeGrowthInside0LastX128() bool`

HasFeeGrowthInside0LastX128 returns a boolean if a field has been set.

### SetFeeGrowthInside0LastX128Nil

`func (o *UniswapV3PositionSnapshotDTO) SetFeeGrowthInside0LastX128Nil(b bool)`

 SetFeeGrowthInside0LastX128Nil sets the value for FeeGrowthInside0LastX128 to be an explicit nil

### UnsetFeeGrowthInside0LastX128
`func (o *UniswapV3PositionSnapshotDTO) UnsetFeeGrowthInside0LastX128()`

UnsetFeeGrowthInside0LastX128 ensures that no value is present for FeeGrowthInside0LastX128, not even an explicit nil
### GetFeeGrowthInside1LastX128

`func (o *UniswapV3PositionSnapshotDTO) GetFeeGrowthInside1LastX128() string`

GetFeeGrowthInside1LastX128 returns the FeeGrowthInside1LastX128 field if non-nil, zero value otherwise.

### GetFeeGrowthInside1LastX128Ok

`func (o *UniswapV3PositionSnapshotDTO) GetFeeGrowthInside1LastX128Ok() (*string, bool)`

GetFeeGrowthInside1LastX128Ok returns a tuple with the FeeGrowthInside1LastX128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthInside1LastX128

`func (o *UniswapV3PositionSnapshotDTO) SetFeeGrowthInside1LastX128(v string)`

SetFeeGrowthInside1LastX128 sets FeeGrowthInside1LastX128 field to given value.

### HasFeeGrowthInside1LastX128

`func (o *UniswapV3PositionSnapshotDTO) HasFeeGrowthInside1LastX128() bool`

HasFeeGrowthInside1LastX128 returns a boolean if a field has been set.

### SetFeeGrowthInside1LastX128Nil

`func (o *UniswapV3PositionSnapshotDTO) SetFeeGrowthInside1LastX128Nil(b bool)`

 SetFeeGrowthInside1LastX128Nil sets the value for FeeGrowthInside1LastX128 to be an explicit nil

### UnsetFeeGrowthInside1LastX128
`func (o *UniswapV3PositionSnapshotDTO) UnsetFeeGrowthInside1LastX128()`

UnsetFeeGrowthInside1LastX128 ensures that no value is present for FeeGrowthInside1LastX128, not even an explicit nil
### GetVid

`func (o *UniswapV3PositionSnapshotDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV3PositionSnapshotDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV3PositionSnapshotDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV3PositionSnapshotDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


