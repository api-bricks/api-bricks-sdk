package v1

import (
	"github.com/gorilla/websocket"
	"log"
)

func (s SDKImpl) OpenConnection() (err error) {
	mtd := "connect: "
	wsConfig := s.getWSConfig()
	url := wsConfig.Endpoint
	con, _, err = websocket.DefaultDialer.Dial(wsConfig.Endpoint, nil)
	if err != nil {
		log.Println(mtd, err)
		panic(mtd + "Cannot connect to: " + url)
	}
	running = false
	return err
}

func (s SDKImpl) CloseConnection() (err error) {

	// Stop processing messages
	running = false

	// close WS channel if its not yet fully closed!
	// The nil check, however, seems not very effective to determine if a channel is already closed, but it prevents NPE.
	if stopC != nil {
		close(stopC)
	}

	// closes connection before message processing!
	// When closing the underlying connection, message processing would throw useOfCloseConnection warnings
	if doneC != nil {
		close(doneC)
	}

	return nil
}

func (s SDKImpl) Reconnect() (err error) {

	err = s.CloseConnection()
	logError(err)

	err = s.OpenConnection()
	logError(err)

	hello := s.getHelloMessage()

	err = s.SendHello(hello)
	logError(err)

	return err
}
