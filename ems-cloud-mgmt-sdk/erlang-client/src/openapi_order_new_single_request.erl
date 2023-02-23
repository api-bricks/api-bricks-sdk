-module(openapi_order_new_single_request).

-export([encode/1]).

-export_type([openapi_order_new_single_request/0]).

-type openapi_order_new_single_request() ::
    #{ 'exchange_id' := binary(),
       'client_order_id' := binary(),
       'symbol_id_exchange' => binary(),
       'symbol_id_coinapi' => binary(),
       'amount_order' := integer(),
       'price' := integer(),
       'side' := openapi_ord_side:openapi_ord_side(),
       'order_type' := openapi_ord_type:openapi_ord_type(),
       'time_in_force' := openapi_time_in_force:openapi_time_in_force(),
       'expire_time' => calendar:date(),
       'exec_inst' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'client_order_id' := ClientOrderId,
          'symbol_id_exchange' := SymbolIdExchange,
          'symbol_id_coinapi' := SymbolIdCoinapi,
          'amount_order' := AmountOrder,
          'price' := Price,
          'side' := Side,
          'order_type' := OrderType,
          'time_in_force' := TimeInForce,
          'expire_time' := ExpireTime,
          'exec_inst' := ExecInst
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'client_order_id' => ClientOrderId,
       'symbol_id_exchange' => SymbolIdExchange,
       'symbol_id_coinapi' => SymbolIdCoinapi,
       'amount_order' => AmountOrder,
       'price' => Price,
       'side' => Side,
       'order_type' => OrderType,
       'time_in_force' => TimeInForce,
       'expire_time' => ExpireTime,
       'exec_inst' => ExecInst
     }.
