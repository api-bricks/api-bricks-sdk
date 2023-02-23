-module(openapi_ord_type).

-include("openapi.hrl").

-export([openapi_ord_type/0]).

-export_type([openapi_ord_type/0]).

-type openapi_ord_type() ::
  binary().

openapi_ord_type() ->
  elements([<<"LIMIT">>]).

