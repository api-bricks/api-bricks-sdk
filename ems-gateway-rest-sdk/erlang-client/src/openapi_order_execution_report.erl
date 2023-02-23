-module(openapi_order_execution_report).

-export([encode/1]).

-export_type([openapi_order_execution_report/0]).

-type openapi_order_execution_report() ::
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
       'exec_inst' => list(),
       'client_order_id_format_exchange' := binary(),
       'exchange_order_id' => binary(),
       'amount_open' := integer(),
       'amount_filled' := integer(),
       'avg_px' => integer(),
       'status' := openapi_ord_status:openapi_ord_status(),
       'status_history' => list(),
       'error_message' => binary(),
       'fills' => list()
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
          'exec_inst' := ExecInst,
          'client_order_id_format_exchange' := ClientOrderIdFormatExchange,
          'exchange_order_id' := ExchangeOrderId,
          'amount_open' := AmountOpen,
          'amount_filled' := AmountFilled,
          'avg_px' := AvgPx,
          'status' := Status,
          'status_history' := StatusHistory,
          'error_message' := ErrorMessage,
          'fills' := Fills
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
       'exec_inst' => ExecInst,
       'client_order_id_format_exchange' => ClientOrderIdFormatExchange,
       'exchange_order_id' => ExchangeOrderId,
       'amount_open' => AmountOpen,
       'amount_filled' => AmountFilled,
       'avg_px' => AvgPx,
       'status' => Status,
       'status_history' => StatusHistory,
       'error_message' => ErrorMessage,
       'fills' => Fills
     }.
