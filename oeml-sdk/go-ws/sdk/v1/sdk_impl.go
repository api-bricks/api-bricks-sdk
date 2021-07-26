package v1

import (
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/types"
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/web_socket"
)

type SDKImpl struct {
	url *string
}

// AssetKey is a composite key for a hashmap to access symbol description
// https://stackoverflow.com/questions/52348514/how-to-make-composite-key-for-a-hash-map-in-golang
type AssetKey struct {
	Base, Quote string
}

var (
	errorMessageInvoke   types.InvokeFunction
	serverInfoInvoke     types.InvokeFunction
	symbolSnapshotInvoke types.InvokeFunction

	executionUpdateInvoke   types.InvokeFunction
	executionSnapshotInvoke types.InvokeFunction
	balanceUpdateInvoke     types.InvokeFunction
	balanceSnapshotInvoke   types.InvokeFunction
	positionUpdateInvoke    types.InvokeFunction
	positionSnapshotInvoke  types.InvokeFunction
	//
	ws        *web_socket.WebSocket
	symbolMap map[string]map[AssetKey]types.SymbolData
)

func NewOemlSdkV1(url string) (sdk *SDKImpl) {
	sdk = new(SDKImpl)
	sdk.init(url)
	return sdk
}

func (s SDKImpl) init(url string) {
	symbolMap = make(map[string]map[AssetKey]types.SymbolData)
	ws = web_socket.NewWebSocket(url)
	s.url = &url
	err := s.StartMessageProcessing()
	if err != nil {
		logError(err)
		panic(err)
	}
}

func (s SDKImpl) OpenConnection() (err error) {
	url := *s.url
	err = ws.Connect(url, nil)
	return err
}

func (s SDKImpl) CloseConnection() (err error) {
	s.StopMessageProcessing()
	err = ws.Close()
	if err != nil {
		//log.Println("Can't close connection")
		//logError(err)
		return
	}
	return err
}

func (s SDKImpl) ResetConnection() (err error) {
	s.StopMessageProcessing()
	err = s.CloseConnection()
	logError(err)

	err = s.OpenConnection()
	logError(err)

	err = s.StartMessageProcessing()
	logError(err)
	return err
}
