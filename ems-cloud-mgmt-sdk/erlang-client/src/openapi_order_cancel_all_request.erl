-module(openapi_order_cancel_all_request).

-export([encode/1]).

-export_type([openapi_order_cancel_all_request/0]).

-type openapi_order_cancel_all_request() ::
    #{ 'exchange_id' := binary()
     }.

encode(#{ 'exchange_id' := ExchangeId
        }) ->
    #{ 'exchange_id' => ExchangeId
     }.
