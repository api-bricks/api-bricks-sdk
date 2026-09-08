-module(openapi_api).

-export([ v1_ohlcv_exchange_exchange_id_history_get/4
        , v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get/3
        , v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get/3
        , v1_ohlcv_periods_get/0
        ]).

-define(BASE_URL, "").

%% @doc Historical data by exchange
%% Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.
-spec v1_ohlcv_exchange_exchange_id_history_get(binary(), binary(), binary(), binary()) ->
  openapi_utils:response().
v1_ohlcv_exchange_exchange_id_history_get(ExchangeId, PeriodId, TimeStart, TimeEnd) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/ohlcv/exchange/", ExchangeId, "/history"],
  QueryString = [<<"period_id=">>, PeriodId, <<"&">>, <<"time_start=">>, TimeStart, <<"&">>, <<"time_end=">>, TimeEnd, <<"&">>, <<"limit=">>, Limit, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Historical data
%% Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
-spec v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get(binary(), binary(), binary()) ->
  openapi_utils:response().
v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get(ExchangeId, SymbolId, PeriodId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/ohlcv/exchange-symbol/", ExchangeId, "/", SymbolId, "/history"],
  QueryString = [<<"period_id=">>, PeriodId, <<"&">>, <<"time_start=">>, TimeStart, <<"&">>, <<"time_end=">>, TimeEnd, <<"&">>, <<"limit=">>, Limit, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Latest data
%% Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
-spec v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get(binary(), binary(), binary()) ->
  openapi_utils:response().
v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get(ExchangeId, SymbolId, PeriodId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/ohlcv/exchange-symbol/", ExchangeId, "/", SymbolId, "/latest"],
  QueryString = [<<"period_id=">>, PeriodId, <<"&">>, <<"limit=">>, Limit, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc List all periods
%% Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
-spec v1_ohlcv_periods_get() ->
  openapi_utils:response().
v1_ohlcv_periods_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/ohlcv/periods"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

