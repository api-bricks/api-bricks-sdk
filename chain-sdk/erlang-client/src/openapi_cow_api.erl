-module(openapi_cow_api).

-export([cow_get_orders_(historical)/1, cow_get_orders_(historical)/2,
         cow_get_settlements_(historical)/1, cow_get_settlements_(historical)/2,
         cow_get_tokens_(historical)/1, cow_get_tokens_(historical)/2,
         cow_get_trades_(historical)/1, cow_get_trades_(historical)/2,
         cow_get_users_(historical)/1, cow_get_users_(historical)/2,
         cow_orders_(current)/1, cow_orders_(current)/2,
         cow_settlements_(current)/1, cow_settlements_(current)/2,
         cow_tokens_(current)/1, cow_tokens_(current)/2,
         cow_trades_(current)/1, cow_trades_(current)/2,
         cow_users_(current)/1, cow_users_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Orders (historical)
%% Gets orders.
-spec cow_get_orders_(historical)(ctx:ctx()) -> {ok, [openapi_cow_order_dto:openapi_cow_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_orders_(historical)(Ctx) ->
    cow_get_orders_(historical)(Ctx, #{}).

-spec cow_get_orders_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_order_dto:openapi_cow_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_orders_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/orders/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Settlements (historical)
%% Gets settlements.
-spec cow_get_settlements_(historical)(ctx:ctx()) -> {ok, [openapi_cow_settlement_dto:openapi_cow_settlement_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_settlements_(historical)(Ctx) ->
    cow_get_settlements_(historical)(Ctx, #{}).

-spec cow_get_settlements_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_settlement_dto:openapi_cow_settlement_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_settlements_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/settlements/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical)
%% Gets tokens.
-spec cow_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_cow_token_dto:openapi_cow_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_tokens_(historical)(Ctx) ->
    cow_get_tokens_(historical)(Ctx, #{}).

-spec cow_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_token_dto:openapi_cow_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/tokens/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'name', 'symbol'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Trades (historical)
%% Gets trades.
-spec cow_get_trades_(historical)(ctx:ctx()) -> {ok, [openapi_cow_trade_dto:openapi_cow_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_trades_(historical)(Ctx) ->
    cow_get_trades_(historical)(Ctx, #{}).

-spec cow_get_trades_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_trade_dto:openapi_cow_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_trades_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/trades/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'sell_token', 'buy_token'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical)
%% Gets users.
-spec cow_get_users_(historical)(ctx:ctx()) -> {ok, [openapi_cow_user_dto:openapi_cow_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_users_(historical)(Ctx) ->
    cow_get_users_(historical)(Ctx, #{}).

-spec cow_get_users_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_user_dto:openapi_cow_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_users_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/users/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Orders (current)
%% Gets orders.
-spec cow_orders_(current)(ctx:ctx()) -> {ok, [openapi_cow_order_dto:openapi_cow_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_orders_(current)(Ctx) ->
    cow_orders_(current)(Ctx, #{}).

-spec cow_orders_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_order_dto:openapi_cow_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_orders_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/orders/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Settlements (current)
%% Gets settlements.
-spec cow_settlements_(current)(ctx:ctx()) -> {ok, [openapi_cow_settlement_dto:openapi_cow_settlement_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_settlements_(current)(Ctx) ->
    cow_settlements_(current)(Ctx, #{}).

-spec cow_settlements_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_settlement_dto:openapi_cow_settlement_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_settlements_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/settlements/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current)
%% Gets tokens.
-spec cow_tokens_(current)(ctx:ctx()) -> {ok, [openapi_cow_token_dto:openapi_cow_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_tokens_(current)(Ctx) ->
    cow_tokens_(current)(Ctx, #{}).

-spec cow_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_token_dto:openapi_cow_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_tokens_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/tokens/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Trades (current)
%% Gets trades.
-spec cow_trades_(current)(ctx:ctx()) -> {ok, [openapi_cow_trade_dto:openapi_cow_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_trades_(current)(Ctx) ->
    cow_trades_(current)(Ctx, #{}).

-spec cow_trades_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_trade_dto:openapi_cow_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_trades_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/trades/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (current)
%% Gets users.
-spec cow_users_(current)(ctx:ctx()) -> {ok, [openapi_cow_user_dto:openapi_cow_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_users_(current)(Ctx) ->
    cow_users_(current)(Ctx, #{}).

-spec cow_users_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_user_dto:openapi_cow_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_users_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/cow/users/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


