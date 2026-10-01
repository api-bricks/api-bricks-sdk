-module(openapi_native_iex_api).

-export([v1_native_iex_admin_messages_symbol_get/2, v1_native_iex_admin_messages_symbol_get/3,
         v1_native_iex_admin_system_event_get/1, v1_native_iex_admin_system_event_get/2,
         v1_native_iex_level1_quote_symbol_get/2, v1_native_iex_level1_quote_symbol_get/3,
         v1_native_iex_level2_price_level_update_symbol_get/2, v1_native_iex_level2_price_level_update_symbol_get/3,
         v1_native_iex_level3_order_book_symbol_get/2, v1_native_iex_level3_order_book_symbol_get/3,
         v1_native_iex_trade_symbol_get/2, v1_native_iex_trade_symbol_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Get Admin Messages
%% Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
-spec v1_native_iex_admin_messages_symbol_get(ctx:ctx(), binary()) -> {ok, [openapi_models_admin_message_model:openapi_models_admin_message_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_messages_symbol_get(Ctx, Symbol) ->
    v1_native_iex_admin_messages_symbol_get(Ctx, Symbol, #{}).

-spec v1_native_iex_admin_messages_symbol_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_models_admin_message_model:openapi_models_admin_message_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_messages_symbol_get(Ctx, Symbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/admin/messages/", Symbol, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get System Events
%% Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
-spec v1_native_iex_admin_system_event_get(ctx:ctx()) -> {ok, [openapi_i_ex_system_event_system_event_model:openapi_i_ex_system_event_system_event_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_system_event_get(Ctx) ->
    v1_native_iex_admin_system_event_get(Ctx, #{}).

-spec v1_native_iex_admin_system_event_get(ctx:ctx(), maps:map()) -> {ok, [openapi_i_ex_system_event_system_event_model:openapi_i_ex_system_event_system_event_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_admin_system_event_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/admin/system-event"],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Level-1 Quotes
%% Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
-spec v1_native_iex_level1_quote_symbol_get(ctx:ctx(), binary()) -> {ok, [openapi_i_ex_quote_update_quote_update_model:openapi_i_ex_quote_update_quote_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level1_quote_symbol_get(Ctx, Symbol) ->
    v1_native_iex_level1_quote_symbol_get(Ctx, Symbol, #{}).

-spec v1_native_iex_level1_quote_symbol_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_i_ex_quote_update_quote_update_model:openapi_i_ex_quote_update_quote_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level1_quote_symbol_get(Ctx, Symbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/level1-quote/", Symbol, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Level-2 Price Level Book
%% Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
-spec v1_native_iex_level2_price_level_update_symbol_get(ctx:ctx(), binary()) -> {ok, [openapi_i_ex_price_level_update_price_level_update_model:openapi_i_ex_price_level_update_price_level_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level2_price_level_update_symbol_get(Ctx, Symbol) ->
    v1_native_iex_level2_price_level_update_symbol_get(Ctx, Symbol, #{}).

-spec v1_native_iex_level2_price_level_update_symbol_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_i_ex_price_level_update_price_level_update_model:openapi_i_ex_price_level_update_price_level_update_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level2_price_level_update_symbol_get(Ctx, Symbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/level2-price-level-update/", Symbol, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Level-3 Order Book
%% Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
-spec v1_native_iex_level3_order_book_symbol_get(ctx:ctx(), binary()) -> {ok, [openapi_models_order_book_model:openapi_models_order_book_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level3_order_book_symbol_get(Ctx, Symbol) ->
    v1_native_iex_level3_order_book_symbol_get(Ctx, Symbol, #{}).

-spec v1_native_iex_level3_order_book_symbol_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_models_order_book_model:openapi_models_order_book_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_level3_order_book_symbol_get(Ctx, Symbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/level3-order-book/", Symbol, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Trades
%% Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
-spec v1_native_iex_trade_symbol_get(ctx:ctx(), binary()) -> {ok, [openapi_i_ex_trade_trade_model:openapi_i_ex_trade_trade_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_trade_symbol_get(Ctx, Symbol) ->
    v1_native_iex_trade_symbol_get(Ctx, Symbol, #{}).

-spec v1_native_iex_trade_symbol_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_i_ex_trade_trade_model:openapi_i_ex_trade_trade_model()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_native_iex_trade_symbol_get(Ctx, Symbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/native/iex/trade/", Symbol, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['date', 'time_start', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


