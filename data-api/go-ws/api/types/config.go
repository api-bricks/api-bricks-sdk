package types

type SdkConfig struct {
	ApiKey          string
	ApiVersion      ApiVersion
	EnvironmentType EnvironmentType
	ReconnectType   ReconnectType
}

// WsConfig webservice configuration
type WsConfig struct {
	ApiKey             string
	Endpoint           string
	WebsocketKeepalive bool
	WebsocketTimeout   int
}
