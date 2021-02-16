-module(openapi_fills).

-include("openapi.hrl").

-export([openapi_fills/0]).

-export([openapi_fills/1]).

-export_type([openapi_fills/0]).

-type openapi_fills() ::
  [ {'time', date() }
  | {'price', integer() }
  | {'amount', integer() }
  ].


openapi_fills() ->
    openapi_fills([]).

openapi_fills(Fields) ->
  Default = [ {'time', date() }
            , {'price', integer() }
            , {'amount', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

