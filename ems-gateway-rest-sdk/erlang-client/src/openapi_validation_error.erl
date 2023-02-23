-module(openapi_validation_error).

-export([encode/1]).

-export_type([openapi_validation_error/0]).

-type openapi_validation_error() ::
    #{ 'type' => binary(),
       'title' => binary(),
       'status' => integer(),
       'traceId' => binary(),
       'errors' => binary()
     }.

encode(#{ 'type' := Type,
          'title' := Title,
          'status' := Status,
          'traceId' := TraceId,
          'errors' := Errors
        }) ->
    #{ 'type' => Type,
       'title' => Title,
       'status' => Status,
       'traceId' => TraceId,
       'errors' => Errors
     }.
