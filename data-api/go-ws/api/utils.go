package api

import (
	. "go-ws/api/types"
	v1 "go-ws/api/v1"
	"strings"
)

func validateApiKey(apiKey string) {

	// Check if key empty
	if apiKey == "" {
		printErrorMessage("API key is empty!", "Add a valid API key to main!")
		panic("Invalid API KEY - Abort!")
	}

	// Check for test key
	if strings.Contains(apiKey, "SAMPLE-KEY") || strings.Contains(apiKey, "SAMPLE") || strings.Contains(apiKey, "TEST") {
		printErrorMessage("Inactive example key detected!", "Add your own valid API key to main!")
		panic("Invalid API KEY - Abort!")
	}

	// Check for copy & paste error. Test keys should be 36 characters long!
	// It's unclear to me if key length is fixed or dynamic, thus 21 seems to be the safest option.
	if len(apiKey) <= 21 {
		printErrorMessage("API key is too short. Should be 30 or more characters long!", "Add a valid API key to main!")
		panic("Invalid API KEY - Abort!")
	}
}

func printErrorMessage(problem, solution string) {
	println()
	println("Problem : ", problem)
	println("Solution: ", solution)
	println("Web Link:  https://www.coinapi.io/pricing?apikey")
	println()
}

func getSDKConfig(apiKey string) (sdkConfig *SdkConfig) {
	sdkConfig = &SdkConfig{
		ApiKey:          apiKey,
		ApiVersion:      ApiV1,
		EnvironmentType: TestInsecure,
		ReconnectType:   OnConnectionClose,
	}
	return sdkConfig
}

func getSDK(sdkConfig *SdkConfig) (sdk SDK) {
	switch sdkConfig.ApiVersion {
	case ApiV1:
		// Bind interface to implementation matching the selected API version.
		sdk = v1.NewCoinApiSDKV1(sdkConfig)

	default:
		sdk = v1.NewCoinApiSDKV1(sdkConfig)
	}
	return sdk
}
