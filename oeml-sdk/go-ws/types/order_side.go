package types

import (
	"encoding/json"
	"fmt"
)

// OrdSide Side of order.
type OrdSide string

// List of OrdSide
const (
	BUY  OrdSide = "BUY"
	SELL OrdSide = "SELL"
)

var allowedOrdSideEnumValues = []OrdSide{
	"BUY",
	"SELL",
}

func (v *OrdSide) String() string {
	switch *v {
	case BUY:
		return "BUY"
	case SELL:
		return "SELL"
	default:
		return "UNKNOWN OrdSide"
	}
}

func (v *OrdSide) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OrdSide(value)
	for _, existing := range allowedOrdSideEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OrdSide", value)
}

// NewOrdSideFromValue returns a pointer to a valid OrdSide
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOrdSideFromValue(v string) (*OrdSide, error) {
	ev := OrdSide(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OrdSide: valid values are %v", v, allowedOrdSideEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OrdSide) IsValid() bool {
	for _, existing := range allowedOrdSideEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OrdSide value
func (v OrdSide) Ptr() *OrdSide {
	return &v
}

type NullableOrdSide struct {
	value *OrdSide
	isSet bool
}

func (v NullableOrdSide) Get() *OrdSide {
	return v.value
}

func (v *NullableOrdSide) Set(val *OrdSide) {
	v.value = val
	v.isSet = true
}

func (v NullableOrdSide) IsSet() bool {
	return v.isSet
}

func (v *NullableOrdSide) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrdSide(val *OrdSide) *NullableOrdSide {
	return &NullableOrdSide{value: val, isSet: true}
}

func (v NullableOrdSide) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrdSide) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
