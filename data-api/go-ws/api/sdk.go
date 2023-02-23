package api

import . "go-ws/api/types"

func NewSDK(apiKey string) (sdk SDK) {
	validateApiKey(apiKey)
	config := getSDKConfig(apiKey)
	sdk = getSDK(config)
	return sdk
}
