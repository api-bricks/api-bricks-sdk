package v1

import (
	"encoding/json"
	"github.com/bitly/go-simplejson"
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/types"
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/web_socket"
	"log"
)

func (s SDKImpl) StopMessageProcessing() {
	ws.StopReadingByteMessages()
}

func (s SDKImpl) StartMessageProcessing() (err error) {
	errHandler := logError
	handler := s.getWSMessageHandler(errHandler)
	err = ws.StartReadingByteMessages(handler, errHandler)
	if err != nil {
		log.Println("error starting message processing!")
		logError(err)
		return err
	}
	return nil
}

func (s SDKImpl) getWSErrorHandler() (errHandler web_socket.WsErrHandler) {
	errHandler = func(err error) {
		if err != nil {
			log.Println(err)
		}
	}
	return errHandler
}

func (s SDKImpl) getWSMessageHandler(errHandler web_socket.WsErrHandler) (wsHandler web_socket.WsHandler) {
	wsHandler = func(message []byte) {
		err := s.processMessage(message, errHandler)
		errHandler(err)
	}
	return wsHandler
}

func (s SDKImpl) processMessage(message []byte, errHandler web_socket.WsErrHandler) (err error) {
	var dataMessage = new(types.OemlMessage)
	messageType := s.getMessageType(message, errHandler)
	dataMessage.MessageType = &messageType

	switch messageType {

	case types.ORDER_EXEC_REPORT_SNAPSHOT:
		// https://docs.coinapi.io/oeml.html#order_exec_report_snapshot-in
		msg := new(types.OrderExecutionReport)
		_ = json.Unmarshal(message, msg)
		dataMessage.OrderExecutionReportSnapshot = msg
		err = executionSnapshotInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.ORDER_EXEC_REPORT_UPDATE:
		// https://docs.coinapi.io/oeml.html#order_exec_report_update-in
		msg := new(types.OrderExecutionReport)
		_ = json.Unmarshal(message, msg)
		dataMessage.OrderExecutionReportUpdate = msg
		err = executionUpdateInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.BALANCE_SNAPSHOT:
		// https://docs.coinapi.io/oeml.html#balance_snapshot-in
		msg := new(types.Balance)
		_ = json.Unmarshal(message, msg)
		dataMessage.BalanceSnapshot = msg
		err = balanceSnapshotInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.BALANCE_UPDATE:
		// https://docs.coinapi.io/oeml.html#balance_update-in
		msg := new(types.Balance)
		_ = json.Unmarshal(message, msg)
		dataMessage.BalanceUpdate = msg
		err = balanceUpdateInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.POSITION_SNAPSHOT:
		// https://docs.coinapi.io/oeml.html#position_snapshot-in
		msg := new(types.Position)
		_ = json.Unmarshal(message, msg)
		dataMessage.PositionSnapshot = msg
		err = positionSnapshotInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.POSITION_UPDATE:
		// https://docs.coinapi.io/oeml.html#position_update-in
		msg := new(types.Position)
		_ = json.Unmarshal(message, msg)
		dataMessage.PositionUpdate = msg
		err = positionUpdateInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.SYMBOLS_SNAPSHOT:
		// https://docs.coinapi.io/oeml.html#symbols_snapshot-in
		msg := new(types.Symbols)
		_ = json.Unmarshal(message, msg)
		dataMessage.SymbolSnapshot = msg

		exchangeID := *dataMessage.SymbolSnapshot.ExchangeId
		s.AddNewSymbolMap(exchangeID)
		for _, symbolData := range *dataMessage.SymbolSnapshot.Data {
			s.addSymbolData(exchangeID, symbolData)
		}

		err = symbolSnapshotInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.SERVER_INFO:
		// https://docs.coinapi.io/oeml.html#symbols_snapshot-in
		msg := new(types.ServerInfo)
		_ = json.Unmarshal(message, msg)
		dataMessage.ServerInfo = msg
		err = serverInfoInvoke(dataMessage)
		errHandler(err)
		return checkError(err)

	case types.MESSAGE_REJECT:
		// https://docs.coinapi.io/oeml.html#message_reject-in
		msg := new(types.MessageReject)
		_ = json.Unmarshal(message, msg)
		dataMessage.MessageReject = msg
		err = errorMessageInvoke(dataMessage)
		errHandler(err)
		return checkError(err)
	}

	return nil
}

func (s SDKImpl) getMessageType(message []byte, errHandler web_socket.WsErrHandler) (messageType types.MessageType) {
	j, err := newJSON(message)
	if err != nil {
		errHandler(err)
		return
	}
	messageType = types.MessageType(j.Get("type").MustString())
	return messageType
}

func newJSON(data []byte) (j *simplejson.Json, err error) {
	j, err = simplejson.NewJson(data)
	if err != nil {
		return nil, err
	}
	return j, nil
}
