package types

import (
	"bytes"
	"encoding/json"
	"github.com/iancoleman/orderedmap"
	"log"
)

// OrderCancelSingleRequest Cancel single order request object.
type OrderCancelSingleRequest struct {
	// Message type to identity the request
	Type MessageType `json:"type"`
	// Exchange identifier used to identify the routing destination.
	ExchangeId string `json:"exchange_id"`
	// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	ExchangeOrderId *string `json:"exchange_order_id,omitempty"`
	// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	ClientOrderId *string `json:"client_order_id,omitempty"`
}

// NewOrderCancelSingleRequest instantiates a new OrderCancelSingleRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOrderCancelSingleRequest(exchangeId string) *OrderCancelSingleRequest {
	this := OrderCancelSingleRequest{}
	this.ExchangeId = exchangeId
	return &this
}

// NewOrderCancelSingleRequestWithDefaults instantiates a new OrderCancelSingleRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOrderCancelSingleRequestWithDefaults() *OrderCancelSingleRequest {
	this := OrderCancelSingleRequest{}
	return &this
}

// GetExchangeId returns the ExchangeId field value
func (o *OrderCancelSingleRequest) GetExchangeId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value
// and a boolean to check if the value has been set.
func (o *OrderCancelSingleRequest) GetExchangeIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ExchangeId, true
}

// SetExchangeId sets field value
func (o *OrderCancelSingleRequest) SetExchangeId(v string) {
	o.ExchangeId = v
}

// GetExchangeOrderId returns the ExchangeOrderId field value if set, zero value otherwise.
func (o *OrderCancelSingleRequest) GetExchangeOrderId() string {
	if o == nil || o.ExchangeOrderId == nil {
		var ret string
		return ret
	}
	return *o.ExchangeOrderId
}

// GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderCancelSingleRequest) GetExchangeOrderIdOk() (*string, bool) {
	if o == nil || o.ExchangeOrderId == nil {
		return nil, false
	}
	return o.ExchangeOrderId, true
}

// HasExchangeOrderId returns a boolean if a field has been set.
func (o *OrderCancelSingleRequest) HasExchangeOrderId() bool {
	if o != nil && o.ExchangeOrderId != nil {
		return true
	}

	return false
}

// SetExchangeOrderId gets a reference to the given string and assigns it to the ExchangeOrderId field.
func (o *OrderCancelSingleRequest) SetExchangeOrderId(v string) {
	o.ExchangeOrderId = &v
}

// GetClientOrderId returns the ClientOrderId field value if set, zero value otherwise.
func (o *OrderCancelSingleRequest) GetClientOrderId() string {
	if o == nil || o.ClientOrderId == nil {
		var ret string
		return ret
	}
	return *o.ClientOrderId
}

// GetClientOrderIdOk returns a tuple with the ClientOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderCancelSingleRequest) GetClientOrderIdOk() (*string, bool) {
	if o == nil || o.ClientOrderId == nil {
		return nil, false
	}
	return o.ClientOrderId, true
}

// HasClientOrderId returns a boolean if a field has been set.
func (o *OrderCancelSingleRequest) HasClientOrderId() bool {
	if o != nil && o.ClientOrderId != nil {
		return true
	}

	return false
}

// SetClientOrderId gets a reference to the given string and assigns it to the ClientOrderId field.
func (o *OrderCancelSingleRequest) SetClientOrderId(v string) {
	o.ClientOrderId = &v
}

func (o OrderCancelSingleRequest) MarshalJSON() (b []byte, err error) {
	oMap := orderedmap.New()
	oMap.SetEscapeHTML(false)
	oMap.Set("type", o.Type)
	oMap.Set("exchange_id", o.ExchangeId)
	if o.ExchangeOrderId == nil {
		oMap.Set("client_order_id", o.ClientOrderId)
	}
	if o.ClientOrderId == nil {
		oMap.Set("exchange_order_id", o.ExchangeOrderId)
	}

	b, err = json.Marshal(oMap)
	if err != nil {
		log.Println("Error marshaling Hello object")
		log.Println(err)
		return nil, err
	}

	var prettyJSON bytes.Buffer
	err = json.Indent(&prettyJSON, b, "", "\t")
	if err != nil {
		log.Println("Error making JSON pretty")
		log.Println(err)
		return nil, err
	}

	return b, err
}
