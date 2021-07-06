package v1

import (
	"go-ws/api/types"
	"log"
)

func (s SDKImpl) getWSConfig() (wsCfg *types.WsConfig) {
	url := getUrl(s.config.EnvironmentType)
	wsCfg = &types.WsConfig{
		ApiKey:   s.config.ApiKey,
		Endpoint: url,
	}
	return wsCfg
}

func printRawMsg(message []byte) {
	msg := string(message)
	log.Println("raw message: ")
	log.Println(msg)
}
