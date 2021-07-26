package types

import (
	"encoding/json"
	"fmt"
)

// Severity Severity of the message.
type Severity string

// List of Severity
const (
	INFO    Severity = "INFO"
	WARNING Severity = "WARNING"
	ERROR   Severity = "ERROR"
)

var allowedSeverityEnumValues = []Severity{
	"INFO",
	"WARNING",
	"ERROR",
}

func (v *Severity) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := Severity(value)
	for _, existing := range allowedSeverityEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid Severity", value)
}

// NewSeverityFromValue returns a pointer to a valid Severity
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewSeverityFromValue(v string) (*Severity, error) {
	ev := Severity(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for Severity: valid values are %v", v, allowedSeverityEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v Severity) IsValid() bool {
	for _, existing := range allowedSeverityEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to Severity value
func (v Severity) Ptr() *Severity {
	return &v
}

type NullableSeverity struct {
	value *Severity
	isSet bool
}

func (v NullableSeverity) Get() *Severity {
	return v.value
}

func (v *NullableSeverity) Set(val *Severity) {
	v.value = val
	v.isSet = true
}

func (v NullableSeverity) IsSet() bool {
	return v.isSet
}

func (v *NullableSeverity) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSeverity(val *Severity) *NullableSeverity {
	return &NullableSeverity{value: val, isSet: true}
}

func (v NullableSeverity) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSeverity) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
