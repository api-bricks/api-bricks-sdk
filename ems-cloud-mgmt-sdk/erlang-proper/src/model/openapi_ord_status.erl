-module(openapi_ord_status).

-include("openapi.hrl").

-export([openapi_ord_status/0]).

-export_type([openapi_ord_status/0]).

-type openapi_ord_status() ::
  binary().

openapi_ord_status() ->
  elements([<<"RECEIVED">>, <<"ROUTING">>, <<"ROUTED">>, <<"NEW">>, <<"PENDING_CANCEL">>, <<"PARTIALLY_FILLED">>, <<"FILLED">>, <<"CANCELED">>, <<"REJECTED">>]).

