@isTest
private class OASCowApiTest {
    /**
     * Orders (historical)
     *
     * Gets orders.
     */
    @isTest
    private static void cowGetOrdersHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowOrderDTO> response;
        List<OASCowOrderDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Settlements (historical)
     *
     * Gets settlements.
     */
    @isTest
    private static void cowGetSettlementsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowSettlementDTO> response;
        List<OASCowSettlementDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (historical)
     *
     * Gets tokens.
     */
    @isTest
    private static void cowGetTokensHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'address' => 'null',
            'name' => 'null',
            'symbol' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowTokenDTO> response;
        List<OASCowTokenDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (historical)
     *
     * Gets trades.
     */
    @isTest
    private static void cowGetTradesHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'sellToken' => 'null',
            'buyToken' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowTradeDTO> response;
        List<OASCowTradeDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (historical)
     *
     * Gets users.
     */
    @isTest
    private static void cowGetUsersHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'address' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowUserDTO> response;
        List<OASCowUserDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Orders (current)
     *
     * Gets orders.
     */
    @isTest
    private static void cowOrdersCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCowApi api;
        List<OASCowOrderDTO> response;
        List<OASCowOrderDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowOrdersCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Settlements (current)
     *
     * Gets settlements.
     */
    @isTest
    private static void cowSettlementsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCowApi api;
        List<OASCowSettlementDTO> response;
        List<OASCowSettlementDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowSettlementsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current)
     *
     * Gets tokens.
     */
    @isTest
    private static void cowTokensCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCowApi api;
        List<OASCowTokenDTO> response;
        List<OASCowTokenDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowTokensCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (current)
     *
     * Gets trades.
     */
    @isTest
    private static void cowTradesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCowApi api;
        List<OASCowTradeDTO> response;
        List<OASCowTradeDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowTradesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (current)
     *
     * Gets users.
     */
    @isTest
    private static void cowUsersCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCowApi api;
        List<OASCowUserDTO> response;
        List<OASCowUserDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowUsersCurrent();
        System.assertEquals(expectedResponse, response);
    }
}