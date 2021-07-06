package v1

import (
	"go-ws/api/types"
	"log"
)

func (s SDKImpl) SendHello(hello *types.Hello) (err error) {

	b, err := hello.GetJSON()
	logError(err)

	err = con.WriteMessage(1, b)
	if err != nil {
		log.Println("can't send Hello message!")
		logError(err)
		return err
	}

	// store last hello message in case of a hard re-connect.
	s.setHelloMessage(hello)

	if running == false {
		err = s.startProcessing()
		if err != nil {
			log.Println("can't start message processing!")
			logError(err)
			return err
		}
		running = true
	}
	return err
}

func (s SDKImpl) startProcessing() (err error) {
	errHandler := logError
	handler := s.getWSHandler(errHandler)
	doneC, stopC, err = s.process(handler, errHandler)
	if err != nil {
		log.Println("error starting message processing!")
		logError(err)
		running = false
		return err
	}
	running = true
	return nil
}

func (s SDKImpl) process(handler types.WsHandler, errHandler types.WsErrHandler) (doneC, stopC chan struct{}, err error) {

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
					log.Println("Error reading message!")
					errHandler(err)
				}
				return
			}

			//
			//printRawMsg(message)
			handler(message)
		}
	}()
	return
}
