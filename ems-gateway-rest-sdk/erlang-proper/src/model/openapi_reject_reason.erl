-module(openapi_reject_reason).

-include("openapi.hrl").

-export([openapi_reject_reason/0]).

-export_type([openapi_reject_reason/0]).

-type openapi_reject_reason() ::
  binary().

openapi_reject_reason() ->
  elements([<<"OTHER">>, <<"EXCHANGE_UNREACHABLE">>, <<"EXCHANGE_RESPONSE_TIMEOUT">>, <<"ORDER_ID_NOT_FOUND">>, <<"INVALID_TYPE">>, <<"METHOD_NOT_SUPPORTED">>, <<"JSON_ERROR">>]).

