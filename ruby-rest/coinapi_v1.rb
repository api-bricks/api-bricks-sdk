require 'net/http'
require 'openssl'
require 'date'
require 'json'

module CoinAPIv1
  class Client
    def initialize(api_key:, options: {})
      @api_key = api_key
      @options = default_options.merge(options)
    end

    def metadata_list_all_exchanges
      request(endpoint: 'exchanges')
    end

    def metadata_list_all_assets
      request(endpoint: 'assets').collect! do |asset|
        Transformers::asset(asset)
      end
    end

    def metadata_list_all_symbols
      request(endpoint: 'symbols').each do |symbol|
        case symbol[:symbol_type]
        when 'FUTURES'
          symbol[:future_delivery_time] = Date.parse(symbol[:future_delivery_time])
        when 'OPTION'
          symbol[:option_expiration_time] = Date.parse(symbol[:option_expiration_time])
        end
        symbol
      end
    end

    def exchange_rates_get_specific_rate(asset_id_base:, asset_id_quote:, parameters: {})
      endpoint = "exchangerate/#{asset_id_base}/#{asset_id_quote}"
      exchange_rate = request(endpoint: endpoint, parameters: parameters)
      exchange_rate[:time] = DateTime.parse(exchange_rate[:time])
      exchange_rate
    end

    def exchange_rates_get_all_current_rates(asset_id_base:)
      all_rates = request(endpoint: "exchangerate/#{asset_id_base}")
      all_rates[:rates].collect! do |rate|
        rate[:time] = DateTime.parse(rate[:time])
        rate
      end
    end

    def ohlcv_list_all_periods
      request(endpoint: "ohlcv/periods")
    end

    def ohlcv_latest_data(symbol_id:, period_id:, parameters: {})
      endpoint = "ohlcv/#{symbol_id}/latest"
      params = parameters.merge(period_id: period_id)
      request(endpoint: endpoint, parameters: params).collect! do |data_point|
        Transformers::data_point(data_point)
      end
    end

    def ohlcv_historical_data(symbol_id:, period_id:, time_start:, parameters: {})
      endpoint = "ohlcv/#{symbol_id}/history"
      params = parameters.merge({period_id: period_id, time_start: time_start})
      request(endpoint: endpoint, parameters: params).collect! do |data_point|
        Transformers::data_point(data_point)
      end
    end

    def trades_latest_data_all(parameters: {})
      endpoint = "trades/latest"
      request(endpoint: endpoint, parameters: parameters).collect! do |trade|
        Transformers::trade(trade)
      end
    end

    def trades_latest_data_symbol(symbol_id:, parameters: {})
      endpoint = "trades/#{symbol_id}/latest"
      request(endpoint: endpoint, parameters: parameters).collect! do |trade|
        Transformers::trade(trade)
      end
    end

    def trades_historical_data(symbol_id:, time_start:, parameters: {})
      endpoint = "trades/#{symbol_id}/history"
      params = parameters.merge(time_start: time_start)
      request(endpoint: endpoint, parameters: params).collect! do |trade|
        Transformers::trade(trade)
      end
    end

    def quotes_current_data_all
      endpoint = "quotes/current"
      request(endpoint: endpoint).collect! do |quote|
        Transformers::quote(quote)
      end
    end

    def quotes_current_data_symbol(symbol_id:)
      endpoint = "quotes/#{symbol_id}/current"
      Transformers::quote(request(endpoint: endpoint))
    end

    def quotes_latest_data_all(parameters: {})
      endpoint = "quotes/latest"
      request(endpoint: endpoint, parameters: parameters).collect! do |quote|
        Transformers::quote(quote)
      end
    end

    def quotes_latest_data_symbol(symbol_id:, parameters: {})
      endpoint = "quotes/#{symbol_id}/latest"
      request(endpoint: endpoint, parameters: parameters).collect! do |quote|
        Transformers::quote(quote)
      end
    end

    def quotes_historical_data(symbol_id:, time_start:, parameters: {})
      endpoint = "quotes/#{symbol_id}/history"
      params = parameters.merge(time_start: time_start)
      request(endpoint: endpoint, parameters: params).collect! do |quote|
        Transformers::quote(quote)
      end
    end

    def orderbooks_current_data_all
      endpoint = "orderbooks/current"
      request(endpoint: endpoint).collect! do |entry|
        Transformers::orderbook_entry(entry)
      end
    end

    def orderbooks_current_data_symbol(symbol_id:)
      endpoint = "orderbooks/#{symbol_id}/current"
      Transformers::orderbook_entry(request(endpoint: endpoint))
    end

    def orderbooks_latest_data(symbol_id:, parameters: {})
      endpoint = "orderbooks/#{symbol_id}/latest"
      request(endpoint: endpoint, parameters: parameters).collect! do |entry|
        Transformers::orderbook_entry(entry)
      end
    end

    def orderbooks_historical_data(symbol_id:, time_start:, parameters: {})
      endpoint = "orderbooks/#{symbol_id}/history"
      params = parameters.merge(time_start: time_start)
      request(endpoint: endpoint, parameters: params).collect! do |entry|
        Transformers::orderbook_entry(entry)
      end
    end

    def twitter_latest_data(parameters: {})
      endpoint = "twitter/latest"
      request(endpoint: endpoint, parameters: parameters)
    end

    def twitter_historical_data(time_start:, parameters: {})
      endpoint = "twitter/history"
      request(endpoint: endpoint, parameters: parameters)
    end

    private
    def default_headers
      headers = {}
      headers['X-CoinAPI-Key'] = @api_key
      headers['Accept'] = 'application/json'
      headers['Accept-Encoding'] = 'deflate, gzip'
      headers
    end

    def default_options
      options = {}
      options[:production] = true
      options
    end

    def headers
      default_headers.merge(@options.fetch(:headers, {}))
    end

    def base_url
      if @options[:production]
        'https://rest.coinapi.io/v1/'
      else
        'https://rest-test.coinapi.io/v1/'
      end
    end

    def response_compressed?
      headers['Accept-Encoding:'] == 'deflate, gzip'
    end

    def request(endpoint:, parameters: {})
      uri = URI.join(base_url, endpoint)
      uri.query = URI.encode_www_form(parameters)
      request = Net::HTTP::Get.new(uri)
      request.initialize_http_header(headers)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
	  # uncomment only in development enviroment if ruby don't have trusted CA directory
	  #http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      response = http.request(request)
      JSON.parse(response.body, symbolize_names: true)
    end
  end

  private
  module Transformers
    class << self
      def asset(a)
        if a[:type_is_crypto] != 0
          a[:type_is_crypto] = true
        else
          a[:type_is_crypto] = false
        end
        a
      end

      def data_point(dp)
        dp[:time_period_start] = DateTime.parse(dp[:time_period_start])
        dp[:time_period_end] = DateTime.parse(dp[:time_period_end])
        dp[:time_open] = DateTime.parse(dp[:time_open])
        dp[:time_close] = DateTime.parse(dp[:time_close])
        dp
      end

      def trade(t)
        t[:time_exchange] = DateTime.parse(t[:time_exchange])
        t[:time_coinapi] = DateTime.parse(t[:time_coinapi])
        t
      end

      def quote(q)
        q[:time_exchange] = DateTime.parse(q[:time_exchange])
        q[:time_coinapi] = DateTime.parse(q[:time_coinapi])

        if q.has_key?(:last_trade) and q[:last_trade]
          trade = q[:last_trade]
          trade[:time_exchange] = DateTime.parse(trade[:time_exchange])
          trade[:time_coinapi] = DateTime.parse(trade[:time_coinapi])
          q[:last_trade] = trade
        end
        q
      end

      def orderbook_entry(oe)
        oe[:time_exchange] = DateTime.parse(oe[:time_exchange])
        oe[:time_coinapi] = DateTime.parse(oe[:time_coinapi])
        oe
      end
    end
  end
end
