-module(openapi_curve_api).

-export([curve_accounts_(current)/1, curve_accounts_(current)/2,
         curve_add_liquidity_events_(current)/1, curve_add_liquidity_events_(current)/2,
         curve_admin_fee_change_logs_(current)/1, curve_admin_fee_change_logs_(current)/2,
         curve_amplification_coeff_change_logs_(current)/1, curve_amplification_coeff_change_logs_(current)/2,
         curve_coins_(current)/1, curve_coins_(current)/2,
         curve_contract_versions_(current)/1, curve_contract_versions_(current)/2,
         curve_contracts_(current)/1, curve_contracts_(current)/2,
         curve_daily_volumes_(current)/1, curve_daily_volumes_(current)/2,
         curve_exchanges_(current)/1, curve_exchanges_(current)/2,
         curve_fee_change_logs_(current)/1, curve_fee_change_logs_(current)/2,
         curve_gauge_deposits_(current)/1, curve_gauge_deposits_(current)/2,
         curve_gauge_liquidities_(current)/1, curve_gauge_liquidities_(current)/2,
         curve_gauge_total_weights_(current)/1, curve_gauge_total_weights_(current)/2,
         curve_gauge_type_weights_(current)/1, curve_gauge_type_weights_(current)/2,
         curve_gauge_types_(current)/1, curve_gauge_types_(current)/2,
         curve_gauge_weight_votes_(current)/1, curve_gauge_weight_votes_(current)/2,
         curve_gauge_weights_(current)/1, curve_gauge_weights_(current)/2,
         curve_gauge_withdraws_(current)/1, curve_gauge_withdraws_(current)/2,
         curve_gauges_(current)/1, curve_gauges_(current)/2,
         curve_get_accounts_(historical)/1, curve_get_accounts_(historical)/2,
         curve_get_add_liquidity_events_(historical)/1, curve_get_add_liquidity_events_(historical)/2,
         curve_get_admin_fee_change_logs_(historical)/1, curve_get_admin_fee_change_logs_(historical)/2,
         curve_get_amplification_coeff_change_logs_(historical)/1, curve_get_amplification_coeff_change_logs_(historical)/2,
         curve_get_coins_(historical)/1, curve_get_coins_(historical)/2,
         curve_get_contract_versions_(historical)/1, curve_get_contract_versions_(historical)/2,
         curve_get_contracts_(historical)/1, curve_get_contracts_(historical)/2,
         curve_get_daily_volumes_(historical)/1, curve_get_daily_volumes_(historical)/2,
         curve_get_exchanges_(historical)/1, curve_get_exchanges_(historical)/2,
         curve_get_fee_change_logs_(historical)/1, curve_get_fee_change_logs_(historical)/2,
         curve_get_gauge_deposits_(historical)/1, curve_get_gauge_deposits_(historical)/2,
         curve_get_gauge_liquidities_(historical)/1, curve_get_gauge_liquidities_(historical)/2,
         curve_get_gauge_total_weights_(historical)/1, curve_get_gauge_total_weights_(historical)/2,
         curve_get_gauge_type_weights_(historical)/1, curve_get_gauge_type_weights_(historical)/2,
         curve_get_gauge_types_(historical)/1, curve_get_gauge_types_(historical)/2,
         curve_get_gauge_weight_votes_(historical)/1, curve_get_gauge_weight_votes_(historical)/2,
         curve_get_gauge_weights_(historical)/1, curve_get_gauge_weights_(historical)/2,
         curve_get_gauge_withdraws_(historical)/1, curve_get_gauge_withdraws_(historical)/2,
         curve_get_gauges_(historical)/1, curve_get_gauges_(historical)/2,
         curve_get_hourly_volumes_(historical)/1, curve_get_hourly_volumes_(historical)/2,
         curve_get_lp_tokens_(historical)/1, curve_get_lp_tokens_(historical)/2,
         curve_get_pools_(historical)/1, curve_get_pools_(historical)/2,
         curve_get_proposal_votes_(historical)/1, curve_get_proposal_votes_(historical)/2,
         curve_get_proposals_(historical)/1, curve_get_proposals_(historical)/2,
         curve_get_remove_liquidity_events_(historical)/1, curve_get_remove_liquidity_events_(historical)/2,
         curve_get_remove_liquidity_one_events_(historical)/1, curve_get_remove_liquidity_one_events_(historical)/2,
         curve_get_system_states_(historical)/1, curve_get_system_states_(historical)/2,
         curve_get_tokens_(historical)/1, curve_get_tokens_(historical)/2,
         curve_get_transfer_ownership_events_(historical)/1, curve_get_transfer_ownership_events_(historical)/2,
         curve_get_underlying_coins_(historical)/1, curve_get_underlying_coins_(historical)/2,
         curve_get_voting_apps_(historical)/1, curve_get_voting_apps_(historical)/2,
         curve_get_weekly_volumes_(historical)/1, curve_get_weekly_volumes_(historical)/2,
         curve_hourly_volumes_(current)/1, curve_hourly_volumes_(current)/2,
         curve_lp_tokens_(current)/1, curve_lp_tokens_(current)/2,
         curve_pools_(current)/1, curve_pools_(current)/2,
         curve_proposal_votes_(current)/1, curve_proposal_votes_(current)/2,
         curve_proposals_(current)/1, curve_proposals_(current)/2,
         curve_remove_liquidity_events_(current)/1, curve_remove_liquidity_events_(current)/2,
         curve_remove_liquidity_one_events_(current)/1, curve_remove_liquidity_one_events_(current)/2,
         curve_system_states_(current)/1, curve_system_states_(current)/2,
         curve_tokens_(current)/1, curve_tokens_(current)/2,
         curve_transfer_ownership_events_(current)/1, curve_transfer_ownership_events_(current)/2,
         curve_underlying_coins_(current)/1, curve_underlying_coins_(current)/2,
         curve_voting_apps_(current)/1, curve_voting_apps_(current)/2,
         curve_weekly_volumes_(current)/1, curve_weekly_volumes_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Accounts (current)
%% Gets accounts.
-spec curve_accounts_(current)(ctx:ctx()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_accounts_(current)(Ctx) ->
    curve_accounts_(current)(Ctx, #{}).

-spec curve_accounts_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_accounts_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/accounts/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AddLiquidityEvents (current)
%% Gets addLiquidityEvents.
-spec curve_add_liquidity_events_(current)(ctx:ctx()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_add_liquidity_events_(current)(Ctx) ->
    curve_add_liquidity_events_(current)(Ctx, #{}).

-spec curve_add_liquidity_events_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_add_liquidity_events_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/addLiquidityEvents/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AdminFeeChangeLogs (current)
%% Gets adminFeeChangeLogs.
-spec curve_admin_fee_change_logs_(current)(ctx:ctx()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_admin_fee_change_logs_(current)(Ctx) ->
    curve_admin_fee_change_logs_(current)(Ctx, #{}).

-spec curve_admin_fee_change_logs_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_admin_fee_change_logs_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/adminFeeChangeLogs/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AmplificationCoeffChangeLogs (current)
%% Gets amplificationCoeffChangeLogs.
-spec curve_amplification_coeff_change_logs_(current)(ctx:ctx()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_amplification_coeff_change_logs_(current)(Ctx) ->
    curve_amplification_coeff_change_logs_(current)(Ctx, #{}).

-spec curve_amplification_coeff_change_logs_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_amplification_coeff_change_logs_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/amplificationCoeffChangeLogs/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Coins (current)
%% Gets coins.
-spec curve_coins_(current)(ctx:ctx()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_coins_(current)(Ctx) ->
    curve_coins_(current)(Ctx, #{}).

-spec curve_coins_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_coins_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/coins/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ContractVersions (current)
%% Gets contractVersions.
-spec curve_contract_versions_(current)(ctx:ctx()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_contract_versions_(current)(Ctx) ->
    curve_contract_versions_(current)(Ctx, #{}).

-spec curve_contract_versions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_contract_versions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/contractVersions/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Contracts (current)
%% Gets contracts.
-spec curve_contracts_(current)(ctx:ctx()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_contracts_(current)(Ctx) ->
    curve_contracts_(current)(Ctx, #{}).

-spec curve_contracts_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_contracts_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/contracts/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DailyVolumes (current)
%% Gets dailyVolumes.
-spec curve_daily_volumes_(current)(ctx:ctx()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_daily_volumes_(current)(Ctx) ->
    curve_daily_volumes_(current)(Ctx, #{}).

-spec curve_daily_volumes_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_daily_volumes_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/dailyVolumes/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Exchanges (current)
%% Gets exchanges.
-spec curve_exchanges_(current)(ctx:ctx()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_exchanges_(current)(Ctx) ->
    curve_exchanges_(current)(Ctx, #{}).

-spec curve_exchanges_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_exchanges_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/exchanges/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc FeeChangeLogs (current)
%% Gets feeChangeLogs.
-spec curve_fee_change_logs_(current)(ctx:ctx()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_fee_change_logs_(current)(Ctx) ->
    curve_fee_change_logs_(current)(Ctx, #{}).

-spec curve_fee_change_logs_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_fee_change_logs_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/feeChangeLogs/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeDeposits (current)
%% Gets gaugeDeposits.
-spec curve_gauge_deposits_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_deposits_(current)(Ctx) ->
    curve_gauge_deposits_(current)(Ctx, #{}).

-spec curve_gauge_deposits_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_deposits_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeDeposits/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeLiquidities (current)
%% Gets gaugeLiquidities.
-spec curve_gauge_liquidities_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_liquidities_(current)(Ctx) ->
    curve_gauge_liquidities_(current)(Ctx, #{}).

-spec curve_gauge_liquidities_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_liquidities_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeLiquidities/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTotalWeights (current)
%% Gets gaugeTotalWeights.
-spec curve_gauge_total_weights_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_total_weights_(current)(Ctx) ->
    curve_gauge_total_weights_(current)(Ctx, #{}).

-spec curve_gauge_total_weights_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_total_weights_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeTotalWeights/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTypeWeights (current)
%% Gets gaugeTypeWeights.
-spec curve_gauge_type_weights_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_type_weights_(current)(Ctx) ->
    curve_gauge_type_weights_(current)(Ctx, #{}).

-spec curve_gauge_type_weights_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_type_weights_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeTypeWeights/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTypes (current)
%% Gets gaugeTypes.
-spec curve_gauge_types_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_types_(current)(Ctx) ->
    curve_gauge_types_(current)(Ctx, #{}).

-spec curve_gauge_types_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_types_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeTypes/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWeightVotes (current)
%% Gets gaugeWeightVotes.
-spec curve_gauge_weight_votes_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_weight_votes_(current)(Ctx) ->
    curve_gauge_weight_votes_(current)(Ctx, #{}).

-spec curve_gauge_weight_votes_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_weight_votes_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeWeightVotes/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWeights (current)
%% Gets gaugeWeights.
-spec curve_gauge_weights_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_weights_(current)(Ctx) ->
    curve_gauge_weights_(current)(Ctx, #{}).

-spec curve_gauge_weights_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_weights_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeWeights/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWithdraws (current)
%% Gets gaugeWithdraws.
-spec curve_gauge_withdraws_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_withdraws_(current)(Ctx) ->
    curve_gauge_withdraws_(current)(Ctx, #{}).

-spec curve_gauge_withdraws_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauge_withdraws_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeWithdraws/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gauges (current)
%% Gets gauges.
-spec curve_gauges_(current)(ctx:ctx()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauges_(current)(Ctx) ->
    curve_gauges_(current)(Ctx, #{}).

-spec curve_gauges_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_gauges_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gauges/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Accounts (historical)
%% Gets accounts.
-spec curve_get_accounts_(historical)(ctx:ctx()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_accounts_(historical)(Ctx) ->
    curve_get_accounts_(historical)(Ctx, #{}).

-spec curve_get_accounts_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_accounts_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/accounts/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AddLiquidityEvents (historical)
%% Gets addLiquidityEvents.
-spec curve_get_add_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx) ->
    curve_get_add_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_add_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/addLiquidityEvents/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AdminFeeChangeLogs (historical)
%% Gets adminFeeChangeLogs.
-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx) ->
    curve_get_admin_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/adminFeeChangeLogs/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AmplificationCoeffChangeLogs (historical)
%% Gets amplificationCoeffChangeLogs.
-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx) ->
    curve_get_amplification_coeff_change_logs_(historical)(Ctx, #{}).

-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/amplificationCoeffChangeLogs/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Coins (historical)
%% Gets coins.
-spec curve_get_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_coins_(historical)(Ctx) ->
    curve_get_coins_(historical)(Ctx, #{}).

-spec curve_get_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/coins/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ContractVersions (historical)
%% Gets contractVersions.
-spec curve_get_contract_versions_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contract_versions_(historical)(Ctx) ->
    curve_get_contract_versions_(historical)(Ctx, #{}).

-spec curve_get_contract_versions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contract_versions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/contractVersions/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Contracts (historical)
%% Gets contracts.
-spec curve_get_contracts_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_(historical)(Ctx) ->
    curve_get_contracts_(historical)(Ctx, #{}).

-spec curve_get_contracts_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/contracts/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DailyVolumes (historical)
%% Gets dailyVolumes.
-spec curve_get_daily_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx) ->
    curve_get_daily_volumes_(historical)(Ctx, #{}).

-spec curve_get_daily_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/dailyVolumes/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Exchanges (historical)
%% Gets exchanges.
-spec curve_get_exchanges_(historical)(ctx:ctx()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(historical)(Ctx) ->
    curve_get_exchanges_(historical)(Ctx, #{}).

-spec curve_get_exchanges_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/exchanges/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc FeeChangeLogs (historical)
%% Gets feeChangeLogs.
-spec curve_get_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx) ->
    curve_get_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/feeChangeLogs/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeDeposits (historical)
%% Gets gaugeDeposits.
-spec curve_get_gauge_deposits_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_deposits_(historical)(Ctx) ->
    curve_get_gauge_deposits_(historical)(Ctx, #{}).

-spec curve_get_gauge_deposits_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_deposits_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeDeposits/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeLiquidities (historical)
%% Gets gaugeLiquidities.
-spec curve_get_gauge_liquidities_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_liquidities_(historical)(Ctx) ->
    curve_get_gauge_liquidities_(historical)(Ctx, #{}).

-spec curve_get_gauge_liquidities_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_liquidities_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeLiquidities/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTotalWeights (historical)
%% Gets gaugeTotalWeights.
-spec curve_get_gauge_total_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_total_weights_(historical)(Ctx) ->
    curve_get_gauge_total_weights_(historical)(Ctx, #{}).

-spec curve_get_gauge_total_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_total_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeTotalWeights/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTypeWeights (historical)
%% Gets gaugeTypeWeights.
-spec curve_get_gauge_type_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_type_weights_(historical)(Ctx) ->
    curve_get_gauge_type_weights_(historical)(Ctx, #{}).

-spec curve_get_gauge_type_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_type_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeTypeWeights/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTypes (historical)
%% Gets gaugeTypes.
-spec curve_get_gauge_types_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_types_(historical)(Ctx) ->
    curve_get_gauge_types_(historical)(Ctx, #{}).

-spec curve_get_gauge_types_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_types_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeTypes/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWeightVotes (historical)
%% Gets gaugeWeightVotes.
-spec curve_get_gauge_weight_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weight_votes_(historical)(Ctx) ->
    curve_get_gauge_weight_votes_(historical)(Ctx, #{}).

-spec curve_get_gauge_weight_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weight_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeWeightVotes/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWeights (historical)
%% Gets gaugeWeights.
-spec curve_get_gauge_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weights_(historical)(Ctx) ->
    curve_get_gauge_weights_(historical)(Ctx, #{}).

-spec curve_get_gauge_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeWeights/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWithdraws (historical)
%% Gets gaugeWithdraws.
-spec curve_get_gauge_withdraws_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_withdraws_(historical)(Ctx) ->
    curve_get_gauge_withdraws_(historical)(Ctx, #{}).

-spec curve_get_gauge_withdraws_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_withdraws_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gaugeWithdraws/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gauges (historical)
%% Gets gauges.
-spec curve_get_gauges_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_(historical)(Ctx) ->
    curve_get_gauges_(historical)(Ctx, #{}).

-spec curve_get_gauges_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/gauges/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc HourlyVolumes (historical)
%% Gets hourlyVolumes.
-spec curve_get_hourly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx) ->
    curve_get_hourly_volumes_(historical)(Ctx, #{}).

-spec curve_get_hourly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/hourlyVolumes/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LpTokens (historical)
%% Gets lpTokens.
-spec curve_get_lp_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx) ->
    curve_get_lp_tokens_(historical)(Ctx, #{}).

-spec curve_get_lp_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/lpTokens/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'name', 'symbol', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (historical)
%% Gets pools.
-spec curve_get_pools_(historical)(ctx:ctx()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_pools_(historical)(Ctx) ->
    curve_get_pools_(historical)(Ctx, #{}).

-spec curve_get_pools_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_pools_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/pools/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ProposalVotes (historical)
%% Gets proposalVotes.
-spec curve_get_proposal_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposal_votes_(historical)(Ctx) ->
    curve_get_proposal_votes_(historical)(Ctx, #{}).

-spec curve_get_proposal_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposal_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/proposalVotes/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Proposals (historical)
%% Gets proposals.
-spec curve_get_proposals_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_(historical)(Ctx) ->
    curve_get_proposals_(historical)(Ctx, #{}).

-spec curve_get_proposals_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/proposals/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityEvents (historical)
%% Gets removeLiquidityEvents.
-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/removeLiquidityEvents/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityOneEvents (historical)
%% Gets removeLiquidityOneEvents.
-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_one_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/removeLiquidityOneEvents/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc SystemStates (historical)
%% Gets systemStates.
-spec curve_get_system_states_(historical)(ctx:ctx()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx) ->
    curve_get_system_states_(historical)(Ctx, #{}).

-spec curve_get_system_states_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/systemStates/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical)
%% Gets tokens.
-spec curve_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_tokens_(historical)(Ctx) ->
    curve_get_tokens_(historical)(Ctx, #{}).

-spec curve_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/tokens/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'name', 'symbol'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TransferOwnershipEvents (historical)
%% Gets transferOwnershipEvents.
-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx) ->
    curve_get_transfer_ownership_events_(historical)(Ctx, #{}).

-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/transferOwnershipEvents/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UnderlyingCoins (historical)
%% Gets underlyingCoins.
-spec curve_get_underlying_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx) ->
    curve_get_underlying_coins_(historical)(Ctx, #{}).

-spec curve_get_underlying_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/underlyingCoins/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc VotingApps (historical)
%% Gets votingApps.
-spec curve_get_voting_apps_(historical)(ctx:ctx()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx) ->
    curve_get_voting_apps_(historical)(Ctx, #{}).

-spec curve_get_voting_apps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/votingApps/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WeeklyVolumes (historical)
%% Gets weeklyVolumes.
-spec curve_get_weekly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx) ->
    curve_get_weekly_volumes_(historical)(Ctx, #{}).

-spec curve_get_weekly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/weeklyVolumes/historical"],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc HourlyVolumes (current)
%% Gets hourlyVolumes.
-spec curve_hourly_volumes_(current)(ctx:ctx()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_hourly_volumes_(current)(Ctx) ->
    curve_hourly_volumes_(current)(Ctx, #{}).

-spec curve_hourly_volumes_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_hourly_volumes_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/hourlyVolumes/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LpTokens (current)
%% Gets lpTokens.
-spec curve_lp_tokens_(current)(ctx:ctx()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_lp_tokens_(current)(Ctx) ->
    curve_lp_tokens_(current)(Ctx, #{}).

-spec curve_lp_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_lp_tokens_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/lpTokens/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (current)
%% Gets pools.
-spec curve_pools_(current)(ctx:ctx()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_pools_(current)(Ctx) ->
    curve_pools_(current)(Ctx, #{}).

-spec curve_pools_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_pools_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/pools/current"],
    QS = lists:flatten([])++openapi_utils:optional_params(['id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ProposalVotes (current)
%% Gets proposalVotes.
-spec curve_proposal_votes_(current)(ctx:ctx()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_proposal_votes_(current)(Ctx) ->
    curve_proposal_votes_(current)(Ctx, #{}).

-spec curve_proposal_votes_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_proposal_votes_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/proposalVotes/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Proposals (current)
%% Gets proposals.
-spec curve_proposals_(current)(ctx:ctx()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_proposals_(current)(Ctx) ->
    curve_proposals_(current)(Ctx, #{}).

-spec curve_proposals_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_proposals_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/proposals/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityEvents (current)
%% Gets removeLiquidityEvents.
-spec curve_remove_liquidity_events_(current)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_remove_liquidity_events_(current)(Ctx) ->
    curve_remove_liquidity_events_(current)(Ctx, #{}).

-spec curve_remove_liquidity_events_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_remove_liquidity_events_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/removeLiquidityEvents/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityOneEvents (current)
%% Gets removeLiquidityOneEvents.
-spec curve_remove_liquidity_one_events_(current)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_remove_liquidity_one_events_(current)(Ctx) ->
    curve_remove_liquidity_one_events_(current)(Ctx, #{}).

-spec curve_remove_liquidity_one_events_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_remove_liquidity_one_events_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/removeLiquidityOneEvents/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc SystemStates (current)
%% Gets systemStates.
-spec curve_system_states_(current)(ctx:ctx()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_system_states_(current)(Ctx) ->
    curve_system_states_(current)(Ctx, #{}).

-spec curve_system_states_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_system_states_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/systemStates/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current)
%% Gets tokens.
-spec curve_tokens_(current)(ctx:ctx()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_tokens_(current)(Ctx) ->
    curve_tokens_(current)(Ctx, #{}).

-spec curve_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_tokens_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/tokens/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TransferOwnershipEvents (current)
%% Gets transferOwnershipEvents.
-spec curve_transfer_ownership_events_(current)(ctx:ctx()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_transfer_ownership_events_(current)(Ctx) ->
    curve_transfer_ownership_events_(current)(Ctx, #{}).

-spec curve_transfer_ownership_events_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_transfer_ownership_events_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/transferOwnershipEvents/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UnderlyingCoins (current)
%% Gets underlyingCoins.
-spec curve_underlying_coins_(current)(ctx:ctx()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_underlying_coins_(current)(Ctx) ->
    curve_underlying_coins_(current)(Ctx, #{}).

-spec curve_underlying_coins_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_underlying_coins_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/underlyingCoins/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc VotingApps (current)
%% Gets votingApps.
-spec curve_voting_apps_(current)(ctx:ctx()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_voting_apps_(current)(Ctx) ->
    curve_voting_apps_(current)(Ctx, #{}).

-spec curve_voting_apps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_voting_apps_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/votingApps/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WeeklyVolumes (current)
%% Gets weeklyVolumes.
-spec curve_weekly_volumes_(current)(ctx:ctx()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_weekly_volumes_(current)(Ctx) ->
    curve_weekly_volumes_(current)(Ctx, #{}).

-spec curve_weekly_volumes_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_weekly_volumes_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/dapps/curve/weeklyVolumes/current"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


