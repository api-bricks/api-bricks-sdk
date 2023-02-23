-module(openapi_time_in_force).

-include("openapi.hrl").

-export([openapi_time_in_force/0]).

-export_type([openapi_time_in_force/0]).

-type openapi_time_in_force() ::
  binary().

openapi_time_in_force() ->
  elements([<<"GOOD_TILL_CANCEL">>, <<"GOOD_TILL_TIME_EXCHANGE">>, <<"GOOD_TILL_TIME_OMS">>, <<"FILL_OR_KILL">>, <<"IMMEDIATE_OR_CANCEL">>]).

