package types

import (
	"encoding/json"
	"fmt"
)

// TimeInForce Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a>
type TimeInForce string

// List of TimeInForce
const (
	GOOD_TILL_CANCEL        TimeInForce = "GOOD_TILL_CANCEL"
	GOOD_TILL_TIME_EXCHANGE TimeInForce = "GOOD_TILL_TIME_EXCHANGE"
	GOOD_TILL_TIME_OMS      TimeInForce = "GOOD_TILL_TIME_OMS"
	FILL_OR_KILL            TimeInForce = "FILL_OR_KILL"
	IMMEDIATE_OR_CANCEL     TimeInForce = "IMMEDIATE_OR_CANCEL"
)

var allowedTimeInForceEnumValues = []TimeInForce{
	"GOOD_TILL_CANCEL",
	"GOOD_TILL_TIME_EXCHANGE",
	"GOOD_TILL_TIME_OMS",
	"FILL_OR_KILL",
	"IMMEDIATE_OR_CANCEL",
}

func (v *TimeInForce) String() string {
	switch *v {
	case GOOD_TILL_CANCEL:
		return "GOOD_TILL_CANCEL"
	case GOOD_TILL_TIME_EXCHANGE:
		return "GOOD_TILL_TIME_EXCHANGE"
	case GOOD_TILL_TIME_OMS:
		return "GOOD_TILL_TIME_OMS"
	case FILL_OR_KILL:
		return "FILL_OR_KILL"
	case IMMEDIATE_OR_CANCEL:
		return "IMMEDIATE_OR_CANCEL"
	default:
		return "UNKNOWN TimeInForce"
	}
}

func (v *TimeInForce) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := TimeInForce(value)
	for _, existing := range allowedTimeInForceEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid TimeInForce", value)
}

// NewTimeInForceFromValue returns a pointer to a valid TimeInForce
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewTimeInForceFromValue(v string) (*TimeInForce, error) {
	ev := TimeInForce(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for TimeInForce: valid values are %v", v, allowedTimeInForceEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v TimeInForce) IsValid() bool {
	for _, existing := range allowedTimeInForceEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to TimeInForce value
func (v TimeInForce) Ptr() *TimeInForce {
	return &v
}

type NullableTimeInForce struct {
	value *TimeInForce
	isSet bool
}

func (v NullableTimeInForce) Get() *TimeInForce {
	return v.value
}

func (v *NullableTimeInForce) Set(val *TimeInForce) {
	v.value = val
	v.isSet = true
}

func (v NullableTimeInForce) IsSet() bool {
	return v.isSet
}

func (v *NullableTimeInForce) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTimeInForce(val *TimeInForce) *NullableTimeInForce {
	return &NullableTimeInForce{value: val, isSet: true}
}

func (v NullableTimeInForce) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTimeInForce) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
