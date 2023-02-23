-module(openapi_message_reject).

-export([encode/1]).

-export_type([openapi_message_reject/0]).

-type openapi_message_reject() ::
    #{ 'type' => binary(),
       'reject_reason' => openapi_reject_reason:openapi_reject_reason(),
       'exchange_id' => binary(),
       'message' => binary(),
       'rejected_message' => binary()
     }.

encode(#{ 'type' := Type,
          'reject_reason' := RejectReason,
          'exchange_id' := ExchangeId,
          'message' := Message,
          'rejected_message' := RejectedMessage
        }) ->
    #{ 'type' => Type,
       'reject_reason' => RejectReason,
       'exchange_id' => ExchangeId,
       'message' => Message,
       'rejected_message' => RejectedMessage
     }.
