package types

import (
	"bytes"
	"encoding/json"
	"github.com/iancoleman/orderedmap"
	"log"
)

type OrderCancelAllRequest struct {
	// Message type to identity the request
	Type MessageType `json:"type"`
	// Identifier of the exchange from which active orders should be canceled.
	ExchangeId string `json:"exchange_id"`
}

func (o OrderCancelAllRequest) MarshalJSON() (b []byte, err error) {

	oMap := orderedmap.New()
	oMap.SetEscapeHTML(false)
	oMap.Set("type", o.Type)
	oMap.Set("exchange_id", o.ExchangeId)

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
