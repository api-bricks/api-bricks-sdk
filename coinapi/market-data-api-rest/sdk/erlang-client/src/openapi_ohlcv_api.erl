-module(openapi_ohlcv_api).

-export([v1_ohlcv_exchanges_exchange_id_history_get/5, v1_ohlcv_exchanges_exchange_id_history_get/6,
         v1_ohlcv_periods_get/1, v1_ohlcv_periods_get/2,
         v1_ohlcv_symbol_id_history_get/3, v1_ohlcv_symbol_id_history_get/4,
         v1_ohlcv_symbol_id_latest_get/3, v1_ohlcv_symbol_id_latest_get/4]).

-define(BASE_URL, <<"">>).

%% @doc Historical data by exchange
%% Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::
-spec v1_ohlcv_exchanges_exchange_id_history_get(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [openapi_ohlcv_exchange_timeseries_item:openapi_ohlcv_exchange_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_exchanges_exchange_id_history_get(Ctx, ExchangeId, PeriodId, TimeStart, TimeEnd) ->
    v1_ohlcv_exchanges_exchange_id_history_get(Ctx, ExchangeId, PeriodId, TimeStart, TimeEnd, #{}).

-spec v1_ohlcv_exchanges_exchange_id_history_get(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [openapi_ohlcv_exchange_timeseries_item:openapi_ohlcv_exchange_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_exchanges_exchange_id_history_get(Ctx, ExchangeId, PeriodId, TimeStart, TimeEnd, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/ohlcv/exchanges/", ExchangeId, "/history"],
    QS = lists:flatten([{<<"period_id">>, PeriodId}, {<<"time_start">>, TimeStart}, {<<"time_end">>, TimeEnd}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all periods
%% Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
-spec v1_ohlcv_periods_get(ctx:ctx()) -> {ok, [openapi_v1_timeseries_period:openapi_v1_timeseries_period()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_periods_get(Ctx) ->
    v1_ohlcv_periods_get(Ctx, #{}).

-spec v1_ohlcv_periods_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_timeseries_period:openapi_v1_timeseries_period()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_periods_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/ohlcv/periods"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Historical data
%% Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
-spec v1_ohlcv_symbol_id_history_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_v1_timeseries_item:openapi_v1_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_symbol_id_history_get(Ctx, SymbolId, PeriodId) ->
    v1_ohlcv_symbol_id_history_get(Ctx, SymbolId, PeriodId, #{}).

-spec v1_ohlcv_symbol_id_history_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_v1_timeseries_item:openapi_v1_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_symbol_id_history_get(Ctx, SymbolId, PeriodId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/ohlcv/", SymbolId, "/history"],
    QS = lists:flatten([{<<"period_id">>, PeriodId}])++openapi_utils:optional_params(['time_start', 'time_end', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Latest data
%% Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
-spec v1_ohlcv_symbol_id_latest_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_v1_timeseries_item:openapi_v1_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_symbol_id_latest_get(Ctx, SymbolId, PeriodId) ->
    v1_ohlcv_symbol_id_latest_get(Ctx, SymbolId, PeriodId, #{}).

-spec v1_ohlcv_symbol_id_latest_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_v1_timeseries_item:openapi_v1_timeseries_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_ohlcv_symbol_id_latest_get(Ctx, SymbolId, PeriodId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/ohlcv/", SymbolId, "/latest"],
    QS = lists:flatten([{<<"period_id">>, PeriodId}])++openapi_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


