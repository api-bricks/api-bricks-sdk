-module(openapi_balance).

-include("openapi.hrl").

-export([openapi_balance/0]).

-export([openapi_balance/1]).

-export_type([openapi_balance/0]).

-type openapi_balance() ::
  [ {'exchange_id', binary() }
  | {'data', list(openapi_balance_data_inner:openapi_balance_data_inner()) }
  ].


openapi_balance() ->
    openapi_balance([]).

openapi_balance(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'data', list(openapi_balance_data_inner:openapi_balance_data_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

