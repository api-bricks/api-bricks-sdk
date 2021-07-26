package types

import (
	"encoding/json"
	"fmt"
)

// OrdType Order types are documented in the separate section: <a href=\"#oeml-order-params-type\">OEML / Starter Guide / Order parameters / Order type</a>
type OrdType string

// List of OrdType
const (
	LIMIT OrdType = "LIMIT"
)

var allowedOrdTypeEnumValues = []OrdType{
	"LIMIT",
}

func (v *OrdType) String() string {
	switch *v {
	case LIMIT:
		return "LIMIT"
	default:
		return "UNKNOWN OrdType"
	}
}

func (v *OrdType) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OrdType(value)
	for _, existing := range allowedOrdTypeEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OrdType", value)
}

// NewOrdTypeFromValue returns a pointer to a valid OrdType
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOrdTypeFromValue(v string) (*OrdType, error) {
	ev := OrdType(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OrdType: valid values are %v", v, allowedOrdTypeEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OrdType) IsValid() bool {
	for _, existing := range allowedOrdTypeEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OrdType value
func (v OrdType) Ptr() *OrdType {
	return &v
}

type NullableOrdType struct {
	value *OrdType
	isSet bool
}

func (v NullableOrdType) Get() *OrdType {
	return v.value
}

func (v *NullableOrdType) Set(val *OrdType) {
	v.value = val
	v.isSet = true
}

func (v NullableOrdType) IsSet() bool {
	return v.isSet
}

func (v *NullableOrdType) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrdType(val *OrdType) *NullableOrdType {
	return &NullableOrdType{value: val, isSet: true}
}

func (v NullableOrdType) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrdType) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
