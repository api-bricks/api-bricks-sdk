note
    description: "API tests for POSITIONS_API"
    date: "$Date$"
    revision: "$Revision$"


class POSITIONS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_positions_get
            -- Get open positions
            --
            -- Get current open positions across all or single exchange.
        local
            l_response: LIST [POSITION]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_positions_get(l_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: POSITIONS_API
            -- Create an object instance of `POSITIONS_API'.
        once
            create { POSITIONS_API } Result
        end

end
