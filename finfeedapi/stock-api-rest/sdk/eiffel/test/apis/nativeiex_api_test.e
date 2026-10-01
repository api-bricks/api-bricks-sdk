note
    description: "API tests for NATIVEIEX_API"
    date: "$Date$"
    revision: "$Revision$"


class NATIVEIEX_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_native_iex_admin_messages_symbol_get
            -- Get Admin Messages
            --
            -- Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
        local
            l_response: LIST [MODELS_ADMIN_MESSAGE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
            l_time_start: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol

            -- l_response := api.v1_native_iex_admin_messages_symbol_get(l_symbol, l_date, l_time_start, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_admin_system_event_get
            -- Get System Events
            --
            -- Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
        local
            l_response: LIST [IEX_SYSTEM_EVENT_SYSTEM_EVENT_MODEL]
            l_date: DATE_TIME
            l_time_start: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_native_iex_admin_system_event_get(l_date, l_time_start, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_level1_quote_symbol_get
            -- Get Level-1 Quotes
            --
            -- Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
        local
            l_response: LIST [IEX_QUOTE_UPDATE_QUOTE_UPDATE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
            l_time_start: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol

            -- l_response := api.v1_native_iex_level1_quote_symbol_get(l_symbol, l_date, l_time_start, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_level2_price_level_update_symbol_get
            -- Get Level-2 Price Level Book
            --
            -- Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
        local
            l_response: LIST [IEX_PRICE_LEVEL_UPDATE_PRICE_LEVEL_UPDATE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
            l_time_start: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol

            -- l_response := api.v1_native_iex_level2_price_level_update_symbol_get(l_symbol, l_date, l_time_start, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_level3_order_book_symbol_get
            -- Get Level-3 Order Book
            --
            -- Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
        local
            l_response: LIST [MODELS_ORDER_BOOK_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
            l_time_start: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol

            -- l_response := api.v1_native_iex_level3_order_book_symbol_get(l_symbol, l_date, l_time_start, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_trade_symbol_get
            -- Get Trades
            --
            -- Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
        local
            l_response: LIST [IEX_TRADE_TRADE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
            l_time_start: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol

            -- l_response := api.v1_native_iex_trade_symbol_get(l_symbol, l_date, l_time_start, l_limit)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: NATIVEIEX_API
            -- Create an object instance of `NATIVEIEX_API'.
        once
            create { NATIVEIEX_API } Result
        end

end
