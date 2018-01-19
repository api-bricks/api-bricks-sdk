//
//  ViewController.swift
//  CoinAPIDemoSwift
//
//  Created by Adrian Mayoral on 1/18/18.
//  Copyright © 2018 Adrian Mayoral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coin = CoinAPI(apiKey: "YOUR_API_KEY_HERE")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        coin.metadataExchanges { (jsonResponse: Any, error: Error?) in
            print("Metadata - List all exchanges : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.metadataAssets { (jsonResponse: Any, error: Error?) in
            print("Metadata - List all assets : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.metadataSymbols { (jsonResponse: Any, error: Error?) in
            print("Metadata - List all symbols : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.exchangeRatesBy(assetId: "BTC", idQuote: "USD", time: 0) { (jsonResponse: Any, error: Error?) in
            print("Exchange Rates - Get specific rate : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.allExchangeRatesBy(assetId: "BTC") { (jsonResponse: Any, error: Error?) in
            print("Exchange Rates - Get all current rates : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.allOHLCVPeriods { (jsonResponse: Any, error: Error?) in
            print("OHLCV - List all periods : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.latestOHLCVData(symbol: "BITSTAMP_SPOT_BTC_USD", periodId: "1MIN", limit: 0) { (jsonResponse: Any, error: Error?) in
            print("OHLCV - Latest data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.historialOHLCVData(symbol: "BITSTAMP_SPOT_BTC_USD", periodId: "1MIN", timeStart: "2016-01-01T00:00:00", timeEnd: "", limit: 0) { (jsonResponse: Any, error: Error?) in
            print("OHLCV - Historical data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.latestTradesData(symbol: "", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Trades - Latest data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.historicalTradesData(symbol: "BITSTAMP_SPOT_BTC_USD", timeStart: "2016-01-01T00:00:00", timeEnd: "", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Trades - Historical data :: \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.currentQuotesData(symbol: "")  { (jsonResponse: Any, error: Error?) in
            print("Quotes - Current data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.latestTradesData(symbol: "", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Quotes - Latest data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.historicalTradesData(symbol: "BITSTAMP_SPOT_BTC_USD", timeStart: "2016-01-01T00:00:00", timeEnd: "", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Quotes - Historical data :: \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.currentOrderBooksData(symbol: "")  { (jsonResponse: Any, error: Error?) in
            print("Orderbooks - Current data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.latestOrderBooksData(symbol: "BITSTAMP_SPOT_BTC_USD", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Orderbooks - Latest data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }

        coin.historicalOrderBooksData(symbol: "BITSTAMP_SPOT_BTC_USD", timeStart: "2016-01-01T00:00:00", timeEnd: "", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Orderbooks - Historical data :: \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        
        coin.latestTwitterData(count: 0)  { (jsonResponse: Any, error: Error?) in
            print("Twitter - Latest data : \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
        
        coin.historicalTwitterData(timeStartAt: "2016-01-01T00:00:00", timeEnd: "", limit: 0)  { (jsonResponse: Any, error: Error?) in
            print("Twitter - Historical data :: \(jsonResponse)")
            print("error: \(String(describing: error))")
        }
    }

}

