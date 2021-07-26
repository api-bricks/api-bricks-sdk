package types

import (
	"encoding/json"
	"fmt"
)

// OrdStatus Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a>
type OrdStatus string

// List of OrdStatus
const (
	RECEIVED         OrdStatus = "RECEIVED"
	ROUTING          OrdStatus = "ROUTING"
	ROUTED           OrdStatus = "ROUTED"
	NEW              OrdStatus = "NEW"
	PENDING_CANCEL   OrdStatus = "PENDING_CANCEL"
	PARTIALLY_FILLED OrdStatus = "PARTIALLY_FILLED"
	FILLED           OrdStatus = "FILLED"
	CANCELED         OrdStatus = "CANCELED"
	REJECTED         OrdStatus = "REJECTED"
)

var allowedOrdStatusEnumValues = []OrdStatus{
	"RECEIVED",
	"ROUTING",
	"ROUTED",
	"NEW",
	"PENDING_CANCEL",
	"PARTIALLY_FILLED",
	"FILLED",
	"CANCELED",
	"REJECTED",
}

func (v *OrdStatus) String() string {
	switch *v {
	case RECEIVED:
		return "RECEIVED"
	case ROUTING:
		return "ROUTING"
	case ROUTED:
		return "ROUTED"
	case NEW:
		return "NEW"
	case PENDING_CANCEL:
		return "PENDING_CANCEL"
	case PARTIALLY_FILLED:
		return "PARTIALLY_FILLED"
	case FILLED:
		return "FILLED"
	case CANCELED:
		return "CANCELED"
	case REJECTED:
		return "REJECTED"
	default:
		return "UNKNOWN OrdStatus"
	}
}

func (v *OrdStatus) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OrdStatus(value)
	for _, existing := range allowedOrdStatusEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OrdStatus", value)
}

// NewOrdStatusFromValue returns a pointer to a valid OrdStatus
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOrdStatusFromValue(v string) (*OrdStatus, error) {
	ev := OrdStatus(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OrdStatus: valid values are %v", v, allowedOrdStatusEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OrdStatus) IsValid() bool {
	for _, existing := range allowedOrdStatusEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OrdStatus value
func (v OrdStatus) Ptr() *OrdStatus {
	return &v
}

type NullableOrdStatus struct {
	value *OrdStatus
	isSet bool
}

func (v NullableOrdStatus) Get() *OrdStatus {
	return v.value
}

func (v *NullableOrdStatus) Set(val *OrdStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableOrdStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableOrdStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrdStatus(val *OrdStatus) *NullableOrdStatus {
	return &NullableOrdStatus{value: val, isSet: true}
}

func (v NullableOrdStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrdStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
