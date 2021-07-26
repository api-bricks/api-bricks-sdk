package v1

import (
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/types"
)

func (s SDKImpl) NewSingleOrderRequest(exchangeId, symbolIdCoinApi string, clientOrderId string, amountOrder float64, price float64, side types.OrdSide, orderType types.OrdType, timeInForce types.TimeInForce) (req *types.OrderNewSingleRequest) {
	req = &types.OrderNewSingleRequest{
		Type:            types.ORDER_NEW_SINGLE_REQUEST,
		ExchangeId:      exchangeId,
		SymbolIdCoinapi: &symbolIdCoinApi,
		ClientOrderId:   clientOrderId,
		AmountOrder:     amountOrder,
		Price:           price,
		Side:            side,
		OrderType:       orderType,
		TimeInForce:     timeInForce,
	}
	return req
}

// NewCancelSingleOrderRequest constructs a new cancel request.
// One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the order.
// exchangeId: 	Identifier of the exchange from which active orders should be canceled.
func (s SDKImpl) NewCancelSingleOrderRequest(exchangeId, clientOrderId string) (req *types.OrderCancelSingleRequest) {

	r := new(types.OrderCancelSingleRequest)
	r.Type = types.ORDER_CANCEL_SINGLE_REQUEST
	r.ExchangeId = exchangeId
	if clientOrderId == "" {
		panic("Missing Client order ID")
	} else {
		r.ClientOrderId = &clientOrderId
	}
	return r
}

// NewCancelAllOrdersRequest cancels all open orders at the exchange
// exchangeId: 	Identifier of the exchange from which active orders should be canceled.
func (s SDKImpl) NewCancelAllOrdersRequest(exchangeId string) (req *types.OrderCancelAllRequest) {
	req = &types.OrderCancelAllRequest{
		Type:       types.ORDER_CANCEL_ALL_REQUEST,
		ExchangeId: exchangeId,
	}
	return req
}
