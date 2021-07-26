-module(openapi_reject_reason).

-export([encode/1]).

-export_type([openapi_reject_reason/0]).

-type openapi_reject_reason() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
