// Copyright (c) 2021. Marvin Friedrich Lars Hansen. All Rights Reserved. Contact: marvin.hansen@gmail.com

package types

import "fmt"

type Symbols struct {
	// Exchange identifier used to identify the routing destination.
	ExchangeId *string       `json:"exchange_id,omitempty"`
	Data       *[]SymbolData `json:"data,omitempty"`
}

func (s Symbols) String() string {
	return fmt.Sprintf("<Symbols> ExchangeId: %v, Data: %v",
		*s.ExchangeId,
		*s.Data,
	)
}
