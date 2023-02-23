-module(openapi_ord_type).

-export([encode/1]).

-export_type([openapi_ord_type/0]).

-type openapi_ord_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
