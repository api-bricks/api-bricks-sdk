-module(openapi_message_error).

-export([encode/1]).

-export_type([openapi_message_error/0]).

-type openapi_message_error() ::
    #{ 'message' => binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
