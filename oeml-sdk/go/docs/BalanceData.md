# BalanceData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdExchange** | Pointer to **string** | Exchange currency code. | [optional] 
**AssetIdCoinapi** | Pointer to **string** | CoinAPI currency code. | [optional] 
**Balance** | Pointer to **float32** | Value of the current total currency balance on the exchange. | [optional] 
**Available** | Pointer to **float32** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**Locked** | Pointer to **float32** | Value of the current locked currency balance by the exchange. | [optional] 
**LastUpdatedBy** | Pointer to **string** | Source of the last modification.  | [optional] 
**RateUsd** | Pointer to **float32** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**Traded** | Pointer to **float32** | Value of the current total traded. | [optional] 

## Methods

### NewBalanceData

`func NewBalanceData() *BalanceData`

NewBalanceData instantiates a new BalanceData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBalanceDataWithDefaults

`func NewBalanceDataWithDefaults() *BalanceData`

NewBalanceDataWithDefaults instantiates a new BalanceData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAssetIdExchange

`func (o *BalanceData) GetAssetIdExchange() string`

GetAssetIdExchange returns the AssetIdExchange field if non-nil, zero value otherwise.

### GetAssetIdExchangeOk

`func (o *BalanceData) GetAssetIdExchangeOk() (*string, bool)`

GetAssetIdExchangeOk returns a tuple with the AssetIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdExchange

`func (o *BalanceData) SetAssetIdExchange(v string)`

SetAssetIdExchange sets AssetIdExchange field to given value.

### HasAssetIdExchange

`func (o *BalanceData) HasAssetIdExchange() bool`

HasAssetIdExchange returns a boolean if a field has been set.

### GetAssetIdCoinapi

`func (o *BalanceData) GetAssetIdCoinapi() string`

GetAssetIdCoinapi returns the AssetIdCoinapi field if non-nil, zero value otherwise.

### GetAssetIdCoinapiOk

`func (o *BalanceData) GetAssetIdCoinapiOk() (*string, bool)`

GetAssetIdCoinapiOk returns a tuple with the AssetIdCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdCoinapi

`func (o *BalanceData) SetAssetIdCoinapi(v string)`

SetAssetIdCoinapi sets AssetIdCoinapi field to given value.

### HasAssetIdCoinapi

`func (o *BalanceData) HasAssetIdCoinapi() bool`

HasAssetIdCoinapi returns a boolean if a field has been set.

### GetBalance

`func (o *BalanceData) GetBalance() float32`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *BalanceData) GetBalanceOk() (*float32, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *BalanceData) SetBalance(v float32)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *BalanceData) HasBalance() bool`

HasBalance returns a boolean if a field has been set.

### GetAvailable

`func (o *BalanceData) GetAvailable() float32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *BalanceData) GetAvailableOk() (*float32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *BalanceData) SetAvailable(v float32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *BalanceData) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetLocked

`func (o *BalanceData) GetLocked() float32`

GetLocked returns the Locked field if non-nil, zero value otherwise.

### GetLockedOk

`func (o *BalanceData) GetLockedOk() (*float32, bool)`

GetLockedOk returns a tuple with the Locked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocked

`func (o *BalanceData) SetLocked(v float32)`

SetLocked sets Locked field to given value.

### HasLocked

`func (o *BalanceData) HasLocked() bool`

HasLocked returns a boolean if a field has been set.

### GetLastUpdatedBy

`func (o *BalanceData) GetLastUpdatedBy() string`

GetLastUpdatedBy returns the LastUpdatedBy field if non-nil, zero value otherwise.

### GetLastUpdatedByOk

`func (o *BalanceData) GetLastUpdatedByOk() (*string, bool)`

GetLastUpdatedByOk returns a tuple with the LastUpdatedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUpdatedBy

`func (o *BalanceData) SetLastUpdatedBy(v string)`

SetLastUpdatedBy sets LastUpdatedBy field to given value.

### HasLastUpdatedBy

`func (o *BalanceData) HasLastUpdatedBy() bool`

HasLastUpdatedBy returns a boolean if a field has been set.

### GetRateUsd

`func (o *BalanceData) GetRateUsd() float32`

GetRateUsd returns the RateUsd field if non-nil, zero value otherwise.

### GetRateUsdOk

`func (o *BalanceData) GetRateUsdOk() (*float32, bool)`

GetRateUsdOk returns a tuple with the RateUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateUsd

`func (o *BalanceData) SetRateUsd(v float32)`

SetRateUsd sets RateUsd field to given value.

### HasRateUsd

`func (o *BalanceData) HasRateUsd() bool`

HasRateUsd returns a boolean if a field has been set.

### GetTraded

`func (o *BalanceData) GetTraded() float32`

GetTraded returns the Traded field if non-nil, zero value otherwise.

### GetTradedOk

`func (o *BalanceData) GetTradedOk() (*float32, bool)`

GetTradedOk returns a tuple with the Traded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTraded

`func (o *BalanceData) SetTraded(v float32)`

SetTraded sets Traded field to given value.

### HasTraded

`func (o *BalanceData) HasTraded() bool`

HasTraded returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


