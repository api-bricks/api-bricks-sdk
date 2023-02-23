-module(openapi_orders_api).

-export([v1_orders_cancel_all_post/2, v1_orders_cancel_all_post/3,
         v1_orders_cancel_post/2, v1_orders_cancel_post/3,
         v1_orders_get/1, v1_orders_get/2,
         v1_orders_history_time_start_time_end_get/3, v1_orders_history_time_start_time_end_get/4,
         v1_orders_post/2, v1_orders_post/3,
         v1_orders_status_client_order_id_get/2, v1_orders_status_client_order_id_get/3]).

-define(BASE_URL, <<"">>).

%% @doc Cancel all orders request
%% This request cancels all open orders on single specified exchange.
-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_order_cancel_all_request:openapi_order_cancel_all_request()) -> {ok, openapi_message_reject:openapi_message_reject(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiOrderCancelAllRequest) ->
    v1_orders_cancel_all_post(Ctx, OpenapiOrderCancelAllRequest, #{}).

-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_order_cancel_all_request:openapi_order_cancel_all_request(), maps:map()) -> {ok, openapi_message_reject:openapi_message_reject(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiOrderCancelAllRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/v1/orders/cancel/all">>],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderCancelAllRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel order request
%% Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
-spec v1_orders_cancel_post(ctx:ctx(), openapi_order_cancel_single_request:openapi_order_cancel_single_request()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiOrderCancelSingleRequest) ->
    v1_orders_cancel_post(Ctx, OpenapiOrderCancelSingleRequest, #{}).

-spec v1_orders_cancel_post(ctx:ctx(), openapi_order_cancel_single_request:openapi_order_cancel_single_request(), maps:map()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiOrderCancelSingleRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/v1/orders/cancel">>],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderCancelSingleRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get open orders
%% Get last execution reports for open orders across all or single exchange.
-spec v1_orders_get(ctx:ctx()) -> {ok, [openapi_order_execution_report:openapi_order_execution_report()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx) ->
    v1_orders_get(Ctx, #{}).

-spec v1_orders_get(ctx:ctx(), maps:map()) -> {ok, [openapi_order_execution_report:openapi_order_execution_report()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/orders">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc History of order changes
%% Based on the date range, all changes registered in the orderbook.
-spec v1_orders_history_time_start_time_end_get(ctx:ctx(), binary(), binary()) -> {ok, [openapi_order_history:openapi_order_history()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_history_time_start_time_end_get(Ctx, TimeStart, TimeEnd) ->
    v1_orders_history_time_start_time_end_get(Ctx, TimeStart, TimeEnd, #{}).

-spec v1_orders_history_time_start_time_end_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_order_history:openapi_order_history()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_history_time_start_time_end_get(Ctx, TimeStart, TimeEnd, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/orders/history/", TimeStart, "/", TimeEnd, "">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send new order
%% This request creating new order for the specific exchange.
-spec v1_orders_post(ctx:ctx(), openapi_order_new_single_request:openapi_order_new_single_request()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiOrderNewSingleRequest) ->
    v1_orders_post(Ctx, OpenapiOrderNewSingleRequest, #{}).

-spec v1_orders_post(ctx:ctx(), openapi_order_new_single_request:openapi_order_new_single_request(), maps:map()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiOrderNewSingleRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/v1/orders">>],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderNewSingleRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get order execution report
%% Get the last order execution report for the specified order. The requested order does not need to be active or opened.
-spec v1_orders_status_client_order_id_get(ctx:ctx(), binary()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_status_client_order_id_get(Ctx, ClientOrderId) ->
    v1_orders_status_client_order_id_get(Ctx, ClientOrderId, #{}).

-spec v1_orders_status_client_order_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_status_client_order_id_get(Ctx, ClientOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/orders/status/", ClientOrderId, "">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


