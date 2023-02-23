-module(openapi_order_cancel_single_request).

-export([encode/1]).

-export_type([openapi_order_cancel_single_request/0]).

-type openapi_order_cancel_single_request() ::
    #{ 'exchange_id' := binary(),
       'exchange_order_id' => binary(),
       'client_order_id' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'exchange_order_id' := ExchangeOrderId,
          'client_order_id' := ClientOrderId
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'exchange_order_id' => ExchangeOrderId,
       'client_order_id' => ClientOrderId
     }.
