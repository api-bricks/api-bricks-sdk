@isTest
private class OASBalancesApiTest {
    /**
     * Get balances
     *
     * Get current currency balance from all or single exchange.
     */
    @isTest
    private static void v1BalancesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => KRAKEN
        };

        OASClient client;
        OASBalancesApi api;
        List<OASBalance> response;
        List<OASBalance> expectedResponse;
        String js = '';

        api = new OASBalancesApi(new OASClient());

        js = JSON.serialize(List.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = List.getExample();
        response = (List<OASBalance>) api.v1BalancesGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(List.getExample());
        res.setHeader('Content-Type', 'appliction/json');
        res.setBody(js);
        expectedResponse = List.getExample();
        response = (List<OASBalance>) api.v1BalancesGet(params);
        System.assertEquals(expectedResponse, response);
    }
}