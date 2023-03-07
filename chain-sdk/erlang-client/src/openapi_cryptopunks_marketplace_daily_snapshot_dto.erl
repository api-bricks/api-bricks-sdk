-module(openapi_cryptopunks_marketplace_daily_snapshot_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_marketplace_daily_snapshot_dto/0]).

-type openapi_cryptopunks_marketplace_daily_snapshot_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => binary(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'marketplace' => binary(),
       'timestamp' => binary(),
       'collection_count' => integer(),
       'cumulative_trade_volume_eth' => binary(),
       'marketplace_revenue_eth' => binary(),
       'creator_revenue_eth' => binary(),
       'total_revenue_eth' => binary(),
       'trade_count' => integer(),
       'cumulative_unique_traders' => integer(),
       'daily_active_traders' => integer(),
       'daily_traded_collection_count' => integer(),
       'daily_traded_item_count' => integer()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'marketplace' := Marketplace,
          'timestamp' := Timestamp,
          'collection_count' := CollectionCount,
          'cumulative_trade_volume_eth' := CumulativeTradeVolumeEth,
          'marketplace_revenue_eth' := MarketplaceRevenueEth,
          'creator_revenue_eth' := CreatorRevenueEth,
          'total_revenue_eth' := TotalRevenueEth,
          'trade_count' := TradeCount,
          'cumulative_unique_traders' := CumulativeUniqueTraders,
          'daily_active_traders' := DailyActiveTraders,
          'daily_traded_collection_count' := DailyTradedCollectionCount,
          'daily_traded_item_count' := DailyTradedItemCount
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'marketplace' => Marketplace,
       'timestamp' => Timestamp,
       'collection_count' => CollectionCount,
       'cumulative_trade_volume_eth' => CumulativeTradeVolumeEth,
       'marketplace_revenue_eth' => MarketplaceRevenueEth,
       'creator_revenue_eth' => CreatorRevenueEth,
       'total_revenue_eth' => TotalRevenueEth,
       'trade_count' => TradeCount,
       'cumulative_unique_traders' => CumulativeUniqueTraders,
       'daily_active_traders' => DailyActiveTraders,
       'daily_traded_collection_count' => DailyTradedCollectionCount,
       'daily_traded_item_count' => DailyTradedItemCount
     }.
