-module(openapi_message_reject).

-include("openapi.hrl").

-export([openapi_message_reject/0]).

-export([openapi_message_reject/1]).

-export_type([openapi_message_reject/0]).

-type openapi_message_reject() ::
  [ {'type', binary() }
  | {'reject_reason', openapi_reject_reason:openapi_reject_reason() }
  | {'exchange_id', binary() }
  | {'message', binary() }
  | {'rejected_message', binary() }
  ].


openapi_message_reject() ->
    openapi_message_reject([]).

openapi_message_reject(Fields) ->
  Default = [ {'type', binary() }
            , {'reject_reason', openapi_reject_reason:openapi_reject_reason() }
            , {'exchange_id', binary() }
            , {'message', binary() }
            , {'rejected_message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

