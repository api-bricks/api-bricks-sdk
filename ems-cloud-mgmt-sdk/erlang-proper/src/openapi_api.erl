-module(openapi_api).

-export([ v1_positions_get/0
        ]).

-define(BASE_URL, "").

%% @doc Get open positions
%% Get current open positions across all or single exchange.
-spec v1_positions_get() ->
  openapi_utils:response().
v1_positions_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/positions"],
  QueryString = [<<"exchange_id=">>, ExchangeId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

