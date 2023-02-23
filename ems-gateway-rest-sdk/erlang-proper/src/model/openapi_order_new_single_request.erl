-module(openapi_order_new_single_request).

-include("openapi.hrl").

-export([openapi_order_new_single_request/0]).

-export([openapi_order_new_single_request/1]).

-export_type([openapi_order_new_single_request/0]).

-type openapi_order_new_single_request() ::
  [ {'exchange_id', binary() }
  | {'client_order_id', binary() }
  | {'symbol_id_exchange', binary() }
  | {'symbol_id_coinapi', binary() }
  | {'amount_order', integer() }
  | {'price', integer() }
  | {'side', openapi_ord_side:openapi_ord_side() }
  | {'order_type', openapi_ord_type:openapi_ord_type() }
  | {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
  | {'expire_time', date() }
  | {'exec_inst', list(binary()) }
  ].


openapi_order_new_single_request() ->
    openapi_order_new_single_request([]).

openapi_order_new_single_request(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'client_order_id', binary() }
            , {'symbol_id_exchange', binary() }
            , {'symbol_id_coinapi', binary() }
            , {'amount_order', integer() }
            , {'price', integer() }
            , {'side', openapi_ord_side:openapi_ord_side() }
            , {'order_type', openapi_ord_type:openapi_ord_type() }
            , {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
            , {'expire_time', date() }
            , {'exec_inst', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

