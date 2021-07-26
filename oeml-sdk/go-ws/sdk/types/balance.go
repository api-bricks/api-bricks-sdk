package types

import (
	"encoding/json"
	"fmt"
)

// Balance struct for Balance
type Balance struct {
	// Exchange identifier used to identify the routing destination.
	ExchangeId *string        `json:"exchange_id,omitempty"`
	Data       *[]BalanceData `json:"data,omitempty"`
}

func (o *Balance) String() string {
	return fmt.Sprintf("<Balance> ExchangeId: %v, Data: %v",
		o.GetExchangeId(),
		o.GetData(),
	)
}

// GetExchangeId returns the ExchangeId field value if set, zero value otherwise.
func (o *Balance) GetExchangeId() string {
	if o == nil || o.ExchangeId == nil {
		var ret string
		return ret
	}
	return *o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Balance) GetExchangeIdOk() (*string, bool) {
	if o == nil || o.ExchangeId == nil {
		return nil, false
	}
	return o.ExchangeId, true
}

// HasExchangeId returns a boolean if a field has been set.
func (o *Balance) HasExchangeId() bool {
	if o != nil && o.ExchangeId != nil {
		return true
	}

	return false
}

// SetExchangeId gets a reference to the given string and assigns it to the ExchangeId field.
func (o *Balance) SetExchangeId(v string) {
	o.ExchangeId = &v
}

// GetData returns the Data field value if set, zero value otherwise.
func (o *Balance) GetData() []BalanceData {
	if o == nil || o.Data == nil {
		var ret []BalanceData
		return ret
	}
	return *o.Data
}

// GetDataOk returns a tuple with the Data field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Balance) GetDataOk() (*[]BalanceData, bool) {
	if o == nil || o.Data == nil {
		return nil, false
	}
	return o.Data, true
}

// HasData returns a boolean if a field has been set.
func (o *Balance) HasData() bool {
	if o != nil && o.Data != nil {
		return true
	}

	return false
}

// SetData gets a reference to the given []BalanceData and assigns it to the Data field.
func (o *Balance) SetData(v []BalanceData) {
	o.Data = &v
}

func (o Balance) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.ExchangeId != nil {
		toSerialize["exchange_id"] = o.ExchangeId
	}
	if o.Data != nil {
		toSerialize["data"] = o.Data
	}
	return json.Marshal(toSerialize)
}

type NullableBalance struct {
	value *Balance
	isSet bool
}

func (v NullableBalance) Get() *Balance {
	return v.value
}

func (v *NullableBalance) Set(val *Balance) {
	v.value = val
	v.isSet = true
}

func (v NullableBalance) IsSet() bool {
	return v.isSet
}

func (v *NullableBalance) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableBalance(val *Balance) *NullableBalance {
	return &NullableBalance{value: val, isSet: true}
}

func (v NullableBalance) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableBalance) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
