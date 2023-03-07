note
    description: "API tests for CRYPTOPUNKS_API"
    date: "$Date$"
    revision: "$Revision$"


class CRYPTOPUNKS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_c_ry_pt_op_un_ks_bids_current
            -- Bids (current)
            --
            -- Gets bids.
        local
            l_response: LIST [CRYPTOPUNKS_BID_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_bids_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_collection_daily_snapshots_current
            -- CollectionDailySnapshots (current)
            --
            -- Gets collectionDailySnapshots.
        local
            l_response: LIST [CRYPTOPUNKS_COLLECTION_DAILY_SNAPSHOT_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_collection_daily_snapshots_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_collections_current
            -- Collections (current)
            --
            -- Gets collections.
        local
            l_response: LIST [CRYPTOPUNKS_COLLECTION_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_collections_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_data_sources_current
            -- DataSources (current)
            --
            -- Gets dataSources.
        local
            l_response: LIST [CRYPTOPUNKS_DATA_SOURCES_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_data_sources_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_bids_historical
            -- Bids (historical)
            --
            -- Gets bids.
        local
            l_response: LIST [CRYPTOPUNKS_BID_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_bids_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_collection_daily_snapshots_historical
            -- CollectionDailySnapshots (historical)
            --
            -- Gets collectionDailySnapshots.
        local
            l_response: LIST [CRYPTOPUNKS_COLLECTION_DAILY_SNAPSHOT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_collection_daily_snapshots_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_collections_historical
            -- Collections (historical)
            --
            -- Gets collections.
        local
            l_response: LIST [CRYPTOPUNKS_COLLECTION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_collections_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_data_sources_historical
            -- DataSources (historical)
            --
            -- Gets dataSources.
        local
            l_response: LIST [CRYPTOPUNKS_DATA_SOURCES_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_data_sources_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_items_historical
            -- Items (historical)
            --
            -- Gets items.
        local
            l_response: LIST [CRYPTOPUNKS_ITEM_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_items_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_market_places_historical
            -- MarketPlaces (historical)
            --
            -- Gets marketPlaces.
        local
            l_response: LIST [CRYPTOPUNKS_MARKET_PLACE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_market_places_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_marketplace_daily_snapshots_historical
            -- MarketplaceDailySnapshots (historical)
            --
            -- Gets marketplaceDailySnapshots.
        local
            l_response: LIST [CRYPTOPUNKS_MARKETPLACE_DAILY_SNAPSHOT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_marketplace_daily_snapshots_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_trades_historical
            -- Trades (historical)
            --
            -- Gets trades.
        local
            l_response: LIST [CRYPTOPUNKS_TRADE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_trades_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_get_users_historical
            -- Users (historical)
            --
            -- Gets users.
        local
            l_response: LIST [CRYPTOPUNKS_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_items_current
            -- Items (current)
            --
            -- Gets items.
        local
            l_response: LIST [CRYPTOPUNKS_ITEM_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_items_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_market_places_current
            -- MarketPlaces (current)
            --
            -- Gets marketPlaces.
        local
            l_response: LIST [CRYPTOPUNKS_MARKET_PLACE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_market_places_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_marketplace_daily_snapshots_current
            -- MarketplaceDailySnapshots (current)
            --
            -- Gets marketplaceDailySnapshots.
        local
            l_response: LIST [CRYPTOPUNKS_MARKETPLACE_DAILY_SNAPSHOT_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_marketplace_daily_snapshots_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_trades_current
            -- Trades (current)
            --
            -- Gets trades.
        local
            l_response: LIST [CRYPTOPUNKS_TRADE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_trades_current
            assert ("not_implemented", False)
        end

    test_c_ry_pt_op_un_ks_users_current
            -- Users (current)
            --
            -- Gets users.
        local
            l_response: LIST [CRYPTOPUNKS_USER_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.c_ry_pt_op_un_ks_users_current
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CRYPTOPUNKS_API
            -- Create an object instance of `CRYPTOPUNKS_API'.
        once
            create { CRYPTOPUNKS_API } Result
        end

end
