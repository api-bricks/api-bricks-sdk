-module(openapi_cryptopunks_trade_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_trade_dto/0]).

-type openapi_cryptopunks_trade_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => binary(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'transaction_hash' => binary(),
       'log_index' => integer(),
       'timestamp' => binary(),
       'is_bundle' => boolean(),
       'collection' => binary(),
       'token_id' => binary(),
       'amount' => binary(),
       'price_eth' => binary(),
       'buyer' => binary(),
       'seller' => binary()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'transaction_hash' := TransactionHash,
          'log_index' := LogIndex,
          'timestamp' := Timestamp,
          'is_bundle' := IsBundle,
          'collection' := Collection,
          'token_id' := TokenId,
          'amount' := Amount,
          'price_eth' := PriceEth,
          'buyer' := Buyer,
          'seller' := Seller
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'transaction_hash' => TransactionHash,
       'log_index' => LogIndex,
       'timestamp' => Timestamp,
       'is_bundle' => IsBundle,
       'collection' => Collection,
       'token_id' => TokenId,
       'amount' => Amount,
       'price_eth' => PriceEth,
       'buyer' => Buyer,
       'seller' => Seller
     }.
