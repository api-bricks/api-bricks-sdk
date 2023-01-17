# SushiswapBurnDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**Transaction** | Pointer to **NullableString** | Reference to the transaction Burn was included in. | [optional] 
**Timestamp** | Pointer to **NullableString** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**Pair** | Pointer to **NullableString** | Reference to pair. | [optional] 
**Liquidity** | Pointer to **NullableString** | Amount of liquidity tokens burned. | [optional] 
**Sender** | Pointer to **NullableString** | Address that initiated the liquidity removal. | [optional] 
**Amount0** | Pointer to **NullableString** | Amount of token0 removed. | [optional] 
**Amount1** | Pointer to **NullableString** | Amount of token1 removed. | [optional] 
**To** | Pointer to **NullableString** | Recipient of tokens. | [optional] 
**LogIndex** | Pointer to **NullableString** | Index in the transaction event was emitted. | [optional] 
**AmountUsd** | Pointer to **NullableString** | Derived amount based on available prices of tokens. | [optional] 
**Complete** | Pointer to **bool** |  | [optional] 
**FeeTo** | Pointer to **NullableString** | Address of fee recipient (if fee is on). | [optional] 
**FeeLiquidity** | Pointer to **NullableString** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewSushiswapBurnDTO

`func NewSushiswapBurnDTO() *SushiswapBurnDTO`

NewSushiswapBurnDTO instantiates a new SushiswapBurnDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapBurnDTOWithDefaults

`func NewSushiswapBurnDTOWithDefaults() *SushiswapBurnDTO`

NewSushiswapBurnDTOWithDefaults instantiates a new SushiswapBurnDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapBurnDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapBurnDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapBurnDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapBurnDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapBurnDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapBurnDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapBurnDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapBurnDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapBurnDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapBurnDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapBurnDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapBurnDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapBurnDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapBurnDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapBurnDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapBurnDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapBurnDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapBurnDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTransaction

`func (o *SushiswapBurnDTO) GetTransaction() string`

GetTransaction returns the Transaction field if non-nil, zero value otherwise.

### GetTransactionOk

`func (o *SushiswapBurnDTO) GetTransactionOk() (*string, bool)`

GetTransactionOk returns a tuple with the Transaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransaction

`func (o *SushiswapBurnDTO) SetTransaction(v string)`

SetTransaction sets Transaction field to given value.

### HasTransaction

`func (o *SushiswapBurnDTO) HasTransaction() bool`

HasTransaction returns a boolean if a field has been set.

### SetTransactionNil

`func (o *SushiswapBurnDTO) SetTransactionNil(b bool)`

 SetTransactionNil sets the value for Transaction to be an explicit nil

### UnsetTransaction
`func (o *SushiswapBurnDTO) UnsetTransaction()`

UnsetTransaction ensures that no value is present for Transaction, not even an explicit nil
### GetTimestamp

`func (o *SushiswapBurnDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SushiswapBurnDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SushiswapBurnDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SushiswapBurnDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *SushiswapBurnDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *SushiswapBurnDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetPair

`func (o *SushiswapBurnDTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SushiswapBurnDTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SushiswapBurnDTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SushiswapBurnDTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SushiswapBurnDTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SushiswapBurnDTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetLiquidity

`func (o *SushiswapBurnDTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *SushiswapBurnDTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *SushiswapBurnDTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *SushiswapBurnDTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *SushiswapBurnDTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *SushiswapBurnDTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetSender

`func (o *SushiswapBurnDTO) GetSender() string`

GetSender returns the Sender field if non-nil, zero value otherwise.

### GetSenderOk

`func (o *SushiswapBurnDTO) GetSenderOk() (*string, bool)`

GetSenderOk returns a tuple with the Sender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSender

`func (o *SushiswapBurnDTO) SetSender(v string)`

SetSender sets Sender field to given value.

### HasSender

`func (o *SushiswapBurnDTO) HasSender() bool`

HasSender returns a boolean if a field has been set.

### SetSenderNil

`func (o *SushiswapBurnDTO) SetSenderNil(b bool)`

 SetSenderNil sets the value for Sender to be an explicit nil

### UnsetSender
`func (o *SushiswapBurnDTO) UnsetSender()`

UnsetSender ensures that no value is present for Sender, not even an explicit nil
### GetAmount0

`func (o *SushiswapBurnDTO) GetAmount0() string`

GetAmount0 returns the Amount0 field if non-nil, zero value otherwise.

### GetAmount0Ok

`func (o *SushiswapBurnDTO) GetAmount0Ok() (*string, bool)`

GetAmount0Ok returns a tuple with the Amount0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount0

`func (o *SushiswapBurnDTO) SetAmount0(v string)`

SetAmount0 sets Amount0 field to given value.

### HasAmount0

`func (o *SushiswapBurnDTO) HasAmount0() bool`

HasAmount0 returns a boolean if a field has been set.

### SetAmount0Nil

`func (o *SushiswapBurnDTO) SetAmount0Nil(b bool)`

 SetAmount0Nil sets the value for Amount0 to be an explicit nil

### UnsetAmount0
`func (o *SushiswapBurnDTO) UnsetAmount0()`

UnsetAmount0 ensures that no value is present for Amount0, not even an explicit nil
### GetAmount1

`func (o *SushiswapBurnDTO) GetAmount1() string`

GetAmount1 returns the Amount1 field if non-nil, zero value otherwise.

### GetAmount1Ok

`func (o *SushiswapBurnDTO) GetAmount1Ok() (*string, bool)`

GetAmount1Ok returns a tuple with the Amount1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount1

`func (o *SushiswapBurnDTO) SetAmount1(v string)`

SetAmount1 sets Amount1 field to given value.

### HasAmount1

`func (o *SushiswapBurnDTO) HasAmount1() bool`

HasAmount1 returns a boolean if a field has been set.

### SetAmount1Nil

`func (o *SushiswapBurnDTO) SetAmount1Nil(b bool)`

 SetAmount1Nil sets the value for Amount1 to be an explicit nil

### UnsetAmount1
`func (o *SushiswapBurnDTO) UnsetAmount1()`

UnsetAmount1 ensures that no value is present for Amount1, not even an explicit nil
### GetTo

`func (o *SushiswapBurnDTO) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *SushiswapBurnDTO) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *SushiswapBurnDTO) SetTo(v string)`

SetTo sets To field to given value.

### HasTo

`func (o *SushiswapBurnDTO) HasTo() bool`

HasTo returns a boolean if a field has been set.

### SetToNil

`func (o *SushiswapBurnDTO) SetToNil(b bool)`

 SetToNil sets the value for To to be an explicit nil

### UnsetTo
`func (o *SushiswapBurnDTO) UnsetTo()`

UnsetTo ensures that no value is present for To, not even an explicit nil
### GetLogIndex

`func (o *SushiswapBurnDTO) GetLogIndex() string`

GetLogIndex returns the LogIndex field if non-nil, zero value otherwise.

### GetLogIndexOk

`func (o *SushiswapBurnDTO) GetLogIndexOk() (*string, bool)`

GetLogIndexOk returns a tuple with the LogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogIndex

`func (o *SushiswapBurnDTO) SetLogIndex(v string)`

SetLogIndex sets LogIndex field to given value.

### HasLogIndex

`func (o *SushiswapBurnDTO) HasLogIndex() bool`

HasLogIndex returns a boolean if a field has been set.

### SetLogIndexNil

`func (o *SushiswapBurnDTO) SetLogIndexNil(b bool)`

 SetLogIndexNil sets the value for LogIndex to be an explicit nil

### UnsetLogIndex
`func (o *SushiswapBurnDTO) UnsetLogIndex()`

UnsetLogIndex ensures that no value is present for LogIndex, not even an explicit nil
### GetAmountUsd

`func (o *SushiswapBurnDTO) GetAmountUsd() string`

GetAmountUsd returns the AmountUsd field if non-nil, zero value otherwise.

### GetAmountUsdOk

`func (o *SushiswapBurnDTO) GetAmountUsdOk() (*string, bool)`

GetAmountUsdOk returns a tuple with the AmountUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountUsd

`func (o *SushiswapBurnDTO) SetAmountUsd(v string)`

SetAmountUsd sets AmountUsd field to given value.

### HasAmountUsd

`func (o *SushiswapBurnDTO) HasAmountUsd() bool`

HasAmountUsd returns a boolean if a field has been set.

### SetAmountUsdNil

`func (o *SushiswapBurnDTO) SetAmountUsdNil(b bool)`

 SetAmountUsdNil sets the value for AmountUsd to be an explicit nil

### UnsetAmountUsd
`func (o *SushiswapBurnDTO) UnsetAmountUsd()`

UnsetAmountUsd ensures that no value is present for AmountUsd, not even an explicit nil
### GetComplete

`func (o *SushiswapBurnDTO) GetComplete() bool`

GetComplete returns the Complete field if non-nil, zero value otherwise.

### GetCompleteOk

`func (o *SushiswapBurnDTO) GetCompleteOk() (*bool, bool)`

GetCompleteOk returns a tuple with the Complete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComplete

`func (o *SushiswapBurnDTO) SetComplete(v bool)`

SetComplete sets Complete field to given value.

### HasComplete

`func (o *SushiswapBurnDTO) HasComplete() bool`

HasComplete returns a boolean if a field has been set.

### GetFeeTo

`func (o *SushiswapBurnDTO) GetFeeTo() string`

GetFeeTo returns the FeeTo field if non-nil, zero value otherwise.

### GetFeeToOk

`func (o *SushiswapBurnDTO) GetFeeToOk() (*string, bool)`

GetFeeToOk returns a tuple with the FeeTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeTo

`func (o *SushiswapBurnDTO) SetFeeTo(v string)`

SetFeeTo sets FeeTo field to given value.

### HasFeeTo

`func (o *SushiswapBurnDTO) HasFeeTo() bool`

HasFeeTo returns a boolean if a field has been set.

### SetFeeToNil

`func (o *SushiswapBurnDTO) SetFeeToNil(b bool)`

 SetFeeToNil sets the value for FeeTo to be an explicit nil

### UnsetFeeTo
`func (o *SushiswapBurnDTO) UnsetFeeTo()`

UnsetFeeTo ensures that no value is present for FeeTo, not even an explicit nil
### GetFeeLiquidity

`func (o *SushiswapBurnDTO) GetFeeLiquidity() string`

GetFeeLiquidity returns the FeeLiquidity field if non-nil, zero value otherwise.

### GetFeeLiquidityOk

`func (o *SushiswapBurnDTO) GetFeeLiquidityOk() (*string, bool)`

GetFeeLiquidityOk returns a tuple with the FeeLiquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeLiquidity

`func (o *SushiswapBurnDTO) SetFeeLiquidity(v string)`

SetFeeLiquidity sets FeeLiquidity field to given value.

### HasFeeLiquidity

`func (o *SushiswapBurnDTO) HasFeeLiquidity() bool`

HasFeeLiquidity returns a boolean if a field has been set.

### SetFeeLiquidityNil

`func (o *SushiswapBurnDTO) SetFeeLiquidityNil(b bool)`

 SetFeeLiquidityNil sets the value for FeeLiquidity to be an explicit nil

### UnsetFeeLiquidity
`func (o *SushiswapBurnDTO) UnsetFeeLiquidity()`

UnsetFeeLiquidity ensures that no value is present for FeeLiquidity, not even an explicit nil
### GetVid

`func (o *SushiswapBurnDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapBurnDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapBurnDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapBurnDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


