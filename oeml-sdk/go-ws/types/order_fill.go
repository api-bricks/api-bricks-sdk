package types

import (
	"encoding/json"
	"fmt"
)

// Fills struct for Fills
type Fills struct {
	// Execution time.
	Time *string `json:"time,omitempty"`
	// Execution price.
	Price *float64 `json:"price,omitempty"`
	// Executed quantity.
	Amount *float64 `json:"amount,omitempty"`
}

func (o *Fills) String() string {
	return fmt.Sprintf("<Fills> Time: %v, Price: %v, Amount: %v",
		o.Time,
		o.Price,
		o.Amount,
	)
}

// NewFills instantiates a new Fills object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFills() *Fills {
	this := Fills{}
	return &this
}

// NewFillsWithDefaults instantiates a new Fills object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFillsWithDefaults() *Fills {
	this := Fills{}
	return &this
}

// GetTime returns the Time field value if set, zero value otherwise.
func (o *Fills) GetTime() string {
	if o == nil || o.Time == nil {
		var ret string
		return ret
	}
	return *o.Time
}

// GetTimeOk returns a tuple with the Time field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Fills) GetTimeOk() (*string, bool) {
	if o == nil || o.Time == nil {
		return nil, false
	}
	return o.Time, true
}

// HasTime returns a boolean if a field has been set.
func (o *Fills) HasTime() bool {
	if o != nil && o.Time != nil {
		return true
	}

	return false
}

// SetTime gets a reference to the given string and assigns it to the Time field.
func (o *Fills) SetTime(v string) {
	o.Time = &v
}

// GetPrice returns the Price field value if set, zero value otherwise.
func (o *Fills) GetPrice() float64 {
	if o == nil || o.Price == nil {
		var ret float64
		return ret
	}
	return *o.Price
}

// GetPriceOk returns a tuple with the Price field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Fills) GetPriceOk() (*float64, bool) {
	if o == nil || o.Price == nil {
		return nil, false
	}
	return o.Price, true
}

// HasPrice returns a boolean if a field has been set.
func (o *Fills) HasPrice() bool {
	if o != nil && o.Price != nil {
		return true
	}

	return false
}

// SetPrice gets a reference to the given float64 and assigns it to the Price field.
func (o *Fills) SetPrice(v float64) {
	o.Price = &v
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *Fills) GetAmount() float64 {
	if o == nil || o.Amount == nil {
		var ret float64
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Fills) GetAmountOk() (*float64, bool) {
	if o == nil || o.Amount == nil {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *Fills) HasAmount() bool {
	if o != nil && o.Amount != nil {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float64 and assigns it to the Amount field.
func (o *Fills) SetAmount(v float64) {
	o.Amount = &v
}

func (o Fills) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Time != nil {
		toSerialize["time"] = o.Time
	}
	if o.Price != nil {
		toSerialize["price"] = o.Price
	}
	if o.Amount != nil {
		toSerialize["amount"] = o.Amount
	}
	return json.Marshal(toSerialize)
}

type NullableFills struct {
	value *Fills
	isSet bool
}

func (v NullableFills) Get() *Fills {
	return v.value
}

func (v *NullableFills) Set(val *Fills) {
	v.value = val
	v.isSet = true
}

func (v NullableFills) IsSet() bool {
	return v.isSet
}

func (v *NullableFills) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFills(val *Fills) *NullableFills {
	return &NullableFills{value: val, isSet: true}
}

func (v NullableFills) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFills) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
