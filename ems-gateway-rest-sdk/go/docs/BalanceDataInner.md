# BalanceDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdExchange** | Pointer to **string** | Exchange currency code. | [optional] 
**AssetIdCoinapi** | Pointer to **string** | CoinAPI currency code. | [optional] 
**Balance** | Pointer to **float64** | Value of the current total currency balance on the exchange. | [optional] 
**Available** | Pointer to **float64** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**Locked** | Pointer to **float64** | Value of the current locked currency balance by the exchange. | [optional] 
**LastUpdatedBy** | Pointer to **string** | Source of the last modification.  | [optional] 
**RateUsd** | Pointer to **float64** | Current exchange rate to the USD for the single unit of the currency.  | [optional] 
**Traded** | Pointer to **float64** | Value of the current total traded. | [optional] 

## Methods

### NewBalanceDataInner

`func NewBalanceDataInner() *BalanceDataInner`

NewBalanceDataInner instantiates a new BalanceDataInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBalanceDataInnerWithDefaults

`func NewBalanceDataInnerWithDefaults() *BalanceDataInner`

NewBalanceDataInnerWithDefaults instantiates a new BalanceDataInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAssetIdExchange

`func (o *BalanceDataInner) GetAssetIdExchange() string`

GetAssetIdExchange returns the AssetIdExchange field if non-nil, zero value otherwise.

### GetAssetIdExchangeOk

`func (o *BalanceDataInner) GetAssetIdExchangeOk() (*string, bool)`

GetAssetIdExchangeOk returns a tuple with the AssetIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdExchange

`func (o *BalanceDataInner) SetAssetIdExchange(v string)`

SetAssetIdExchange sets AssetIdExchange field to given value.

### HasAssetIdExchange

`func (o *BalanceDataInner) HasAssetIdExchange() bool`

HasAssetIdExchange returns a boolean if a field has been set.

### GetAssetIdCoinapi

`func (o *BalanceDataInner) GetAssetIdCoinapi() string`

GetAssetIdCoinapi returns the AssetIdCoinapi field if non-nil, zero value otherwise.

### GetAssetIdCoinapiOk

`func (o *BalanceDataInner) GetAssetIdCoinapiOk() (*string, bool)`

GetAssetIdCoinapiOk returns a tuple with the AssetIdCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdCoinapi

`func (o *BalanceDataInner) SetAssetIdCoinapi(v string)`

SetAssetIdCoinapi sets AssetIdCoinapi field to given value.

### HasAssetIdCoinapi

`func (o *BalanceDataInner) HasAssetIdCoinapi() bool`

HasAssetIdCoinapi returns a boolean if a field has been set.

### GetBalance

`func (o *BalanceDataInner) GetBalance() float64`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *BalanceDataInner) GetBalanceOk() (*float64, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *BalanceDataInner) SetBalance(v float64)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *BalanceDataInner) HasBalance() bool`

HasBalance returns a boolean if a field has been set.

### GetAvailable

`func (o *BalanceDataInner) GetAvailable() float64`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *BalanceDataInner) GetAvailableOk() (*float64, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *BalanceDataInner) SetAvailable(v float64)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *BalanceDataInner) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetLocked

`func (o *BalanceDataInner) GetLocked() float64`

GetLocked returns the Locked field if non-nil, zero value otherwise.

### GetLockedOk

`func (o *BalanceDataInner) GetLockedOk() (*float64, bool)`

GetLockedOk returns a tuple with the Locked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocked

`func (o *BalanceDataInner) SetLocked(v float64)`

SetLocked sets Locked field to given value.

### HasLocked

`func (o *BalanceDataInner) HasLocked() bool`

HasLocked returns a boolean if a field has been set.

### GetLastUpdatedBy

`func (o *BalanceDataInner) GetLastUpdatedBy() string`

GetLastUpdatedBy returns the LastUpdatedBy field if non-nil, zero value otherwise.

### GetLastUpdatedByOk

`func (o *BalanceDataInner) GetLastUpdatedByOk() (*string, bool)`

GetLastUpdatedByOk returns a tuple with the LastUpdatedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUpdatedBy

`func (o *BalanceDataInner) SetLastUpdatedBy(v string)`

SetLastUpdatedBy sets LastUpdatedBy field to given value.

### HasLastUpdatedBy

`func (o *BalanceDataInner) HasLastUpdatedBy() bool`

HasLastUpdatedBy returns a boolean if a field has been set.

### GetRateUsd

`func (o *BalanceDataInner) GetRateUsd() float64`

GetRateUsd returns the RateUsd field if non-nil, zero value otherwise.

### GetRateUsdOk

`func (o *BalanceDataInner) GetRateUsdOk() (*float64, bool)`

GetRateUsdOk returns a tuple with the RateUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateUsd

`func (o *BalanceDataInner) SetRateUsd(v float64)`

SetRateUsd sets RateUsd field to given value.

### HasRateUsd

`func (o *BalanceDataInner) HasRateUsd() bool`

HasRateUsd returns a boolean if a field has been set.

### GetTraded

`func (o *BalanceDataInner) GetTraded() float64`

GetTraded returns the Traded field if non-nil, zero value otherwise.

### GetTradedOk

`func (o *BalanceDataInner) GetTradedOk() (*float64, bool)`

GetTradedOk returns a tuple with the Traded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTraded

`func (o *BalanceDataInner) SetTraded(v float64)`

SetTraded sets Traded field to given value.

### HasTraded

`func (o *BalanceDataInner) HasTraded() bool`

HasTraded returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


