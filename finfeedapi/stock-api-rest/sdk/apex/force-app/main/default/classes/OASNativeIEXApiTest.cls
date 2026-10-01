@isTest
private class OASNativeIEXApiTest {
    /**
     * Get Admin Messages
     *
     * Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
     */
    @isTest
    private static void v1NativeIexAdminMessagesSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeStart' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASModelsAdminMessageModel> response;
        List<OASModelsAdminMessageModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASModelsAdminMessageModel>{OASModelsAdminMessageModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASModelsAdminMessageModel>{OASModelsAdminMessageModel.getExample()};
        response = (List<OASModelsAdminMessageModel>) api.v1NativeIexAdminMessagesSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASModelsAdminMessageModel>{OASModelsAdminMessageModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASModelsAdminMessageModel>{OASModelsAdminMessageModel.getExample()};
        response = (List<OASModelsAdminMessageModel>) api.v1NativeIexAdminMessagesSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get System Events
     *
     * Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
     */
    @isTest
    private static void v1NativeIexAdminSystemEventGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeStart' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASIEXSystemEventSystemEventModel> response;
        List<OASIEXSystemEventSystemEventModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIEXSystemEventSystemEventModel>{OASIEXSystemEventSystemEventModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXSystemEventSystemEventModel>{OASIEXSystemEventSystemEventModel.getExample()};
        response = (List<OASIEXSystemEventSystemEventModel>) api.v1NativeIexAdminSystemEventGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASIEXSystemEventSystemEventModel>{OASIEXSystemEventSystemEventModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXSystemEventSystemEventModel>{OASIEXSystemEventSystemEventModel.getExample()};
        response = (List<OASIEXSystemEventSystemEventModel>) api.v1NativeIexAdminSystemEventGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Level-1 Quotes
     *
     * Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
     */
    @isTest
    private static void v1NativeIexLevel1QuoteSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeStart' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASIEXQuoteUpdateQuoteUpdateModel> response;
        List<OASIEXQuoteUpdateQuoteUpdateModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIEXQuoteUpdateQuoteUpdateModel>{OASIEXQuoteUpdateQuoteUpdateModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXQuoteUpdateQuoteUpdateModel>{OASIEXQuoteUpdateQuoteUpdateModel.getExample()};
        response = (List<OASIEXQuoteUpdateQuoteUpdateModel>) api.v1NativeIexLevel1QuoteSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASIEXQuoteUpdateQuoteUpdateModel>{OASIEXQuoteUpdateQuoteUpdateModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXQuoteUpdateQuoteUpdateModel>{OASIEXQuoteUpdateQuoteUpdateModel.getExample()};
        response = (List<OASIEXQuoteUpdateQuoteUpdateModel>) api.v1NativeIexLevel1QuoteSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Level-2 Price Level Book
     *
     * Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
     */
    @isTest
    private static void v1NativeIexLevel2PriceLevelUpdateSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeStart' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASIEXPriceLevelUpdatePriceLevelUpda> response;
        List<OASIEXPriceLevelUpdatePriceLevelUpda> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIEXPriceLevelUpdatePriceLevelUpda>{OASIEXPriceLevelUpdatePriceLevelUpda.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXPriceLevelUpdatePriceLevelUpda>{OASIEXPriceLevelUpdatePriceLevelUpda.getExample()};
        response = (List<OASIEXPriceLevelUpdatePriceLevelUpda>) api.v1NativeIexLevel2PriceLevelUpdateSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASIEXPriceLevelUpdatePriceLevelUpda>{OASIEXPriceLevelUpdatePriceLevelUpda.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXPriceLevelUpdatePriceLevelUpda>{OASIEXPriceLevelUpdatePriceLevelUpda.getExample()};
        response = (List<OASIEXPriceLevelUpdatePriceLevelUpda>) api.v1NativeIexLevel2PriceLevelUpdateSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Level-3 Order Book
     *
     * Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
     */
    @isTest
    private static void v1NativeIexLevel3OrderBookSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeStart' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASModelsOrderBookModel> response;
        List<OASModelsOrderBookModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASModelsOrderBookModel>{OASModelsOrderBookModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASModelsOrderBookModel>{OASModelsOrderBookModel.getExample()};
        response = (List<OASModelsOrderBookModel>) api.v1NativeIexLevel3OrderBookSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASModelsOrderBookModel>{OASModelsOrderBookModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASModelsOrderBookModel>{OASModelsOrderBookModel.getExample()};
        response = (List<OASModelsOrderBookModel>) api.v1NativeIexLevel3OrderBookSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Trades
     *
     * Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.
     */
    @isTest
    private static void v1NativeIexTradeSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeStart' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASIEXTradeTradeModel> response;
        List<OASIEXTradeTradeModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIEXTradeTradeModel>{OASIEXTradeTradeModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXTradeTradeModel>{OASIEXTradeTradeModel.getExample()};
        response = (List<OASIEXTradeTradeModel>) api.v1NativeIexTradeSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASIEXTradeTradeModel>{OASIEXTradeTradeModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIEXTradeTradeModel>{OASIEXTradeTradeModel.getExample()};
        response = (List<OASIEXTradeTradeModel>) api.v1NativeIexTradeSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }
}