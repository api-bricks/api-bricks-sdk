-module(openapi_position).

-include("openapi.hrl").

-export([openapi_position/0]).

-export([openapi_position/1]).

-export_type([openapi_position/0]).

-type openapi_position() ::
  [ {'exchange_id', binary() }
  | {'data', list(openapi_position_data_inner:openapi_position_data_inner()) }
  ].


openapi_position() ->
    openapi_position([]).

openapi_position(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'data', list(openapi_position_data_inner:openapi_position_data_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

