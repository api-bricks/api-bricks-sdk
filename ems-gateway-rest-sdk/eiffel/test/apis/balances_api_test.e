note
    description: "API tests for BALANCES_API"
    date: "$Date$"
    revision: "$Revision$"


class BALANCES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_balances_get
            -- Get balances
            --
            -- Get current currency balance from all or single exchange.
        local
            l_response: LIST [BALANCE]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_balances_get(l_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: BALANCES_API
            -- Create an object instance of `BALANCES_API'.
        once
            create { BALANCES_API } Result
        end

end
