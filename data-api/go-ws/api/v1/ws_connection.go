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
	if stopC != nil {
		close(stopC)
	}

	// close connection
	err = con.Close()
	if err != nil {
		//log.Println("can't close connection")
		log.Println(err)
	}
	return err
}

func (s SDKImpl) ResetConnection() (err error) {

	err = s.CloseConnection()
	logError(err)

	err = s.OpenConnection()
	logError(err)

	hello := s.getHelloMessage()

	err = s.SendHello(hello)
	logError(err)

	return err
}
