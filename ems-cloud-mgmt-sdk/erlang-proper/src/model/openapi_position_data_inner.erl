-module(openapi_position_data_inner).

-include("openapi.hrl").

-export([openapi_position_data_inner/0]).

-export([openapi_position_data_inner/1]).

-export_type([openapi_position_data_inner/0]).

-type openapi_position_data_inner() ::
  [ {'symbol_id_exchange', binary() }
  | {'symbol_id_coinapi', binary() }
  | {'avg_entry_price', integer() }
  | {'quantity', integer() }
  | {'side', openapi_ord_side:openapi_ord_side() }
  | {'unrealized_pnl', integer() }
  | {'leverage', integer() }
  | {'cross_margin', boolean() }
  | {'liquidation_price', integer() }
  | {'raw_data', map() }
  ].


openapi_position_data_inner() ->
    openapi_position_data_inner([]).

openapi_position_data_inner(Fields) ->
  Default = [ {'symbol_id_exchange', binary() }
            , {'symbol_id_coinapi', binary() }
            , {'avg_entry_price', integer() }
            , {'quantity', integer() }
            , {'side', openapi_ord_side:openapi_ord_side() }
            , {'unrealized_pnl', integer() }
            , {'leverage', integer() }
            , {'cross_margin', boolean() }
            , {'liquidation_price', integer() }
            , {'raw_data', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

