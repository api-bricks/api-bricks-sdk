-module(openapi_cryptopunks_bid_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_bid_dto/0]).

-type openapi_cryptopunks_bid_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => binary(),
       'vid' => integer(),
       'block_range' => binary(),
       'id' => binary(),
       'tokens_bid' => binary(),
       'token_id' => binary(),
       'timestamp' => binary(),
       'bidder' => binary()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'id' := Id,
          'tokens_bid' := TokensBid,
          'token_id' := TokenId,
          'timestamp' := Timestamp,
          'bidder' := Bidder
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'id' => Id,
       'tokens_bid' => TokensBid,
       'token_id' => TokenId,
       'timestamp' => Timestamp,
       'bidder' => Bidder
     }.
