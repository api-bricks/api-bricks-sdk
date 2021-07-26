@isTest
private class OASOrdersApiTest {
    /**
     * Cancel all orders request
     *
     * This request cancels all open orders on single specified exchange.
     */
    @isTest
    private static void v1OrdersCancelAllPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOrderCancelAllRequest' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASMessageReject response;
        OASMessageReject expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASMessageReject.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMessageReject.getExample();
        response = (OASMessageReject) api.v1OrdersCancelAllPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel order request
     *
     * Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
     */
    @isTest
    private static void v1OrdersCancelPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOrderCancelSingleRequest' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASOrderExecutionReport response;
        OASOrderExecutionReport expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASOrderExecutionReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderExecutionReport.getExample();
        response = (OASOrderExecutionReport) api.v1OrdersCancelPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get open orders
     *
     * Get last execution reports for open orders across all or single exchange.
     */
    @isTest
    private static void v1OrdersGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => KRAKEN
        };

        OASClient client;
        OASOrdersApi api;
        List<OASOrderExecutionReport> response;
        List<OASOrderExecutionReport> expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(List.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = List.getExample();
        response = (List<OASOrderExecutionReport>) api.v1OrdersGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Send new order
     *
     * This request creating new order for the specific exchange.
     */
    @isTest
    private static void v1OrdersPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOrderNewSingleRequest' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASOrderExecutionReport response;
        OASOrderExecutionReport expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASOrderExecutionReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderExecutionReport.getExample();
        response = (OASOrderExecutionReport) api.v1OrdersPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get order execution report
     *
     * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
     */
    @isTest
    private static void v1OrdersStatusClientOrderIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'clientOrderId' => 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b
        };

        OASClient client;
        OASOrdersApi api;
        OASOrderExecutionReport response;
        OASOrderExecutionReport expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASOrderExecutionReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderExecutionReport.getExample();
        response = (OASOrderExecutionReport) api.v1OrdersStatusClientOrderIdGet(params);
        System.assertEquals(expectedResponse, response);
    }
}