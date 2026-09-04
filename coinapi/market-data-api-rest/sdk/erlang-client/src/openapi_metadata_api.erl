-module(openapi_metadata_api).

-export([v1_assets_asset_id_get/2, v1_assets_asset_id_get/3,
         v1_assets_get/1, v1_assets_get/2,
         v1_assets_icons_size_get/2, v1_assets_icons_size_get/3,
         v1_chains_chain_id_get/2, v1_chains_chain_id_get/3,
         v1_chains_get/1, v1_chains_get/2,
         v1_exchanges_exchange_id_get/2, v1_exchanges_exchange_id_get/3,
         v1_exchanges_get/1, v1_exchanges_get/2,
         v1_exchanges_icons_size_get/2, v1_exchanges_icons_size_get/3,
         v1_symbols_exchange_id_active_get/2, v1_symbols_exchange_id_active_get/3,
         v1_symbols_exchange_id_history_get/2, v1_symbols_exchange_id_history_get/3,
         v1_symbols_map_exchange_id_get/2, v1_symbols_map_exchange_id_get/3]).

-define(BASE_URL, <<"">>).

%% @doc List all assets by asset ID
%% 
-spec v1_assets_asset_id_get(ctx:ctx(), binary()) -> {ok, [openapi_market_data_metadata_asset:openapi_market_data_metadata_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_asset_id_get(Ctx, AssetId) ->
    v1_assets_asset_id_get(Ctx, AssetId, #{}).

-spec v1_assets_asset_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_market_data_metadata_asset:openapi_market_data_metadata_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_asset_id_get(Ctx, AssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/assets/", AssetId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all assets
%% Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
-spec v1_assets_get(ctx:ctx()) -> {ok, [openapi_market_data_metadata_asset:openapi_market_data_metadata_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_get(Ctx) ->
    v1_assets_get(Ctx, #{}).

-spec v1_assets_get(ctx:ctx(), maps:map()) -> {ok, [openapi_market_data_metadata_asset:openapi_market_data_metadata_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/assets"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_asset_id', 'filter_asset_type'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all asset icons
%% Gets the list of icons (of the given size) for all the assets.
-spec v1_assets_icons_size_get(ctx:ctx(), integer()) -> {ok, [openapi_market_data_metadata_icon:openapi_market_data_metadata_icon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_icons_size_get(Ctx, Size) ->
    v1_assets_icons_size_get(Ctx, Size, #{}).

-spec v1_assets_icons_size_get(ctx:ctx(), integer(), maps:map()) -> {ok, [openapi_market_data_metadata_icon:openapi_market_data_metadata_icon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_icons_size_get(Ctx, Size, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/assets/icons/", Size, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all chains by chain ID
%% 
-spec v1_chains_chain_id_get(ctx:ctx(), binary()) -> {ok, [openapi_market_data_metadata_chain:openapi_market_data_metadata_chain()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_chains_chain_id_get(Ctx, ChainId) ->
    v1_chains_chain_id_get(Ctx, ChainId, #{}).

-spec v1_chains_chain_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_market_data_metadata_chain:openapi_market_data_metadata_chain()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_chains_chain_id_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/chains/", ChainId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all blockchain chains
%% Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
-spec v1_chains_get(ctx:ctx()) -> {ok, [openapi_market_data_metadata_chain:openapi_market_data_metadata_chain()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_chains_get(Ctx) ->
    v1_chains_get(Ctx, #{}).

-spec v1_chains_get(ctx:ctx(), maps:map()) -> {ok, [openapi_market_data_metadata_chain:openapi_market_data_metadata_chain()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_chains_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/chains"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_chain_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all exchanges by exchange_id
%% 
-spec v1_exchanges_exchange_id_get(ctx:ctx(), binary()) -> {ok, [openapi_market_data_metadata_exchange:openapi_market_data_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_exchange_id_get(Ctx, ExchangeId) ->
    v1_exchanges_exchange_id_get(Ctx, ExchangeId, #{}).

-spec v1_exchanges_exchange_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_market_data_metadata_exchange:openapi_market_data_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_exchange_id_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchanges/", ExchangeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all exchanges
%% Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
-spec v1_exchanges_get(ctx:ctx()) -> {ok, [openapi_market_data_metadata_exchange:openapi_market_data_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_get(Ctx) ->
    v1_exchanges_get(Ctx, #{}).

-spec v1_exchanges_get(ctx:ctx(), maps:map()) -> {ok, [openapi_market_data_metadata_exchange:openapi_market_data_metadata_exchange()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchanges"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List of icons for the exchanges
%% 
-spec v1_exchanges_icons_size_get(ctx:ctx(), integer()) -> {ok, [openapi_market_data_metadata_icon:openapi_market_data_metadata_icon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_icons_size_get(Ctx, Size) ->
    v1_exchanges_icons_size_get(Ctx, Size, #{}).

-spec v1_exchanges_icons_size_get(ctx:ctx(), integer(), maps:map()) -> {ok, [openapi_market_data_metadata_icon:openapi_market_data_metadata_icon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_exchanges_icons_size_get(Ctx, Size, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/exchanges/icons/", Size, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all active symbols
%% Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
-spec v1_symbols_exchange_id_active_get(ctx:ctx(), binary()) -> {ok, [openapi_market_data_metadata_symbol:openapi_market_data_metadata_symbol()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_exchange_id_active_get(Ctx, ExchangeId) ->
    v1_symbols_exchange_id_active_get(Ctx, ExchangeId, #{}).

-spec v1_symbols_exchange_id_active_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_market_data_metadata_symbol:openapi_market_data_metadata_symbol()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_exchange_id_active_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/symbols/", ExchangeId, "/active"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_symbol_id', 'filter_asset_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all historical symbols for an exchange.
%% This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.
-spec v1_symbols_exchange_id_history_get(ctx:ctx(), binary()) -> {ok, [openapi_market_data_metadata_symbol:openapi_market_data_metadata_symbol()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_exchange_id_history_get(Ctx, ExchangeId) ->
    v1_symbols_exchange_id_history_get(Ctx, ExchangeId, #{}).

-spec v1_symbols_exchange_id_history_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_market_data_metadata_symbol:openapi_market_data_metadata_symbol()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_exchange_id_history_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/symbols/", ExchangeId, "/history"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List active symbol mapping for the exchange
%% 
-spec v1_symbols_map_exchange_id_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_symbol_mapping:openapi_v1_symbol_mapping()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_map_exchange_id_get(Ctx, ExchangeId) ->
    v1_symbols_map_exchange_id_get(Ctx, ExchangeId, #{}).

-spec v1_symbols_map_exchange_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_symbol_mapping:openapi_v1_symbol_mapping()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_symbols_map_exchange_id_get(Ctx, ExchangeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/symbols/map/", ExchangeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


