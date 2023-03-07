-module(openapi_cryptopunks_collection_daily_snapshot_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_collection_daily_snapshot_dto/0]).

-type openapi_cryptopunks_collection_daily_snapshot_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => binary(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'collection' => binary(),
       'timestamp' => binary(),
       'royalty_fee' => binary(),
       'daily_min_sale_price' => binary(),
       'daily_max_sale_price' => binary(),
       'cumulative_trade_volume_eth' => binary(),
       'daily_trade_volume_eth' => binary(),
       'marketplace_revenue_eth' => binary(),
       'creator_revenue_eth' => binary(),
       'total_revenue_eth' => binary(),
       'trade_count' => integer(),
       'daily_traded_item_count' => integer()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'collection' := Collection,
          'timestamp' := Timestamp,
          'royalty_fee' := RoyaltyFee,
          'daily_min_sale_price' := DailyMinSalePrice,
          'daily_max_sale_price' := DailyMaxSalePrice,
          'cumulative_trade_volume_eth' := CumulativeTradeVolumeEth,
          'daily_trade_volume_eth' := DailyTradeVolumeEth,
          'marketplace_revenue_eth' := MarketplaceRevenueEth,
          'creator_revenue_eth' := CreatorRevenueEth,
          'total_revenue_eth' := TotalRevenueEth,
          'trade_count' := TradeCount,
          'daily_traded_item_count' := DailyTradedItemCount
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'collection' => Collection,
       'timestamp' => Timestamp,
       'royalty_fee' => RoyaltyFee,
       'daily_min_sale_price' => DailyMinSalePrice,
       'daily_max_sale_price' => DailyMaxSalePrice,
       'cumulative_trade_volume_eth' => CumulativeTradeVolumeEth,
       'daily_trade_volume_eth' => DailyTradeVolumeEth,
       'marketplace_revenue_eth' => MarketplaceRevenueEth,
       'creator_revenue_eth' => CreatorRevenueEth,
       'total_revenue_eth' => TotalRevenueEth,
       'trade_count' => TradeCount,
       'daily_traded_item_count' => DailyTradedItemCount
     }.
