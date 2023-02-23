-module(openapi_message_error).

-include("openapi.hrl").

-export([openapi_message_error/0]).

-export([openapi_message_error/1]).

-export_type([openapi_message_error/0]).

-type openapi_message_error() ::
  [ {'message', binary() }
  ].


openapi_message_error() ->
    openapi_message_error([]).

openapi_message_error(Fields) ->
  Default = [ {'message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

