//
//  CoinAPI.swift
//  CoinAPIDemoSwift
//
//  Created by Adrian Mayoral on 1/18/18.
//  Copyright © 2018 Adrian Mayoral. All rights reserved.
//

import Foundation

/** BASE API URL **/
fileprivate let COINAPI_URL     = "https://rest.coinapi.io"
/** HEADER NAME **/
fileprivate let HEADER_API_KEY = "X-CoinAPI-Key"

/** Handler block **/
typealias APIResponse = ((_ response: Any?, _ error: Error?) -> Void)

/** Error Handler **/
enum CoinAPIError: Error {
    case invalidRequest
    case invalidJSON
    case unknown
}

/** Metadata Functions **/
protocol MetadataProtocol {
    func metadataExchanges(completionHandler: @escaping APIResponse)
    func metadataAssets(completionHandler: @escaping APIResponse)
    func metadataSymbols(completionHandler: @escaping APIResponse)
}

/** Exchange Rates Functions **/
protocol ExchangeRatesProtocol {
    func exchangeRatesBy(assetId base: String, idQuote: String, time: Int, completionHandler: @escaping APIResponse)
    func allExchangeRatesBy(assetId base: String, completionHandler: @escaping APIResponse)
}

/** Open, High, Low, Close Prices and Volume indicators Functions **/
protocol OHLCVDataProtocol {
    func allOHLCVPeriods(completionHandler: @escaping APIResponse)
    func latestOHLCVData(symbol id: String, periodId: String, limit: Int, completionHandler: @escaping APIResponse)
    func historialOHLCVData(symbol id: String, periodId: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse)
}

/** Trades Functions **/
protocol TradesDataProtocol {
    func latestTradesData(symbol id: String, limit: Int, completionHandler: @escaping APIResponse)
    func historicalTradesData(symbol id: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse)
}

/** Quotes Functions **/
protocol QuotesDataProtocol {
    func currentQuotesData(symbol id: String, completionHandler: @escaping APIResponse)
    func latestQuotesData(symbol id: String, limit: Int, completionHandler: @escaping APIResponse)
    func historicalQuotesData(symbol id: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse)
}

/** Orderbooks Functions **/
protocol OrderbooksDataProtocol {
    func currentOrderBooksData(symbol id: String, completionHandler: @escaping APIResponse)
    func latestOrderBooksData(symbol id: String, limit: Int, completionHandler: @escaping APIResponse)
    func historicalOrderBooksData(symbol id: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse)
}

/** Twitter Functions **/
protocol TwitterDataProtocol {
    func latestTwitterData(count limit: Int, completionHandler: @escaping APIResponse)
    func historicalTwitterData(timeStartAt timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse)
}

/*
 * CoinAPI Class
 **/
class CoinAPI {
    
    private (set) var apiKey: String
    
    init(apiKey key: String) {
        self.apiKey = key
    }
    
    /*
     * Perform URLRequest and return data based on the API response.
     **/
    private func perform(request _request: URLRequest, completionHandler: @escaping APIResponse) {
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: _request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            guard let responseData = data else {
                completionHandler(nil, CoinAPIError.unknown)
                return
            }
            
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: responseData, options: .allowFragments)
                completionHandler(jsonResponse, nil)
            } catch {
                completionHandler(nil, CoinAPIError.invalidJSON)
            }
            
        }
        
        task.resume()
    }
}

// MARK: - Metadata Implementation
extension CoinAPI: MetadataProtocol {
    
    func metadataExchanges(completionHandler: @escaping APIResponse) {
        guard let requestUrl = URL(string: COINAPI_URL.appending("/v1/exchanges")) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func metadataAssets(completionHandler: @escaping APIResponse) {
        guard let requestUrl = URL(string: COINAPI_URL.appending("/v1/assets")) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func metadataSymbols(completionHandler: @escaping APIResponse) {
        guard let requestUrl = URL(string: COINAPI_URL.appending("/v1/symbols")) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
}

// MARK: - Metadata Implementation
extension CoinAPI: ExchangeRatesProtocol {
    
    func exchangeRatesBy(assetId base: String, idQuote: String, time: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/exchangerate/\(base)/\(idQuote)"
        if time > 0 {
            requestResource = "/v1/exchangerate/\(base)/\(idQuote)?time=\(time)"
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func allExchangeRatesBy(assetId base: String, completionHandler: @escaping APIResponse) {
        guard let requestUrl = URL(string: COINAPI_URL.appending("/v1/exchangerate/\(base)")) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
}

// MARK: - OHLCV Implementation
extension CoinAPI: OHLCVDataProtocol {
    
    func allOHLCVPeriods(completionHandler: @escaping APIResponse) {
        guard let requestUrl = URL(string: COINAPI_URL.appending("/v1/ohlcv/periods")) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func latestOHLCVData(symbol id: String, periodId: String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/ohlcv/\(id)/latest?period_id=\(periodId)"
        if limit > 0 {
            requestResource = "/v1/ohlcv/\(id)/latest?period_id=\(periodId)&limit=\(limit)"
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func historialOHLCVData(symbol id: String, periodId: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/ohlcv/\(id)/latest?period_id=\(periodId)&time_start=\(timeStart)"
        
        if !timeEnd.isEmpty {
            requestResource.append("&time_end=\(timeEnd)")
        }
        if limit > 0 {
            requestResource.append("&limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
}

// MARK: - Trades Implementation
extension CoinAPI: TradesDataProtocol {
    
    func latestTradesData(symbol id: String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/trades/latest"
        
        if !id.isEmpty {
            requestResource.append("trades/\(id)/latest")
        }
        if limit > 0 {
            requestResource.append("?limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func historicalTradesData(symbol id: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/trades/\(id)/history?time_start=\(timeStart)"
        
        if !timeEnd.isEmpty {
            requestResource.append("&time_end=\(timeEnd)")
        }
        if limit > 0 {
            requestResource.append("&limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
}

// MARK: - Quotes Implementation
extension CoinAPI: QuotesDataProtocol {
    
    func currentQuotesData(symbol id: String, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/quotes/current"
        
        if !id.isEmpty {
            requestResource.append("/v1/quotes/\(id)/current")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func latestQuotesData(symbol id: String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/quotes/latest"
        
        if !id.isEmpty {
            requestResource = "/v1/quotes/\(id)/latest"
        }
        if limit > 0 {
            requestResource.append("?limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func historicalQuotesData(symbol id: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/quotes/\(id)/history?time_start=\(timeStart)"
        
        if !timeEnd.isEmpty {
            requestResource.append("&time_end=\(timeEnd)")
        }
        if limit > 0 {
            requestResource.append("&limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
}

// MARK: - Order Books Implementation
extension CoinAPI: OrderbooksDataProtocol {
    
    func currentOrderBooksData(symbol id: String, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/orderbooks/current"
        
        if !id.isEmpty {
            requestResource.append("/v1/orderbooks/\(id)/current")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func latestOrderBooksData(symbol id: String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/orderbooks/\(id)/latest"
        
        if limit > 0 {
            requestResource.append("?limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func historicalOrderBooksData(symbol id: String, timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/quotes/\(id)/history?time_start=\(timeStart)"
        
        if !timeEnd.isEmpty {
            requestResource.append("&time_end=\(timeEnd)")
        }
        if limit > 0 {
            requestResource.append("&limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
}

// MARK: - Twitter Implementation
extension CoinAPI: TwitterDataProtocol {
    
    func latestTwitterData(count limit: Int, completionHandler: @escaping APIResponse){
        // build URI string
        var requestResource = "/v1/twitter/latest"
        
        if limit > 0 {
            requestResource.append("?limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
    
    func historicalTwitterData(timeStartAt timeStart: String, timeEnd:String, limit: Int, completionHandler: @escaping APIResponse) {
        // build URI string
        var requestResource = "/v1/twitter/history?time_start=\(timeStart)"
        
        if !timeEnd.isEmpty {
            requestResource.append("&time_end=\(timeEnd)")
        }
        if limit > 0 {
            requestResource.append("&limit=\(limit)")
        }
        
        guard let requestUrl = URL(string: COINAPI_URL.appending(requestResource)) else {
            completionHandler(nil, CoinAPIError.invalidRequest)
            return
        }
        
        // Build request
        let request = NSMutableURLRequest(url: requestUrl, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 100)
        request.httpMethod = "GET"
        request.addValue(self.apiKey, forHTTPHeaderField: HEADER_API_KEY)
        
        // Perform request
        perform(request: request as URLRequest, completionHandler: completionHandler)
    }
}
