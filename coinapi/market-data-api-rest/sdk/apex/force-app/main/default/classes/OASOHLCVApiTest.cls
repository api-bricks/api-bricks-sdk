@isTest
private class OASOHLCVApiTest {
    /**
     * Historical data by exchange
     *
     * Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg &#x60;BITSTAMP&#x60;\n            \n:::info\nThe OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.\nThe difference between &#x60;time_end&#x60; and &#x60;time_start&#x60; cannot be higher than 1 day.\nThe &#x60;period_id&#x60; cannot be higher than &#x60;1DAY&#x60;.\n:::
     */
    @isTest
    private static void v1OhlcvExchangesExchangeIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null'
        };

        OASClient client;
        OASOHLCVApi api;
        List<OASOhlcvExchangeTimeseriesItem> response;
        List<OASOhlcvExchangeTimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOHLCVApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASOhlcvExchangeTimeseriesItem>{OASOhlcvExchangeTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOhlcvExchangeTimeseriesItem>{OASOhlcvExchangeTimeseriesItem.getExample()};
        response = (List<OASOhlcvExchangeTimeseriesItem>) api.v1OhlcvExchangesExchangeIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOHLCVApi(client);

        js = JSON.serialize(new List<OASOhlcvExchangeTimeseriesItem>{OASOhlcvExchangeTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOhlcvExchangeTimeseriesItem>{OASOhlcvExchangeTimeseriesItem.getExample()};
        response = (List<OASOhlcvExchangeTimeseriesItem>) api.v1OhlcvExchangesExchangeIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all periods
     *
     * Get full list of supported time periods available for requesting OHLCV timeseries data.\n            \n### Available periods\n            \nTime unit | Period identifiers\n--------- | -----------\nSecond | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC\nMinute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN\nHour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS\nDay | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY\nMonth | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH\nYear | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS\n            \n:::tip\nYou can assume that we will not remove any periods from this response, however, we may add new ones.\n:::
     */
    @isTest
    private static void v1OhlcvPeriodsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASOHLCVApi api;
        List<OASV1TimeseriesPeriod> response;
        List<OASV1TimeseriesPeriod> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOHLCVApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()};
        response = (List<OASV1TimeseriesPeriod>) api.v1OhlcvPeriodsGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOHLCVApi(client);

        js = JSON.serialize(new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()};
        response = (List<OASV1TimeseriesPeriod>) api.v1OhlcvPeriodsGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical data
     *
     * Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data\nIf the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.\n            \n:::info\nThe OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.\n:::
     */
    @isTest
    private static void v1OhlcvSymbolIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOHLCVApi api;
        List<OASV1TimeseriesItem> response;
        List<OASV1TimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOHLCVApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()};
        response = (List<OASV1TimeseriesItem>) api.v1OhlcvSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOHLCVApi(client);

        js = JSON.serialize(new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()};
        response = (List<OASV1TimeseriesItem>) api.v1OhlcvSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest data
     *
     * Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data\n            \n:::info\nOHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters. \nThe OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.\n:::
     */
    @isTest
    private static void v1OhlcvSymbolIdLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOHLCVApi api;
        List<OASV1TimeseriesItem> response;
        List<OASV1TimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOHLCVApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()};
        response = (List<OASV1TimeseriesItem>) api.v1OhlcvSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOHLCVApi(client);

        js = JSON.serialize(new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesItem>{OASV1TimeseriesItem.getExample()};
        response = (List<OASV1TimeseriesItem>) api.v1OhlcvSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }
}