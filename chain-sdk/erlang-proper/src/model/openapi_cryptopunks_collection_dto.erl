-module(openapi_cryptopunks_collection_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_collection_dto/0]).

-export([openapi_cryptopunks_collection_dto/1]).

-export_type([openapi_cryptopunks_collection_dto/0]).

-type openapi_cryptopunks_collection_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'id', binary() }
  | {'name', binary() }
  | {'symbol', binary() }
  | {'total_supply', binary() }
  | {'royalty_fee', binary() }
  | {'cumulative_trade_volume_eth', binary() }
  | {'marketplace_revenue_eth', binary() }
  | {'creator_revenue_eth', binary() }
  | {'total_revenue_eth', binary() }
  | {'trade_count', integer() }
  | {'buyer_count', integer() }
  | {'seller_count', integer() }
  ].


openapi_cryptopunks_collection_dto() ->
    openapi_cryptopunks_collection_dto([]).

openapi_cryptopunks_collection_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'id', binary() }
            , {'name', binary() }
            , {'symbol', binary() }
            , {'total_supply', binary() }
            , {'royalty_fee', binary() }
            , {'cumulative_trade_volume_eth', binary() }
            , {'marketplace_revenue_eth', binary() }
            , {'creator_revenue_eth', binary() }
            , {'total_revenue_eth', binary() }
            , {'trade_count', integer() }
            , {'buyer_count', integer() }
            , {'seller_count', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

