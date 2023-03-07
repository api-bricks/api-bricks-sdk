-module(openapi_cryptopunks_data_sources_dto).

-include("openapi.hrl").

-export([openapi_cryptopunks_data_sources_dto/0]).

-export([openapi_cryptopunks_data_sources_dto/1]).

-export_type([openapi_cryptopunks_data_sources_dto/0]).

-type openapi_cryptopunks_data_sources_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'block_range', binary() }
  | {'causality_region', integer() }
  | {'manifest_idx', integer() }
  | {'parent', integer() }
  | {'id', binary() }
  | {'param', binary() }
  | {'context', binary() }
  | {'done_at', integer() }
  ].


openapi_cryptopunks_data_sources_dto() ->
    openapi_cryptopunks_data_sources_dto([]).

openapi_cryptopunks_data_sources_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'block_range', binary() }
            , {'causality_region', integer() }
            , {'manifest_idx', integer() }
            , {'parent', integer() }
            , {'id', binary() }
            , {'param', binary() }
            , {'context', binary() }
            , {'done_at', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

