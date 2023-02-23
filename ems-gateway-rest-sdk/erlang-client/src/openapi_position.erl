-module(openapi_position).

-export([encode/1]).

-export_type([openapi_position/0]).

-type openapi_position() ::
    #{ 'exchange_id' => binary(),
       'data' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'data' := Data
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'data' => Data
     }.
