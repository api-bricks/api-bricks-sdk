package v1

import (
	"github.com/marvin-hansen/coinapi-sdk/oeml-sdk/go-ws/sdk/types"
)

func (s SDKImpl) LookupSymbolData(exchangeID, baseSymbolCoinApi, quoteSymbolCoinApi string) (symbolData types.SymbolData, ok bool) {
	assetKey := AssetKey{
		Base:  baseSymbolCoinApi,
		Quote: quoteSymbolCoinApi,
	}
	exists := s.checkSymbolExists(exchangeID, assetKey)
	if exists {
		return symbolMap[exchangeID][assetKey], exists
	} else {
		return types.SymbolData{}, exists
	}
}
func (s SDKImpl) getSymbolData(exchangeID string, assetKey AssetKey) (ok bool, symbolData types.SymbolData) {
	exists := s.checkSymbolExists(exchangeID, assetKey)
	if exists {
		return exists, symbolMap[exchangeID][assetKey]
	} else {
		return exists, types.SymbolData{}
	}
}

func (s SDKImpl) addSymbolData(exchangeID string, symbolData types.SymbolData) {
	assetKey := AssetKey{
		Base:  *symbolData.Asset_id_base_coinapi,
		Quote: *symbolData.Asset_id_quote_coinapi,
	}
	exists := s.checkSymbolExists(exchangeID, assetKey)
	if !exists {
		symbolMap[exchangeID][assetKey] = symbolData
	}
}

func (s SDKImpl) checkSymbolExists(exchangeID string, assetKey AssetKey) (exists bool) {
	if _, exists = symbolMap[exchangeID][assetKey]; exists {
		return true
	}
	return false
}

func (s SDKImpl) AddNewSymbolMap(exchangeID string) {
	nestedMap := make(map[AssetKey]types.SymbolData)
	symbolMap[exchangeID] = nestedMap
	return
}

func (s SDKImpl) isMapEmpty() (empty bool) {
	if len(symbolMap) == 0 {
		return true
	}
	return false
}
