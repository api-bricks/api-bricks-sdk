package v1

import (
	"github.com/gorilla/websocket"
	. "go-ws/api/types"
)

type SDKImpl struct {
	config *SdkConfig
}

var (
	con      *websocket.Conn
	stopC    chan struct{}
	doneC    chan struct{}
	running  bool
	helloMsg *Hello
)

var (
	// data handlers
	tradesInvoke   InvokeFunction
	quotesInvoke   InvokeFunction
	bookInvoke     InvokeFunction
	ohlcvInvoke    InvokeFunction
	volumeInvoke   InvokeFunction
	exchangeInvoke InvokeFunction
	// sys handlers
	errorInvoke     InvokeFunction
	heartBeatInvoke InvokeFunction
	reconnectInvoke InvokeFunction
)

func NewCoinApiSDKV1(sdkConfig *SdkConfig) (sdk *SDKImpl) {
	sdk = &SDKImpl{sdkConfig}
	sdk.init()
	return sdk
}

func (s SDKImpl) init() {
	_ = s.OpenConnection() // errors get handled inside connect()
}
