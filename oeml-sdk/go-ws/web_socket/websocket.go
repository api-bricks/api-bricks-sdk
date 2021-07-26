package web_socket

import (
	"github.com/gorilla/websocket"
	"log"
	"net/http"
)

type WebSocket struct{}

var (
	con   *websocket.Conn
	stopC chan struct{}
	doneC chan struct{}
)

func NewWebSocket(url string) (ws *WebSocket) {
	ws = new(WebSocket)
	ws.init(url)
	return ws
}
func (s *WebSocket) init(url string) {
	_ = s.Connect(url, nil)
}

func (s *WebSocket) Connect(url string, requestHeader http.Header) (err error) {
	con, _, err = websocket.DefaultDialer.Dial(url, nil)
	if err != nil {
		logError(err)
		panic("Cannot connect to: " + url)
	}
	return err
}

func (s *WebSocket) Close() (err error) {
	con.CloseHandler()
	err = con.Close()
	if err != nil {
		//log.Println("Can't close connection")
		//logError(err)
		return
	}
	return err
}

func (s *WebSocket) StopReadingByteMessages() {
	if stopC != nil {
		close(stopC)
	}
}

func (s *WebSocket) WriteByteMessage(byteMessage []byte) (err error) {
	err = con.WriteMessage(1, byteMessage)
	if err != nil {
		log.Println("can't send message: " + string(byteMessage))
		logError(err)
		return err
	}
	return nil
}

func (s *WebSocket) StartReadingByteMessages(messageHandler WsHandler, errorHandler WsErrHandler) (err error) {

	doneC = make(chan struct{})
	stopC = make(chan struct{})

	go func() {
		// This function will exit either on error from ReadMessage
		// or when the stopC channel is closed by the client.
		defer close(doneC)

		// Wait for the stopC channel to be closed.  We do that in a
		// separate goroutine because ReadMessage is a blocking  operation.
		silent := false
		go func() {
			select {
			case <-stopC:
				silent = true
			case <-doneC:
			}
			_ = con.Close()
		}()

		var message []byte
		for {
			_, message, err = con.ReadMessage()
			if err != nil {
				if !silent {
					errorHandler(err)
				}
				return
			}
			//printRawMsg(message)
			messageHandler(message)
		}
	}()
	return
}
