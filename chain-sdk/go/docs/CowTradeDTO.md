# CowTradeDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] 
**Timestamp** | Pointer to **NullableString** | Block&#39;s timestamp. | [optional] 
**GasPrice** | Pointer to **NullableString** | Transaction&#39;s gas price. | [optional] 
**GasLimit** | Pointer to **NullableString** | Transaction&#39;s gas limit. | [optional] 
**FeeAmount** | Pointer to **NullableString** | Trade&#39;s fee amount. | [optional] 
**TxHash** | Pointer to **NullableString** | Trade event transaction hash. | [optional] 
**Settlement** | Pointer to **NullableString** | Reference to settlement. | [optional] 
**BuyAmount** | Pointer to **NullableString** | Buy amount. | [optional] 
**SellAmount** | Pointer to **NullableString** | Sell amount. | [optional] 
**SellToken** | Pointer to **NullableString** | Address of token that is sold. | [optional] 
**BuyToken** | Pointer to **NullableString** | Address of token that is bought. | [optional] 
**Order** | Pointer to **NullableString** | Reference to order. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**PoolId** | Pointer to **NullableString** |  | [optional] [readonly] 
**TransactionId** | Pointer to **NullableString** |  | [optional] [readonly] 
**EvaluatedPrice** | Pointer to **float64** |  | [optional] [readonly] 
**EvaluatedAmount** | Pointer to **float64** |  | [optional] [readonly] 
**EvaluatedAggressor** | Pointer to [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 

## Methods

### NewCowTradeDTO

`func NewCowTradeDTO() *CowTradeDTO`

NewCowTradeDTO instantiates a new CowTradeDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCowTradeDTOWithDefaults

`func NewCowTradeDTOWithDefaults() *CowTradeDTO`

NewCowTradeDTOWithDefaults instantiates a new CowTradeDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CowTradeDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CowTradeDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CowTradeDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CowTradeDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CowTradeDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CowTradeDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CowTradeDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CowTradeDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CowTradeDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CowTradeDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CowTradeDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CowTradeDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *CowTradeDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CowTradeDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CowTradeDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CowTradeDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CowTradeDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CowTradeDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTimestamp

`func (o *CowTradeDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *CowTradeDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *CowTradeDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *CowTradeDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *CowTradeDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *CowTradeDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetGasPrice

`func (o *CowTradeDTO) GetGasPrice() string`

GetGasPrice returns the GasPrice field if non-nil, zero value otherwise.

### GetGasPriceOk

`func (o *CowTradeDTO) GetGasPriceOk() (*string, bool)`

GetGasPriceOk returns a tuple with the GasPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGasPrice

`func (o *CowTradeDTO) SetGasPrice(v string)`

SetGasPrice sets GasPrice field to given value.

### HasGasPrice

`func (o *CowTradeDTO) HasGasPrice() bool`

HasGasPrice returns a boolean if a field has been set.

### SetGasPriceNil

`func (o *CowTradeDTO) SetGasPriceNil(b bool)`

 SetGasPriceNil sets the value for GasPrice to be an explicit nil

### UnsetGasPrice
`func (o *CowTradeDTO) UnsetGasPrice()`

UnsetGasPrice ensures that no value is present for GasPrice, not even an explicit nil
### GetGasLimit

`func (o *CowTradeDTO) GetGasLimit() string`

GetGasLimit returns the GasLimit field if non-nil, zero value otherwise.

### GetGasLimitOk

`func (o *CowTradeDTO) GetGasLimitOk() (*string, bool)`

GetGasLimitOk returns a tuple with the GasLimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGasLimit

`func (o *CowTradeDTO) SetGasLimit(v string)`

SetGasLimit sets GasLimit field to given value.

### HasGasLimit

`func (o *CowTradeDTO) HasGasLimit() bool`

HasGasLimit returns a boolean if a field has been set.

### SetGasLimitNil

`func (o *CowTradeDTO) SetGasLimitNil(b bool)`

 SetGasLimitNil sets the value for GasLimit to be an explicit nil

### UnsetGasLimit
`func (o *CowTradeDTO) UnsetGasLimit()`

UnsetGasLimit ensures that no value is present for GasLimit, not even an explicit nil
### GetFeeAmount

`func (o *CowTradeDTO) GetFeeAmount() string`

GetFeeAmount returns the FeeAmount field if non-nil, zero value otherwise.

### GetFeeAmountOk

`func (o *CowTradeDTO) GetFeeAmountOk() (*string, bool)`

GetFeeAmountOk returns a tuple with the FeeAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeAmount

`func (o *CowTradeDTO) SetFeeAmount(v string)`

SetFeeAmount sets FeeAmount field to given value.

### HasFeeAmount

`func (o *CowTradeDTO) HasFeeAmount() bool`

HasFeeAmount returns a boolean if a field has been set.

### SetFeeAmountNil

`func (o *CowTradeDTO) SetFeeAmountNil(b bool)`

 SetFeeAmountNil sets the value for FeeAmount to be an explicit nil

### UnsetFeeAmount
`func (o *CowTradeDTO) UnsetFeeAmount()`

UnsetFeeAmount ensures that no value is present for FeeAmount, not even an explicit nil
### GetTxHash

`func (o *CowTradeDTO) GetTxHash() string`

GetTxHash returns the TxHash field if non-nil, zero value otherwise.

### GetTxHashOk

`func (o *CowTradeDTO) GetTxHashOk() (*string, bool)`

GetTxHashOk returns a tuple with the TxHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxHash

`func (o *CowTradeDTO) SetTxHash(v string)`

SetTxHash sets TxHash field to given value.

### HasTxHash

`func (o *CowTradeDTO) HasTxHash() bool`

HasTxHash returns a boolean if a field has been set.

### SetTxHashNil

`func (o *CowTradeDTO) SetTxHashNil(b bool)`

 SetTxHashNil sets the value for TxHash to be an explicit nil

### UnsetTxHash
`func (o *CowTradeDTO) UnsetTxHash()`

UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
### GetSettlement

`func (o *CowTradeDTO) GetSettlement() string`

GetSettlement returns the Settlement field if non-nil, zero value otherwise.

### GetSettlementOk

`func (o *CowTradeDTO) GetSettlementOk() (*string, bool)`

GetSettlementOk returns a tuple with the Settlement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettlement

`func (o *CowTradeDTO) SetSettlement(v string)`

SetSettlement sets Settlement field to given value.

### HasSettlement

`func (o *CowTradeDTO) HasSettlement() bool`

HasSettlement returns a boolean if a field has been set.

### SetSettlementNil

`func (o *CowTradeDTO) SetSettlementNil(b bool)`

 SetSettlementNil sets the value for Settlement to be an explicit nil

### UnsetSettlement
`func (o *CowTradeDTO) UnsetSettlement()`

UnsetSettlement ensures that no value is present for Settlement, not even an explicit nil
### GetBuyAmount

`func (o *CowTradeDTO) GetBuyAmount() string`

GetBuyAmount returns the BuyAmount field if non-nil, zero value otherwise.

### GetBuyAmountOk

`func (o *CowTradeDTO) GetBuyAmountOk() (*string, bool)`

GetBuyAmountOk returns a tuple with the BuyAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyAmount

`func (o *CowTradeDTO) SetBuyAmount(v string)`

SetBuyAmount sets BuyAmount field to given value.

### HasBuyAmount

`func (o *CowTradeDTO) HasBuyAmount() bool`

HasBuyAmount returns a boolean if a field has been set.

### SetBuyAmountNil

`func (o *CowTradeDTO) SetBuyAmountNil(b bool)`

 SetBuyAmountNil sets the value for BuyAmount to be an explicit nil

### UnsetBuyAmount
`func (o *CowTradeDTO) UnsetBuyAmount()`

UnsetBuyAmount ensures that no value is present for BuyAmount, not even an explicit nil
### GetSellAmount

`func (o *CowTradeDTO) GetSellAmount() string`

GetSellAmount returns the SellAmount field if non-nil, zero value otherwise.

### GetSellAmountOk

`func (o *CowTradeDTO) GetSellAmountOk() (*string, bool)`

GetSellAmountOk returns a tuple with the SellAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSellAmount

`func (o *CowTradeDTO) SetSellAmount(v string)`

SetSellAmount sets SellAmount field to given value.

### HasSellAmount

`func (o *CowTradeDTO) HasSellAmount() bool`

HasSellAmount returns a boolean if a field has been set.

### SetSellAmountNil

`func (o *CowTradeDTO) SetSellAmountNil(b bool)`

 SetSellAmountNil sets the value for SellAmount to be an explicit nil

### UnsetSellAmount
`func (o *CowTradeDTO) UnsetSellAmount()`

UnsetSellAmount ensures that no value is present for SellAmount, not even an explicit nil
### GetSellToken

`func (o *CowTradeDTO) GetSellToken() string`

GetSellToken returns the SellToken field if non-nil, zero value otherwise.

### GetSellTokenOk

`func (o *CowTradeDTO) GetSellTokenOk() (*string, bool)`

GetSellTokenOk returns a tuple with the SellToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSellToken

`func (o *CowTradeDTO) SetSellToken(v string)`

SetSellToken sets SellToken field to given value.

### HasSellToken

`func (o *CowTradeDTO) HasSellToken() bool`

HasSellToken returns a boolean if a field has been set.

### SetSellTokenNil

`func (o *CowTradeDTO) SetSellTokenNil(b bool)`

 SetSellTokenNil sets the value for SellToken to be an explicit nil

### UnsetSellToken
`func (o *CowTradeDTO) UnsetSellToken()`

UnsetSellToken ensures that no value is present for SellToken, not even an explicit nil
### GetBuyToken

`func (o *CowTradeDTO) GetBuyToken() string`

GetBuyToken returns the BuyToken field if non-nil, zero value otherwise.

### GetBuyTokenOk

`func (o *CowTradeDTO) GetBuyTokenOk() (*string, bool)`

GetBuyTokenOk returns a tuple with the BuyToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyToken

`func (o *CowTradeDTO) SetBuyToken(v string)`

SetBuyToken sets BuyToken field to given value.

### HasBuyToken

`func (o *CowTradeDTO) HasBuyToken() bool`

HasBuyToken returns a boolean if a field has been set.

### SetBuyTokenNil

`func (o *CowTradeDTO) SetBuyTokenNil(b bool)`

 SetBuyTokenNil sets the value for BuyToken to be an explicit nil

### UnsetBuyToken
`func (o *CowTradeDTO) UnsetBuyToken()`

UnsetBuyToken ensures that no value is present for BuyToken, not even an explicit nil
### GetOrder

`func (o *CowTradeDTO) GetOrder() string`

GetOrder returns the Order field if non-nil, zero value otherwise.

### GetOrderOk

`func (o *CowTradeDTO) GetOrderOk() (*string, bool)`

GetOrderOk returns a tuple with the Order field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrder

`func (o *CowTradeDTO) SetOrder(v string)`

SetOrder sets Order field to given value.

### HasOrder

`func (o *CowTradeDTO) HasOrder() bool`

HasOrder returns a boolean if a field has been set.

### SetOrderNil

`func (o *CowTradeDTO) SetOrderNil(b bool)`

 SetOrderNil sets the value for Order to be an explicit nil

### UnsetOrder
`func (o *CowTradeDTO) UnsetOrder()`

UnsetOrder ensures that no value is present for Order, not even an explicit nil
### GetVid

`func (o *CowTradeDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CowTradeDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CowTradeDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CowTradeDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetPoolId

`func (o *CowTradeDTO) GetPoolId() string`

GetPoolId returns the PoolId field if non-nil, zero value otherwise.

### GetPoolIdOk

`func (o *CowTradeDTO) GetPoolIdOk() (*string, bool)`

GetPoolIdOk returns a tuple with the PoolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolId

`func (o *CowTradeDTO) SetPoolId(v string)`

SetPoolId sets PoolId field to given value.

### HasPoolId

`func (o *CowTradeDTO) HasPoolId() bool`

HasPoolId returns a boolean if a field has been set.

### SetPoolIdNil

`func (o *CowTradeDTO) SetPoolIdNil(b bool)`

 SetPoolIdNil sets the value for PoolId to be an explicit nil

### UnsetPoolId
`func (o *CowTradeDTO) UnsetPoolId()`

UnsetPoolId ensures that no value is present for PoolId, not even an explicit nil
### GetTransactionId

`func (o *CowTradeDTO) GetTransactionId() string`

GetTransactionId returns the TransactionId field if non-nil, zero value otherwise.

### GetTransactionIdOk

`func (o *CowTradeDTO) GetTransactionIdOk() (*string, bool)`

GetTransactionIdOk returns a tuple with the TransactionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactionId

`func (o *CowTradeDTO) SetTransactionId(v string)`

SetTransactionId sets TransactionId field to given value.

### HasTransactionId

`func (o *CowTradeDTO) HasTransactionId() bool`

HasTransactionId returns a boolean if a field has been set.

### SetTransactionIdNil

`func (o *CowTradeDTO) SetTransactionIdNil(b bool)`

 SetTransactionIdNil sets the value for TransactionId to be an explicit nil

### UnsetTransactionId
`func (o *CowTradeDTO) UnsetTransactionId()`

UnsetTransactionId ensures that no value is present for TransactionId, not even an explicit nil
### GetEvaluatedPrice

`func (o *CowTradeDTO) GetEvaluatedPrice() float64`

GetEvaluatedPrice returns the EvaluatedPrice field if non-nil, zero value otherwise.

### GetEvaluatedPriceOk

`func (o *CowTradeDTO) GetEvaluatedPriceOk() (*float64, bool)`

GetEvaluatedPriceOk returns a tuple with the EvaluatedPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedPrice

`func (o *CowTradeDTO) SetEvaluatedPrice(v float64)`

SetEvaluatedPrice sets EvaluatedPrice field to given value.

### HasEvaluatedPrice

`func (o *CowTradeDTO) HasEvaluatedPrice() bool`

HasEvaluatedPrice returns a boolean if a field has been set.

### GetEvaluatedAmount

`func (o *CowTradeDTO) GetEvaluatedAmount() float64`

GetEvaluatedAmount returns the EvaluatedAmount field if non-nil, zero value otherwise.

### GetEvaluatedAmountOk

`func (o *CowTradeDTO) GetEvaluatedAmountOk() (*float64, bool)`

GetEvaluatedAmountOk returns a tuple with the EvaluatedAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAmount

`func (o *CowTradeDTO) SetEvaluatedAmount(v float64)`

SetEvaluatedAmount sets EvaluatedAmount field to given value.

### HasEvaluatedAmount

`func (o *CowTradeDTO) HasEvaluatedAmount() bool`

HasEvaluatedAmount returns a boolean if a field has been set.

### GetEvaluatedAggressor

`func (o *CowTradeDTO) GetEvaluatedAggressor() TransactionsETradeAggressiveSide`

GetEvaluatedAggressor returns the EvaluatedAggressor field if non-nil, zero value otherwise.

### GetEvaluatedAggressorOk

`func (o *CowTradeDTO) GetEvaluatedAggressorOk() (*TransactionsETradeAggressiveSide, bool)`

GetEvaluatedAggressorOk returns a tuple with the EvaluatedAggressor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAggressor

`func (o *CowTradeDTO) SetEvaluatedAggressor(v TransactionsETradeAggressiveSide)`

SetEvaluatedAggressor sets EvaluatedAggressor field to given value.

### HasEvaluatedAggressor

`func (o *CowTradeDTO) HasEvaluatedAggressor() bool`

HasEvaluatedAggressor returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


