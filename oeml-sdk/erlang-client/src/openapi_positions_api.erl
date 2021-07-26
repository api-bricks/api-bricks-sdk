-module(openapi_positions_api).

-export([v1_positions_get/1, v1_positions_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Get open positions
%% Get current open positions across all or single exchange.
-spec v1_positions_get(ctx:ctx()) -> {ok, [openapi_position:openapi_position()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_positions_get(Ctx) ->
    v1_positions_get(Ctx, #{}).

-spec v1_positions_get(ctx:ctx(), maps:map()) -> {ok, [openapi_position:openapi_position()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_positions_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/positions">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


