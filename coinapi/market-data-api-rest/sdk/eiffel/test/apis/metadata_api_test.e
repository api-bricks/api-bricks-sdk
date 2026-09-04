note
    description: "API tests for METADATA_API"
    date: "$Date$"
    revision: "$Revision$"


class METADATA_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_assets_asset_id_get
            -- List all assets by asset ID
            --
            -- 
        local
            l_response: LIST [MARKET_DATA_METADATA_ASSET]
            l_asset_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id

            -- l_response := api.v1_assets_asset_id_get(l_asset_id)
            assert ("not_implemented", False)
        end

    test_v1_assets_get
            -- List all assets
            --
            -- Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
        local
            l_response: LIST [MARKET_DATA_METADATA_ASSET]
            l_filter_asset_id: STRING_32
            l_filter_asset_type: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_assets_get(l_filter_asset_id, l_filter_asset_type)
            assert ("not_implemented", False)
        end

    test_v1_assets_icons_size_get
            -- List all asset icons
            --
            -- Gets the list of icons (of the given size) for all the assets.
        local
            l_response: LIST [MARKET_DATA_METADATA_ICON]
            l_size: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_size

            -- l_response := api.v1_assets_icons_size_get(l_size)
            assert ("not_implemented", False)
        end

    test_v1_chains_chain_id_get
            -- List all chains by chain ID
            --
            -- 
        local
            l_response: LIST [MARKET_DATA_METADATA_CHAIN]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.v1_chains_chain_id_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_v1_chains_get
            -- List all blockchain chains
            --
            -- Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
        local
            l_response: LIST [MARKET_DATA_METADATA_CHAIN]
            l_filter_chain_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_chains_get(l_filter_chain_id)
            assert ("not_implemented", False)
        end

    test_v1_exchanges_exchange_id_get
            -- List all exchanges by exchange_id
            --
            -- 
        local
            l_response: LIST [MARKET_DATA_METADATA_EXCHANGE]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_exchanges_exchange_id_get(l_exchange_id)
            assert ("not_implemented", False)
        end

    test_v1_exchanges_get
            -- List all exchanges
            --
            -- Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
        local
            l_response: LIST [MARKET_DATA_METADATA_EXCHANGE]
            l_filter_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_exchanges_get(l_filter_exchange_id)
            assert ("not_implemented", False)
        end

    test_v1_exchanges_icons_size_get
            -- List of icons for the exchanges
            --
            -- 
        local
            l_response: LIST [MARKET_DATA_METADATA_ICON]
            l_size: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_size

            -- l_response := api.v1_exchanges_icons_size_get(l_size)
            assert ("not_implemented", False)
        end

    test_v1_symbols_exchange_id_active_get
            -- List all active symbols
            --
            -- Retrieves all currently active (listed) symbols, with optional filtering.              :::info \&quot;price_precision\&quot; and \&quot;size_precision\&quot; are data precisions and are not always the same precisions used for trading eg. for the \&quot;BINANCE\&quot; exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \&quot;price_precision\&quot; and \&quot;size_precision\&quot;. The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | &#x60;symbol_id&#x60; pattern --------- | --------- SPOT | &#x60;{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}&#x60; FUTURES | &#x60;{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}&#x60; OPTION | &#x60;{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}&#x60; PERPETUAL | &#x60;{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}&#x60; DEPLOYER_PERPETUAL | &#x60;{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}&#x60; INDEX | &#x60;{exchange_id}_IDX_{index_id}&#x60; CREDIT | &#x60;{exchange_id}_CRE_{asset_id_base}&#x60; CONTACT  | &#x60;{exchange_id}_COT_{contract_id}&#x60; OPTION_COMBO | &#x60;{exchange_id}_OPTCMB_{exchange_symbol_id}&#x60; FUTURE_COMBO | &#x60;{exchange_id}_FTSCMB_{exchange_symbol_id}&#x60;              :::info In the unlikely event when the \&quot;symbol_id\&quot; for more than one market is the same. We will append the additional term (prefixed with the \&quot;_\&quot;) at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of &#x60;symbol_type&#x60; output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for &#x60;symbol_type &#x3D; INDEX&#x60;              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for &#x60;symbol_type &#x3D; FUTURES&#x60;              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for &#x60;symbol_type &#x3D; PERPETUAL&#x60;              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for &#x60;symbol_type &#x3D; DEPLOYER_PERPETUAL&#x60;              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for &#x60;symbol_type &#x3D; OPTION&#x60;              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. &#x60;true&#x60; for Call options, &#x60;false&#x60; for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be &#x60;EUROPEAN&#x60; or &#x60;AMERICAN&#x60; option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for &#x60;symbol_type &#x3D; CONTRACT&#x60;              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if &#x60;contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
        local
            l_response: LIST [MARKET_DATA_METADATA_SYMBOL]
            l_exchange_id: STRING_32
            l_filter_symbol_id: STRING_32
            l_filter_asset_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_symbols_exchange_id_active_get(l_exchange_id, l_filter_symbol_id, l_filter_asset_id)
            assert ("not_implemented", False)
        end

    test_v1_symbols_exchange_id_history_get
            -- List all historical symbols for an exchange.
            --
            -- This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.
        local
            l_response: LIST [MARKET_DATA_METADATA_SYMBOL]
            l_exchange_id: STRING_32
            l_page: INTEGER_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_symbols_exchange_id_history_get(l_exchange_id, l_page, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_symbols_map_exchange_id_get
            -- List active symbol mapping for the exchange
            --
            -- 
        local
            l_response: LIST [V1_SYMBOL_MAPPING]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_symbols_map_exchange_id_get(l_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METADATA_API
            -- Create an object instance of `METADATA_API'.
        once
            create { METADATA_API } Result
        end

end
