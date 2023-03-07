-module(openapi_cryptopunks_item_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_item_dto/0]).

-export([openapi_cryptopunks_item_dto/1]).

-export_type([openapi_cryptopunks_item_dto/0]).

-type openapi_cryptopunks_item_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'id', binary() }
  ].


openapi_cryptopunks_item_dto() ->
    openapi_cryptopunks_item_dto([]).

openapi_cryptopunks_item_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

