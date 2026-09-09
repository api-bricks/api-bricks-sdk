note
    description: "API tests for OHLCV_API"
    date: "$Date$"
    revision: "$Revision$"


class OHLCV_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_ohlcv_exchanges_exchange_id_history_get
            -- Historical data by exchange
            --
            -- Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg &#x60;BITSTAMP&#x60;              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between &#x60;time_end&#x60; and &#x60;time_start&#x60; cannot be higher than 1 day. The &#x60;period_id&#x60; cannot be higher than &#x60;1DAY&#x60;. :::
        local
            l_response: LIST [OHLCV_EXCHANGE_TIMESERIES_ITEM]
            l_exchange_id: STRING_32
            l_period_id: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id
            -- l_period_id
            -- l_time_start
            -- l_time_end

            -- l_response := api.v1_ohlcv_exchanges_exchange_id_history_get(l_exchange_id, l_period_id, l_time_start, l_time_end)
            assert ("not_implemented", False)
        end

    test_v1_ohlcv_periods_get
            -- List all periods
            --
            -- Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
        local
            l_response: LIST [V1_TIMESERIES_PERIOD]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_ohlcv_periods_get
            assert ("not_implemented", False)
        end

    test_v1_ohlcv_symbol_id_history_get
            -- Historical data
            --
            -- Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
        local
            l_response: LIST [V1_TIMESERIES_ITEM]
            l_symbol_id: STRING_32
            l_period_id: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id
            -- l_period_id

            -- l_response := api.v1_ohlcv_symbol_id_history_get(l_symbol_id, l_period_id, l_time_start, l_time_end, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_ohlcv_symbol_id_latest_get
            -- Latest data
            --
            -- Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
        local
            l_response: LIST [V1_TIMESERIES_ITEM]
            l_symbol_id: STRING_32
            l_period_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id
            -- l_period_id

            -- l_response := api.v1_ohlcv_symbol_id_latest_get(l_symbol_id, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: OHLCV_API
            -- Create an object instance of `OHLCV_API'.
        once
            create { OHLCV_API } Result
        end

end
