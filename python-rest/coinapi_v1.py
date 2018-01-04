import urllib.request
import urllib.parse
import gzip
import json

PRODUCTION_URL = 'https://rest.coinapi.io/v1%s'

class HTTPClient:
    def __init__(self, endpoint, headers = dict(), params = dict()):
        self.url = PRODUCTION_URL % endpoint
        self.params = params
        self.headers = headers

    def perform(self):
        resource = self.url

        if self.params:
            query_string = urllib.parse.urlencode(self.params)
            resource = '%s?%s' % (self.url, query_string)

        request = urllib.request.Request(resource, headers=self.headers)
        handler = urllib.request.urlopen(request)
        raw_response = handler.read()

        if 'Accept-Encoding' in self.headers:
            if self.headers['Accept-Encoding'] == 'deflat, gzip':
                raw_response = gzip.decompress(raw_response)

        encoding = handler.info().get_content_charset('utf-8')
        response = json.loads(raw_response.decode(encoding))
        return response

class MetadataListExchangesRequest:
    def endpoint(self):
        return '/exchanges'

class MetadataListAssetsRequest:
    def endpoint(self):
        return '/assets'

class MetadataListSymbolsRequest:
    def endpoint(self):
        return '/symbols'

class ExchangeRatesGetSpecificRateRequest:
    def __init__(self,
                 asset_id_base,
                 asset_id_quote,
                 query_parameters = dict()):
        self.asset_id_base = asset_id_base
        self.asset_id_quote = asset_id_quote
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/exchangerate/%s/%s' % (
            self.asset_id_base,
            self.asset_id_quote)

class ExchangeRatesGetAllCurrentRates:
    def __init__(self, asset_id_base):
        self.asset_id_base = asset_id_base

    def endpoint(self):
        return '/exchangerate/%s' % self.asset_id_base

class OHLCVListAllPeriodsRequest:
    def endpoint(self):
        return '/ohlcv/periods'

class OHLCVLatestDataRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/ohlcv/%s/latest' % self.symbol_id

class OHLCVHistoricalDataRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/ohlcv/%s/history' % self.symbol_id

class TradesLatestDataAllRequest:
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/trades/latest'

class TradesLatestDataSymbolRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/trades/%s/latest' % self.symbol_id

class TradesHistoricalDataRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/trades/%s/history' % self.symbol_id

class QuotesCurrentDataAllRequest:
    def endpoint(self):
        return '/quotes/current'

class QuotesCurrentDataSymbolRequest:
    def __init__(self, symbol_id):
        self.symbol_id = symbol_id

    def endpoint(self):
        return '/quotes/%s/current' % self.symbol_id

class QuotesLatestDataAllRequest:
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/quotes/latest'

class QuotesLatestDataSymbolRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/quotes/%s/latest' % self.symbol_id

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return QuotesLatestDataSymbolRequest(self.symbol_id, params)
    only = limit

class QuotesHistoricalData:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/quotes/%s/history' % self.symbol_id

class OrderbooksCurrentDataAllRequest:
    def endpoint(self):
        return '/orderbooks/current'

class OrderbooksCurrentDataSymbolRequest:
    def __init__(self, symbol_id):
        self.symbol_id = symbol_id

    def endpoint(self):
        return '/orderbooks/%s/current' % self.symbol_id

class OrderbooksLatestDataRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/orderbooks/%s/latest' % self.symbol_id

class OrderbooksHistoricalDataRequest:
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/orderbooks/%s/history' % self.symbol_id

class TwitterLatestDataRequest:
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/twitter/latest'

class TwitterHistoricalDataRequest:
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/twitter/history'

class CoinAPIv1:
    DEFAULT_HEADERS = {
        'Accept': 'application/json'
    }
    def __init__(self, api_key, headers = dict(), client_class=HTTPClient):
        self.api_key = api_key
        header_apikey = {'X-CoinAPI-Key': self.api_key}
        self.headers = {**self.DEFAULT_HEADERS, **headers, **header_apikey}
        self.client_class = client_class

    def with_header(self, header, value):
        old_headers = self.headers
        new_header = {header: value}
        return CoinAPIv1(self.api_key, {**old_headers, **new_header})

    def with_headers(self, additional_headers):
        old_headers = self.headers
        return CoinAPIv1(self.api_key, {**old_headers, **additional_headers})

    def metadata_list_exchanges(self):
        request = MetadataListExchangesRequest()
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def metadata_list_assets(self):
        request = MetadataListAssetsRequest()
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def metadata_list_symbols(self):
        request = MetadataListSymbolsRequest()
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def exchange_rates_get_specific_rate(self,
                                         asset_id_base,
                                         asset_id_quote,
                                         query_parameters = dict()):
        request = ExchangeRatesGetSpecificRateRequest(asset_id_base,
                                                      asset_id_quote,
                                                      query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def exchange_rates_get_all_current_rates(self,
                                             asset_id_base):
        request = ExchangeRatesGetAllCurrentRates(asset_id_base)
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def ohlcv_list_all_periods(self):
        request = OHLCVListAllPeriodsRequest()
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def ohlcv_latest_data(self,
                          symbol_id,
                          query_parameters = dict()):
        request =  OHLCVLatestDataRequest(symbol_id,
                                          query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def ohlcv_historical_data(self,
                              symbol_id,
                              query_parameters):
        request = OHLCVHistoricalDataRequest(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def trades_latest_data_all(self,
                               query_parameters = dict()):
        request = TradesLatestDataAllRequest(query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def trades_latest_data_symbol(self,
                                  symbol_id,
                                  query_parameters = dict()):
        request = TradesLatestDataSymbolRequest(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def trades_historical_data(self,
                               symbol_id,
                               query_parameters = dict()):
        request = TradesHistoricalDataRequest(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def quotes_current_data_all(self):
        request = QuotesCurrentDataAllRequest()
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def quotes_current_data_symbol(self,
                                   symbol_id):
        request = QuotesCurrentDataSymbolRequest(symbol_id)
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def quotes_latest_data_all(self,
                               query_parameters = dict()):
        request = QuotesLatestDataAllRequest(query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def quotes_latest_data_symbol(self,
                                  symbol_id,
                                  query_parameters = dict()):
        request = QuotesLatestDataSymbolRequest(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def quotes_historical_data(self,
                               symbol_id,
                               query_parameters = dict()):
        request = QuotesHistoricalData(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def orderbooks_current_data_all(self):
        request = OrderbooksCurrentDataAllRequest()
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def orderbooks_current_data_symbol(self,
                                       symbol_id):
        request = OrderbooksCurrentDataSymbolRequest(symbol_id)
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def orderbooks_latest_data(self,
                               symbol_id,
                               query_parameters = dict()):
        request = OrderbooksLatestDataRequest(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def orderbooks_historical_data(self,
                                   symbol_id,
                                   query_parameters = dict()):
        request = OrderbooksHistoricalDataRequest(symbol_id, query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def twitter_latest_data(self,
                            query_parameters = dict()):
        request = TwitterLatestDataRequest(query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def twitter_historical_data(self,
                                query_parameters = dict()):
        request = TwitterHistoricalDataRequest(query_parameters)
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()
