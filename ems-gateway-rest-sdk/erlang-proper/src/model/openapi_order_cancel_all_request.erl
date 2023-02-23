-module(openapi_order_cancel_all_request).

-include("openapi.hrl").

-export([openapi_order_cancel_all_request/0]).

-export([openapi_order_cancel_all_request/1]).

-export_type([openapi_order_cancel_all_request/0]).

-type openapi_order_cancel_all_request() ::
  [ {'exchange_id', binary() }
  ].


openapi_order_cancel_all_request() ->
    openapi_order_cancel_all_request([]).

openapi_order_cancel_all_request(Fields) ->
  Default = [ {'exchange_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

