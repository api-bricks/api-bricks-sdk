-module(openapi_cryptopunks_collection_daily_snapshot_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_collection_daily_snapshot_dto/0]).

-export([openapi_cryptopunks_collection_daily_snapshot_dto/1]).

-export_type([openapi_cryptopunks_collection_daily_snapshot_dto/0]).

-type openapi_cryptopunks_collection_daily_snapshot_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', binary() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'id', binary() }
  | {'collection', binary() }
  | {'timestamp', binary() }
  | {'royalty_fee', binary() }
  | {'daily_min_sale_price', binary() }
  | {'daily_max_sale_price', binary() }
  | {'cumulative_trade_volume_eth', binary() }
  | {'daily_trade_volume_eth', binary() }
  | {'marketplace_revenue_eth', binary() }
  | {'creator_revenue_eth', binary() }
  | {'total_revenue_eth', binary() }
  | {'trade_count', integer() }
  | {'daily_traded_item_count', integer() }
  ].


openapi_cryptopunks_collection_daily_snapshot_dto() ->
    openapi_cryptopunks_collection_daily_snapshot_dto([]).

openapi_cryptopunks_collection_daily_snapshot_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', binary() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'id', binary() }
            , {'collection', binary() }
            , {'timestamp', binary() }
            , {'royalty_fee', binary() }
            , {'daily_min_sale_price', binary() }
            , {'daily_max_sale_price', binary() }
            , {'cumulative_trade_volume_eth', binary() }
            , {'daily_trade_volume_eth', binary() }
            , {'marketplace_revenue_eth', binary() }
            , {'creator_revenue_eth', binary() }
            , {'total_revenue_eth', binary() }
            , {'trade_count', integer() }
            , {'daily_traded_item_count', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

