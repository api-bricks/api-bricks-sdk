-module(openapi_balance).

-export([encode/1]).

-export_type([openapi_balance/0]).

-type openapi_balance() ::
    #{ 'exchange_id' => binary(),
       'data' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'data' := Data
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'data' => Data
     }.
