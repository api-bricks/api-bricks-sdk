-module(openapi_order_cancel_single_request).

-include("openapi.hrl").

-export([openapi_order_cancel_single_request/0]).

-export([openapi_order_cancel_single_request/1]).

-export_type([openapi_order_cancel_single_request/0]).

-type openapi_order_cancel_single_request() ::
  [ {'exchange_id', binary() }
  | {'exchange_order_id', binary() }
  | {'client_order_id', binary() }
  ].


openapi_order_cancel_single_request() ->
    openapi_order_cancel_single_request([]).

openapi_order_cancel_single_request(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'exchange_order_id', binary() }
            , {'client_order_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

