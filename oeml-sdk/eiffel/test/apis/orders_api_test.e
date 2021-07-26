note
    description: "API tests for ORDERS_API"
    date: "$Date$"
    revision: "$Revision$"


class ORDERS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_v1_orders_cancel_all_post
            -- Cancel all orders request
            -- 
            -- This request cancels all open orders on single specified exchange. 
        local
            l_response: MESSAGE_REJECT
            l_order_cancel_all_request: ORDER_CANCEL_ALL_REQUEST
        do
            -- TODO: Initialize required params.
            -- l_order_cancel_all_request
                      
            -- l_response := api.v1_orders_cancel_all_post(l_order_cancel_all_request)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_cancel_post
            -- Cancel order request
            -- 
            -- Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;. 
        local
            l_response: ORDER_EXECUTION_REPORT
            l_order_cancel_single_request: ORDER_CANCEL_SINGLE_REQUEST
        do
            -- TODO: Initialize required params.
            -- l_order_cancel_single_request
                      
            -- l_response := api.v1_orders_cancel_post(l_order_cancel_single_request)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_get
            -- Get open orders
            -- 
            -- Get last execution reports for open orders across all or single exchange. 
        local
            l_response: LIST [ORDER_EXECUTION_REPORT]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.v1_orders_get(l_exchange_id)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_post
            -- Send new order
            -- 
            -- This request creating new order for the specific exchange. 
        local
            l_response: ORDER_EXECUTION_REPORT
            l_order_new_single_request: ORDER_NEW_SINGLE_REQUEST
        do
            -- TODO: Initialize required params.
            -- l_order_new_single_request
                      
            -- l_response := api.v1_orders_post(l_order_new_single_request)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_status_client_order_id_get
            -- Get order execution report
            -- 
            -- Get the last order execution report for the specified order. The requested order does not need to be active or opened. 
        local
            l_response: ORDER_EXECUTION_REPORT
            l_client_order_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_client_order_id
                      
            -- l_response := api.v1_orders_status_client_order_id_get(l_client_order_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ORDERS_API
            -- Create an object instance of `ORDERS_API'.
        once            
            create { ORDERS_API } Result
        end

end
