-module(openapi_fills).

-export([encode/1]).

-export_type([openapi_fills/0]).

-type openapi_fills() ::
    #{ 'time' => calendar:date(),
       'price' => integer(),
       'amount' => integer()
     }.

encode(#{ 'time' := Time,
          'price' := Price,
          'amount' := Amount
        }) ->
    #{ 'time' => Time,
       'price' => Price,
       'amount' => Amount
     }.
