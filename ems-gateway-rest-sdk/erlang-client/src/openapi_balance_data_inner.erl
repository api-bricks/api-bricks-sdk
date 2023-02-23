-module(openapi_balance_data_inner).

-export([encode/1]).

-export_type([openapi_balance_data_inner/0]).

-type openapi_balance_data_inner() ::
    #{ 'asset_id_exchange' => binary(),
       'asset_id_coinapi' => binary(),
       'balance' => float(),
       'available' => float(),
       'locked' => float(),
       'last_updated_by' => binary(),
       'rate_usd' => float(),
       'traded' => float()
     }.

encode(#{ 'asset_id_exchange' := AssetIdExchange,
          'asset_id_coinapi' := AssetIdCoinapi,
          'balance' := Balance,
          'available' := Available,
          'locked' := Locked,
          'last_updated_by' := LastUpdatedBy,
          'rate_usd' := RateUsd,
          'traded' := Traded
        }) ->
    #{ 'asset_id_exchange' => AssetIdExchange,
       'asset_id_coinapi' => AssetIdCoinapi,
       'balance' => Balance,
       'available' => Available,
       'locked' => Locked,
       'last_updated_by' => LastUpdatedBy,
       'rate_usd' => RateUsd,
       'traded' => Traded
     }.
