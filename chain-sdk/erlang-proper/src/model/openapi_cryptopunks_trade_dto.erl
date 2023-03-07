-module(openapi_cryptopunks_trade_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_trade_dto/0]).

-export([openapi_cryptopunks_trade_dto/1]).

-export_type([openapi_cryptopunks_trade_dto/0]).

-type openapi_cryptopunks_trade_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', binary() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'id', binary() }
  | {'transaction_hash', binary() }
  | {'log_index', integer() }
  | {'timestamp', binary() }
  | {'is_bundle', boolean() }
  | {'collection', binary() }
  | {'token_id', binary() }
  | {'amount', binary() }
  | {'price_eth', binary() }
  | {'buyer', binary() }
  | {'seller', binary() }
  ].


openapi_cryptopunks_trade_dto() ->
    openapi_cryptopunks_trade_dto([]).

openapi_cryptopunks_trade_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', binary() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'id', binary() }
            , {'transaction_hash', binary() }
            , {'log_index', integer() }
            , {'timestamp', binary() }
            , {'is_bundle', boolean() }
            , {'collection', binary() }
            , {'token_id', binary() }
            , {'amount', binary() }
            , {'price_eth', binary() }
            , {'buyer', binary() }
            , {'seller', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

