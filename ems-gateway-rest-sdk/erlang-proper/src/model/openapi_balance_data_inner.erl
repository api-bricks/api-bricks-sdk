-module(openapi_balance_data_inner).

-include("openapi.hrl").

-export([openapi_balance_data_inner/0]).

-export([openapi_balance_data_inner/1]).

-export_type([openapi_balance_data_inner/0]).

-type openapi_balance_data_inner() ::
  [ {'asset_id_exchange', binary() }
  | {'asset_id_coinapi', binary() }
  | {'balance', float() }
  | {'available', float() }
  | {'locked', float() }
  | {'last_updated_by', binary() }
  | {'rate_usd', float() }
  | {'traded', float() }
  ].


openapi_balance_data_inner() ->
    openapi_balance_data_inner([]).

openapi_balance_data_inner(Fields) ->
  Default = [ {'asset_id_exchange', binary() }
            , {'asset_id_coinapi', binary() }
            , {'balance', float() }
            , {'available', float() }
            , {'locked', float() }
            , {'last_updated_by', elements([<<"INITIALIZATION">>, <<"BALANCE_MANAGER">>, <<"EXCHANGE">>]) }
            , {'rate_usd', float() }
            , {'traded', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

