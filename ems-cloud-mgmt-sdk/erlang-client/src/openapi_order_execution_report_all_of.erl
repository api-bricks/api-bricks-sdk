-module(openapi_order_execution_report_all_of).

-export([encode/1]).

-export_type([openapi_order_execution_report_all_of/0]).

-type openapi_order_execution_report_all_of() ::
    #{ 'client_order_id_format_exchange' := binary(),
       'exchange_order_id' => binary(),
       'amount_open' := integer(),
       'amount_filled' := integer(),
       'avg_px' => integer(),
       'status' := openapi_ord_status:openapi_ord_status(),
       'status_history' => list(),
       'error_message' => binary(),
       'fills' => list()
     }.

encode(#{ 'client_order_id_format_exchange' := ClientOrderIdFormatExchange,
          'exchange_order_id' := ExchangeOrderId,
          'amount_open' := AmountOpen,
          'amount_filled' := AmountFilled,
          'avg_px' := AvgPx,
          'status' := Status,
          'status_history' := StatusHistory,
          'error_message' := ErrorMessage,
          'fills' := Fills
        }) ->
    #{ 'client_order_id_format_exchange' => ClientOrderIdFormatExchange,
       'exchange_order_id' => ExchangeOrderId,
       'amount_open' => AmountOpen,
       'amount_filled' => AmountFilled,
       'avg_px' => AvgPx,
       'status' => Status,
       'status_history' => StatusHistory,
       'error_message' => ErrorMessage,
       'fills' => Fills
     }.
