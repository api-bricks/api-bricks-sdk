# SushiswapMintDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**Transaction** | Pointer to **NullableString** | Reference to the transaction Mint was included in. | [optional] 
**Timestamp** | Pointer to **NullableString** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**Pair** | Pointer to **NullableString** | Reference to pair. | [optional] 
**To** | Pointer to **NullableString** | Recipient of liquidity tokens. | [optional] 
**Liquidity** | Pointer to **NullableString** | Amount of liquidity tokens minted. | [optional] 
**Sender** | Pointer to **NullableString** | Address that initiated the liquidity provision. | [optional] 
**Amount0** | Pointer to **NullableString** | Amount of token0 provided. | [optional] 
**Amount1** | Pointer to **NullableString** | Amount of token1 provided. | [optional] 
**LogIndex** | Pointer to **NullableString** | Index in the transaction event was emitted. | [optional] 
**AmountUsd** | Pointer to **NullableString** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**FeeTo** | Pointer to **NullableString** | Address of fee recipient (if fee is on). | [optional] 
**FeeLiquidity** | Pointer to **NullableString** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewSushiswapMintDTO

`func NewSushiswapMintDTO() *SushiswapMintDTO`

NewSushiswapMintDTO instantiates a new SushiswapMintDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapMintDTOWithDefaults

`func NewSushiswapMintDTOWithDefaults() *SushiswapMintDTO`

NewSushiswapMintDTOWithDefaults instantiates a new SushiswapMintDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapMintDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapMintDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapMintDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapMintDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapMintDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapMintDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapMintDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapMintDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapMintDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapMintDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapMintDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapMintDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapMintDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapMintDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapMintDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapMintDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapMintDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapMintDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTransaction

`func (o *SushiswapMintDTO) GetTransaction() string`

GetTransaction returns the Transaction field if non-nil, zero value otherwise.

### GetTransactionOk

`func (o *SushiswapMintDTO) GetTransactionOk() (*string, bool)`

GetTransactionOk returns a tuple with the Transaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransaction

`func (o *SushiswapMintDTO) SetTransaction(v string)`

SetTransaction sets Transaction field to given value.

### HasTransaction

`func (o *SushiswapMintDTO) HasTransaction() bool`

HasTransaction returns a boolean if a field has been set.

### SetTransactionNil

`func (o *SushiswapMintDTO) SetTransactionNil(b bool)`

 SetTransactionNil sets the value for Transaction to be an explicit nil

### UnsetTransaction
`func (o *SushiswapMintDTO) UnsetTransaction()`

UnsetTransaction ensures that no value is present for Transaction, not even an explicit nil
### GetTimestamp

`func (o *SushiswapMintDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SushiswapMintDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SushiswapMintDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SushiswapMintDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *SushiswapMintDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *SushiswapMintDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetPair

`func (o *SushiswapMintDTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SushiswapMintDTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SushiswapMintDTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SushiswapMintDTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SushiswapMintDTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SushiswapMintDTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetTo

`func (o *SushiswapMintDTO) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *SushiswapMintDTO) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *SushiswapMintDTO) SetTo(v string)`

SetTo sets To field to given value.

### HasTo

`func (o *SushiswapMintDTO) HasTo() bool`

HasTo returns a boolean if a field has been set.

### SetToNil

`func (o *SushiswapMintDTO) SetToNil(b bool)`

 SetToNil sets the value for To to be an explicit nil

### UnsetTo
`func (o *SushiswapMintDTO) UnsetTo()`

UnsetTo ensures that no value is present for To, not even an explicit nil
### GetLiquidity

`func (o *SushiswapMintDTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *SushiswapMintDTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *SushiswapMintDTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *SushiswapMintDTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *SushiswapMintDTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *SushiswapMintDTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetSender

`func (o *SushiswapMintDTO) GetSender() string`

GetSender returns the Sender field if non-nil, zero value otherwise.

### GetSenderOk

`func (o *SushiswapMintDTO) GetSenderOk() (*string, bool)`

GetSenderOk returns a tuple with the Sender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSender

`func (o *SushiswapMintDTO) SetSender(v string)`

SetSender sets Sender field to given value.

### HasSender

`func (o *SushiswapMintDTO) HasSender() bool`

HasSender returns a boolean if a field has been set.

### SetSenderNil

`func (o *SushiswapMintDTO) SetSenderNil(b bool)`

 SetSenderNil sets the value for Sender to be an explicit nil

### UnsetSender
`func (o *SushiswapMintDTO) UnsetSender()`

UnsetSender ensures that no value is present for Sender, not even an explicit nil
### GetAmount0

`func (o *SushiswapMintDTO) GetAmount0() string`

GetAmount0 returns the Amount0 field if non-nil, zero value otherwise.

### GetAmount0Ok

`func (o *SushiswapMintDTO) GetAmount0Ok() (*string, bool)`

GetAmount0Ok returns a tuple with the Amount0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount0

`func (o *SushiswapMintDTO) SetAmount0(v string)`

SetAmount0 sets Amount0 field to given value.

### HasAmount0

`func (o *SushiswapMintDTO) HasAmount0() bool`

HasAmount0 returns a boolean if a field has been set.

### SetAmount0Nil

`func (o *SushiswapMintDTO) SetAmount0Nil(b bool)`

 SetAmount0Nil sets the value for Amount0 to be an explicit nil

### UnsetAmount0
`func (o *SushiswapMintDTO) UnsetAmount0()`

UnsetAmount0 ensures that no value is present for Amount0, not even an explicit nil
### GetAmount1

`func (o *SushiswapMintDTO) GetAmount1() string`

GetAmount1 returns the Amount1 field if non-nil, zero value otherwise.

### GetAmount1Ok

`func (o *SushiswapMintDTO) GetAmount1Ok() (*string, bool)`

GetAmount1Ok returns a tuple with the Amount1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount1

`func (o *SushiswapMintDTO) SetAmount1(v string)`

SetAmount1 sets Amount1 field to given value.

### HasAmount1

`func (o *SushiswapMintDTO) HasAmount1() bool`

HasAmount1 returns a boolean if a field has been set.

### SetAmount1Nil

`func (o *SushiswapMintDTO) SetAmount1Nil(b bool)`

 SetAmount1Nil sets the value for Amount1 to be an explicit nil

### UnsetAmount1
`func (o *SushiswapMintDTO) UnsetAmount1()`

UnsetAmount1 ensures that no value is present for Amount1, not even an explicit nil
### GetLogIndex

`func (o *SushiswapMintDTO) GetLogIndex() string`

GetLogIndex returns the LogIndex field if non-nil, zero value otherwise.

### GetLogIndexOk

`func (o *SushiswapMintDTO) GetLogIndexOk() (*string, bool)`

GetLogIndexOk returns a tuple with the LogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogIndex

`func (o *SushiswapMintDTO) SetLogIndex(v string)`

SetLogIndex sets LogIndex field to given value.

### HasLogIndex

`func (o *SushiswapMintDTO) HasLogIndex() bool`

HasLogIndex returns a boolean if a field has been set.

### SetLogIndexNil

`func (o *SushiswapMintDTO) SetLogIndexNil(b bool)`

 SetLogIndexNil sets the value for LogIndex to be an explicit nil

### UnsetLogIndex
`func (o *SushiswapMintDTO) UnsetLogIndex()`

UnsetLogIndex ensures that no value is present for LogIndex, not even an explicit nil
### GetAmountUsd

`func (o *SushiswapMintDTO) GetAmountUsd() string`

GetAmountUsd returns the AmountUsd field if non-nil, zero value otherwise.

### GetAmountUsdOk

`func (o *SushiswapMintDTO) GetAmountUsdOk() (*string, bool)`

GetAmountUsdOk returns a tuple with the AmountUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountUsd

`func (o *SushiswapMintDTO) SetAmountUsd(v string)`

SetAmountUsd sets AmountUsd field to given value.

### HasAmountUsd

`func (o *SushiswapMintDTO) HasAmountUsd() bool`

HasAmountUsd returns a boolean if a field has been set.

### SetAmountUsdNil

`func (o *SushiswapMintDTO) SetAmountUsdNil(b bool)`

 SetAmountUsdNil sets the value for AmountUsd to be an explicit nil

### UnsetAmountUsd
`func (o *SushiswapMintDTO) UnsetAmountUsd()`

UnsetAmountUsd ensures that no value is present for AmountUsd, not even an explicit nil
### GetFeeTo

`func (o *SushiswapMintDTO) GetFeeTo() string`

GetFeeTo returns the FeeTo field if non-nil, zero value otherwise.

### GetFeeToOk

`func (o *SushiswapMintDTO) GetFeeToOk() (*string, bool)`

GetFeeToOk returns a tuple with the FeeTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeTo

`func (o *SushiswapMintDTO) SetFeeTo(v string)`

SetFeeTo sets FeeTo field to given value.

### HasFeeTo

`func (o *SushiswapMintDTO) HasFeeTo() bool`

HasFeeTo returns a boolean if a field has been set.

### SetFeeToNil

`func (o *SushiswapMintDTO) SetFeeToNil(b bool)`

 SetFeeToNil sets the value for FeeTo to be an explicit nil

### UnsetFeeTo
`func (o *SushiswapMintDTO) UnsetFeeTo()`

UnsetFeeTo ensures that no value is present for FeeTo, not even an explicit nil
### GetFeeLiquidity

`func (o *SushiswapMintDTO) GetFeeLiquidity() string`

GetFeeLiquidity returns the FeeLiquidity field if non-nil, zero value otherwise.

### GetFeeLiquidityOk

`func (o *SushiswapMintDTO) GetFeeLiquidityOk() (*string, bool)`

GetFeeLiquidityOk returns a tuple with the FeeLiquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeLiquidity

`func (o *SushiswapMintDTO) SetFeeLiquidity(v string)`

SetFeeLiquidity sets FeeLiquidity field to given value.

### HasFeeLiquidity

`func (o *SushiswapMintDTO) HasFeeLiquidity() bool`

HasFeeLiquidity returns a boolean if a field has been set.

### SetFeeLiquidityNil

`func (o *SushiswapMintDTO) SetFeeLiquidityNil(b bool)`

 SetFeeLiquidityNil sets the value for FeeLiquidity to be an explicit nil

### UnsetFeeLiquidity
`func (o *SushiswapMintDTO) UnsetFeeLiquidity()`

UnsetFeeLiquidity ensures that no value is present for FeeLiquidity, not even an explicit nil
### GetVid

`func (o *SushiswapMintDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapMintDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapMintDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapMintDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


