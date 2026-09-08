@isTest
private class OASOhlcvApiTest {
    /**
     * Historical data by exchange
     *
     * Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.\nTime range is limited to 24 hours. Use &#x60;limit&#x60; to cap the number of symbol rows returned.
     */
    @isTest
    private static void v1OhlcvExchangeExchangeIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVTimeSeriesExchangeTimeseries> response;
        List<OASOHLCVTimeSeriesExchangeTimeseries> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOhlcvApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASOHLCVTimeSeriesExchangeTimeseries>{OASOHLCVTimeSeriesExchangeTimeseries.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesExchangeTimeseries>{OASOHLCVTimeSeriesExchangeTimeseries.getExample()};
        response = (List<OASOHLCVTimeSeriesExchangeTimeseries>) api.v1OhlcvExchangeExchangeIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOhlcvApi(client);

        js = JSON.serialize(new List<OASOHLCVTimeSeriesExchangeTimeseries>{OASOHLCVTimeSeriesExchangeTimeseries.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesExchangeTimeseries>{OASOHLCVTimeSeriesExchangeTimeseries.getExample()};
        response = (List<OASOHLCVTimeSeriesExchangeTimeseries>) api.v1OhlcvExchangeExchangeIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical data
     *
     * Get OHLCV timeseries data returned in time ascending order.\nIf the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
     */
    @isTest
    private static void v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'symbolId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVTimeSeriesTimeseriesItem> response;
        List<OASOHLCVTimeSeriesTimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOhlcvApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()};
        response = (List<OASOHLCVTimeSeriesTimeseriesItem>) api.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOhlcvApi(client);

        js = JSON.serialize(new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()};
        response = (List<OASOHLCVTimeSeriesTimeseriesItem>) api.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest data
     *
     * Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data\n            \n:::info\nOHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters. \nThe OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.\n:::
     */
    @isTest
    private static void v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'symbolId' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVTimeSeriesTimeseriesItem> response;
        List<OASOHLCVTimeSeriesTimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOhlcvApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()};
        response = (List<OASOHLCVTimeSeriesTimeseriesItem>) api.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOhlcvApi(client);

        js = JSON.serialize(new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesTimeseriesItem>{OASOHLCVTimeSeriesTimeseriesItem.getExample()};
        response = (List<OASOHLCVTimeSeriesTimeseriesItem>) api.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(params);
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
        OASOhlcvApi api;
        List<OASOHLCVTimeSeriesTimeseriesPeriod> response;
        List<OASOHLCVTimeSeriesTimeseriesPeriod> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOhlcvApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASOHLCVTimeSeriesTimeseriesPeriod>{OASOHLCVTimeSeriesTimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesTimeseriesPeriod>{OASOHLCVTimeSeriesTimeseriesPeriod.getExample()};
        response = (List<OASOHLCVTimeSeriesTimeseriesPeriod>) api.v1OhlcvPeriodsGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOhlcvApi(client);

        js = JSON.serialize(new List<OASOHLCVTimeSeriesTimeseriesPeriod>{OASOHLCVTimeSeriesTimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeSeriesTimeseriesPeriod>{OASOHLCVTimeSeriesTimeseriesPeriod.getExample()};
        response = (List<OASOHLCVTimeSeriesTimeseriesPeriod>) api.v1OhlcvPeriodsGet();
        System.assertEquals(expectedResponse, response);
    }
}