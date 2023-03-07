-module(openapi_cryptopunks_market_place_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_market_place_dto/0]).

-type openapi_cryptopunks_market_place_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => integer(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'name' => binary(),
       'slug' => binary(),
       'schema_version' => binary(),
       'subgraph_version' => binary(),
       'methodology_version' => binary(),
       'collection_count' => integer(),
       'trade_count' => integer(),
       'cumulative_trade_volume_eth' => binary(),
       'marketplace_revenue_eth' => binary(),
       'creator_revenue_eth' => binary(),
       'total_revenue_eth' => binary(),
       'cumulative_unique_traders' => integer()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'name' := Name,
          'slug' := Slug,
          'schema_version' := SchemaVersion,
          'subgraph_version' := SubgraphVersion,
          'methodology_version' := MethodologyVersion,
          'collection_count' := CollectionCount,
          'trade_count' := TradeCount,
          'cumulative_trade_volume_eth' := CumulativeTradeVolumeEth,
          'marketplace_revenue_eth' := MarketplaceRevenueEth,
          'creator_revenue_eth' := CreatorRevenueEth,
          'total_revenue_eth' := TotalRevenueEth,
          'cumulative_unique_traders' := CumulativeUniqueTraders
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'name' => Name,
       'slug' => Slug,
       'schema_version' => SchemaVersion,
       'subgraph_version' => SubgraphVersion,
       'methodology_version' => MethodologyVersion,
       'collection_count' => CollectionCount,
       'trade_count' => TradeCount,
       'cumulative_trade_volume_eth' => CumulativeTradeVolumeEth,
       'marketplace_revenue_eth' => MarketplaceRevenueEth,
       'creator_revenue_eth' => CreatorRevenueEth,
       'total_revenue_eth' => TotalRevenueEth,
       'cumulative_unique_traders' => CumulativeUniqueTraders
     }.
