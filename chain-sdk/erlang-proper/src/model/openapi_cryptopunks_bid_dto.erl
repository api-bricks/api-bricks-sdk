-module(openapi_cryptopunks_bid_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_bid_dto/0]).

-export([openapi_cryptopunks_bid_dto/1]).

-export_type([openapi_cryptopunks_bid_dto/0]).

-type openapi_cryptopunks_bid_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', binary() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'id', binary() }
  | {'tokens_bid', binary() }
  | {'token_id', binary() }
  | {'timestamp', binary() }
  | {'bidder', binary() }
  ].


openapi_cryptopunks_bid_dto() ->
    openapi_cryptopunks_bid_dto([]).

openapi_cryptopunks_bid_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', binary() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'id', binary() }
            , {'tokens_bid', binary() }
            , {'token_id', binary() }
            , {'timestamp', binary() }
            , {'bidder', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

