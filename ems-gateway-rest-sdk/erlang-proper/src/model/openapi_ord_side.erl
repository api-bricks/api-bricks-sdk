-module(openapi_ord_side).

-include("openapi.hrl").

-export([openapi_ord_side/0]).

-export_type([openapi_ord_side/0]).

-type openapi_ord_side() ::
  binary().

openapi_ord_side() ->
  elements([<<"BUY">>, <<"SELL">>]).

