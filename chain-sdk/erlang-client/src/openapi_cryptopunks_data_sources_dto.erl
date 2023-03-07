-module(openapi_cryptopunks_data_sources_dto).

-export([encode/1]).

-export_type([openapi_cryptopunks_data_sources_dto/0]).

-type openapi_cryptopunks_data_sources_dto() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'block_number' => integer(),
       'vid' => integer(),
       'block_range' => binary(),
       'causality_region' => integer(),
       'manifest_idx' => integer(),
       'parent' => integer(),
       'id' => binary(),
       'param' => binary(),
       'context' => binary(),
       'done_at' => integer()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'block_number' := BlockNumber,
          'vid' := Vid,
          'block_range' := BlockRange,
          'causality_region' := CausalityRegion,
          'manifest_idx' := ManifestIdx,
          'parent' := Parent,
          'id' := Id,
          'param' := Param,
          'context' := Context,
          'done_at' := DoneAt
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'block_number' => BlockNumber,
       'vid' => Vid,
       'block_range' => BlockRange,
       'causality_region' => CausalityRegion,
       'manifest_idx' => ManifestIdx,
       'parent' => Parent,
       'id' => Id,
       'param' => Param,
       'context' => Context,
       'done_at' => DoneAt
     }.
