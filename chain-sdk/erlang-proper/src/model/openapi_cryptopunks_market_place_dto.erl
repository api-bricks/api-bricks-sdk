-module(openapi_cryptopunks_market_place_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_market_place_dto/0]).

-export([openapi_cryptopunks_market_place_dto/1]).

-export_type([openapi_cryptopunks_market_place_dto/0]).

-type openapi_cryptopunks_market_place_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'id', binary() }
  | {'name', binary() }
  | {'slug', binary() }
  | {'schema_version', binary() }
  | {'subgraph_version', binary() }
  | {'methodology_version', binary() }
  | {'collection_count', integer() }
  | {'trade_count', integer() }
  | {'cumulative_trade_volume_eth', binary() }
  | {'marketplace_revenue_eth', binary() }
  | {'creator_revenue_eth', binary() }
  | {'total_revenue_eth', binary() }
  | {'cumulative_unique_traders', integer() }
  ].


openapi_cryptopunks_market_place_dto() ->
    openapi_cryptopunks_market_place_dto([]).

openapi_cryptopunks_market_place_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'id', binary() }
            , {'name', binary() }
            , {'slug', binary() }
            , {'schema_version', binary() }
            , {'subgraph_version', binary() }
            , {'methodology_version', binary() }
            , {'collection_count', integer() }
            , {'trade_count', integer() }
            , {'cumulative_trade_volume_eth', binary() }
            , {'marketplace_revenue_eth', binary() }
            , {'creator_revenue_eth', binary() }
            , {'total_revenue_eth', binary() }
            , {'cumulative_unique_traders', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

