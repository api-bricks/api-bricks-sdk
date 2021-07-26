package v1

import (
	types2 "go-ws/sdk/types"
)

func (s SDKImpl) NewSingleOrderRequest(exchangeId, symbolIdCoinApi string, clientOrderId string, amountOrder float64, price float64, side types2.OrdSide, orderType types2.OrdType, timeInForce types2.TimeInForce) (req *types2.OrderNewSingleRequest) {
	req = &types2.OrderNewSingleRequest{
		Type:            types2.ORDER_NEW_SINGLE_REQUEST,
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
func (s SDKImpl) NewCancelSingleOrderRequest(exchangeId, clientOrderId string) (req *types2.OrderCancelSingleRequest) {

	r := new(types2.OrderCancelSingleRequest)
	r.Type = types2.ORDER_CANCEL_SINGLE_REQUEST
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
func (s SDKImpl) NewCancelAllOrdersRequest(exchangeId string) (req *types2.OrderCancelAllRequest) {
	req = &types2.OrderCancelAllRequest{
		Type:       types2.ORDER_CANCEL_ALL_REQUEST,
		ExchangeId: exchangeId,
	}
	return req
}
