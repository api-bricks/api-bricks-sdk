-module(openapi_cryptopunks_collection_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_collection_dto/0]).

-type openapi_cryptopunks_collection_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => integer(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'name' => binary(),
       'symbol' => binary(),
       'total_supply' => binary(),
       'royalty_fee' => binary(),
       'cumulative_trade_volume_eth' => binary(),
       'marketplace_revenue_eth' => binary(),
       'creator_revenue_eth' => binary(),
       'total_revenue_eth' => binary(),
       'trade_count' => integer(),
       'buyer_count' => integer(),
       'seller_count' => integer()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'name' := Name,
          'symbol' := Symbol,
          'total_supply' := TotalSupply,
          'royalty_fee' := RoyaltyFee,
          'cumulative_trade_volume_eth' := CumulativeTradeVolumeEth,
          'marketplace_revenue_eth' := MarketplaceRevenueEth,
          'creator_revenue_eth' := CreatorRevenueEth,
          'total_revenue_eth' := TotalRevenueEth,
          'trade_count' := TradeCount,
          'buyer_count' := BuyerCount,
          'seller_count' := SellerCount
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'name' => Name,
       'symbol' => Symbol,
       'total_supply' => TotalSupply,
       'royalty_fee' => RoyaltyFee,
       'cumulative_trade_volume_eth' => CumulativeTradeVolumeEth,
       'marketplace_revenue_eth' => MarketplaceRevenueEth,
       'creator_revenue_eth' => CreatorRevenueEth,
       'total_revenue_eth' => TotalRevenueEth,
       'trade_count' => TradeCount,
       'buyer_count' => BuyerCount,
       'seller_count' => SellerCount
     }.
