-module(openapi_order_history).

-include("openapi.hrl").

-export([openapi_order_history/0]).

-export([openapi_order_history/1]).

-export_type([openapi_order_history/0]).

-type openapi_order_history() ::
  [ {'apikey', binary() }
  | {'exchangeId', binary() }
  | {'clientOrderId', binary() }
  | {'symbolIdExchange', binary() }
  | {'symbolIdCoinapi', binary() }
  | {'amountOrder', integer() }
  | {'price', integer() }
  | {'side', integer() }
  | {'orderType', binary() }
  | {'timeInForce', binary() }
  | {'expireTime', date() }
  | {'execInst', list(binary()) }
  | {'clientOrderIdFormatExchange', binary() }
  | {'exchangeOrderId', binary() }
  | {'amountOpen', integer() }
  | {'amountFilled', integer() }
  | {'avgPx', integer() }
  | {'status', binary() }
  | {'statusHistoryStatus', list(binary()) }
  | {'statusHistoryTime', list(date()) }
  | {'errorMessageResult', binary() }
  | {'errorMessageReason', binary() }
  | {'errorMessageMessage', binary() }
  | {'fillsTime', list(date()) }
  | {'fillsPrice', list(integer()) }
  | {'fillsAmount', list(integer()) }
  | {'createdTime', date() }
  ].


openapi_order_history() ->
    openapi_order_history([]).

openapi_order_history(Fields) ->
  Default = [ {'apikey', binary() }
            , {'exchangeId', binary() }
            , {'clientOrderId', binary() }
            , {'symbolIdExchange', binary() }
            , {'symbolIdCoinapi', binary() }
            , {'amountOrder', integer() }
            , {'price', integer() }
            , {'side', integer() }
            , {'orderType', binary() }
            , {'timeInForce', binary() }
            , {'expireTime', date() }
            , {'execInst', list(binary()) }
            , {'clientOrderIdFormatExchange', binary() }
            , {'exchangeOrderId', binary() }
            , {'amountOpen', integer() }
            , {'amountFilled', integer() }
            , {'avgPx', integer() }
            , {'status', binary() }
            , {'statusHistoryStatus', list(binary()) }
            , {'statusHistoryTime', list(date()) }
            , {'errorMessageResult', binary() }
            , {'errorMessageReason', binary() }
            , {'errorMessageMessage', binary() }
            , {'fillsTime', list(date()) }
            , {'fillsPrice', list(integer()) }
            , {'fillsAmount', list(integer()) }
            , {'createdTime', date() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

