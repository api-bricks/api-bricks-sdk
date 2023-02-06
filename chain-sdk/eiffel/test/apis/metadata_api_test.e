note
    description: "API tests for METADATA_API"
    date: "$Date$"
    revision: "$Revision$"


class METADATA_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_metadata_chains_get
            -- List all chains.
            --
            -- 
        local
        do
            -- TODO: Initialize required params.

            -- api.metadata_chains_get
            assert ("not_implemented", False)
        end

    test_metadata_dapps_get
            -- List all decentralized applications.
            --
            -- 
        local
        do
            -- TODO: Initialize required params.

            -- api.metadata_dapps_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METADATA_API
            -- Create an object instance of `METADATA_API'.
        once
            create { METADATA_API } Result
        end

end
