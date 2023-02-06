@isTest
private class OASUniswapV3ApiTest {
    /**
     * Bundles (current)
     *
     * Gets bundles.
     */
    @isTest
    private static void uniswapV3BundlesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3BundleDTO> response;
        List<OASUniswapV3BundleDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BundleDTO>{OASUniswapV3BundleDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleDTO>{OASUniswapV3BundleDTO.getExample()};
        response = (List<OASUniswapV3BundleDTO>) api.uniswapV3BundlesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Burns (current)
     *
     * Gets burns.
     */
    @isTest
    private static void uniswapV3BurnsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3BurnDTO> response;
        List<OASUniswapV3BurnDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BurnDTO>{OASUniswapV3BurnDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnDTO>{OASUniswapV3BurnDTO.getExample()};
        response = (List<OASUniswapV3BurnDTO>) api.uniswapV3BurnsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Factories (current)
     *
     * Gets factories.
     */
    @isTest
    private static void uniswapV3FactoriesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3FactoryDTO> response;
        List<OASUniswapV3FactoryDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3FactoryDTO>{OASUniswapV3FactoryDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryDTO>{OASUniswapV3FactoryDTO.getExample()};
        response = (List<OASUniswapV3FactoryDTO>) api.uniswapV3FactoriesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Bundles (historical)
     *
     * Gets bundles.
     */
    @isTest
    private static void uniswapV3GetBundlesHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3BundleDTO> response;
        List<OASUniswapV3BundleDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BundleDTO>{OASUniswapV3BundleDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleDTO>{OASUniswapV3BundleDTO.getExample()};
        response = (List<OASUniswapV3BundleDTO>) api.uniswapV3GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Burns (historical)
     *
     * Gets burns.
     */
    @isTest
    private static void uniswapV3GetBurnsHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3BurnDTO> response;
        List<OASUniswapV3BurnDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BurnDTO>{OASUniswapV3BurnDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnDTO>{OASUniswapV3BurnDTO.getExample()};
        response = (List<OASUniswapV3BurnDTO>) api.uniswapV3GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Factories (historical)
     *
     * Gets factories.
     */
    @isTest
    private static void uniswapV3GetFactoriesHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3FactoryDTO> response;
        List<OASUniswapV3FactoryDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3FactoryDTO>{OASUniswapV3FactoryDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryDTO>{OASUniswapV3FactoryDTO.getExample()};
        response = (List<OASUniswapV3FactoryDTO>) api.uniswapV3GetFactoriesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Mints (historical)
     *
     * Gets mints.
     */
    @isTest
    private static void uniswapV3GetMintsHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3MintDTO> response;
        List<OASUniswapV3MintDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3MintDTO>{OASUniswapV3MintDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintDTO>{OASUniswapV3MintDTO.getExample()};
        response = (List<OASUniswapV3MintDTO>) api.uniswapV3GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolDayData (historical)
     *
     * Gets poolDayData.
     */
    @isTest
    private static void uniswapV3GetPoolDayDataHistoricalTest() {
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
            'pool' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolDayDataDTO> response;
        List<OASUniswapV3PoolDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataDTO>{OASUniswapV3PoolDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataDTO>{OASUniswapV3PoolDayDataDTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataDTO>) api.uniswapV3GetPoolDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolHourData (historical)
     *
     * Gets poolHourData.
     */
    @isTest
    private static void uniswapV3GetPoolHourDataHistoricalTest() {
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
            'pool' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolHourDataDTO> response;
        List<OASUniswapV3PoolHourDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataDTO>{OASUniswapV3PoolHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataDTO>{OASUniswapV3PoolHourDataDTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataDTO>) api.uniswapV3GetPoolHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (historical)
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV3GetPoolsHistoricalTest() {
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
            'token0' => 'null',
            'token1' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolDTO> response;
        List<OASUniswapV3PoolDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDTO>{OASUniswapV3PoolDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDTO>{OASUniswapV3PoolDTO.getExample()};
        response = (List<OASUniswapV3PoolDTO>) api.uniswapV3GetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionSnapshots (historical)
     *
     * Gets positionSnapshots.
     */
    @isTest
    private static void uniswapV3GetPositionSnapshotsHistoricalTest() {
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
            'pool' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PositionSnapshotDTO> response;
        List<OASUniswapV3PositionSnapshotDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotDTO>{OASUniswapV3PositionSnapshotDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotDTO>{OASUniswapV3PositionSnapshotDTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotDTO>) api.uniswapV3GetPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Positions (historical)
     *
     * Gets positions.
     */
    @isTest
    private static void uniswapV3GetPositionsHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PositionDTO> response;
        List<OASUniswapV3PositionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionDTO>{OASUniswapV3PositionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionDTO>{OASUniswapV3PositionDTO.getExample()};
        response = (List<OASUniswapV3PositionDTO>) api.uniswapV3GetPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (historical)
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV3GetSwapsHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3SwapDTO> response;
        List<OASUniswapV3SwapDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3SwapDTO>{OASUniswapV3SwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapDTO>{OASUniswapV3SwapDTO.getExample()};
        response = (List<OASUniswapV3SwapDTO>) api.uniswapV3GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TickDayData (historical)
     *
     * Gets tickDayData.
     */
    @isTest
    private static void uniswapV3GetTickDayDataHistoricalTest() {
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
            'pool' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TickDayDataDTO> response;
        List<OASUniswapV3TickDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDayDataDTO>{OASUniswapV3TickDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataDTO>{OASUniswapV3TickDayDataDTO.getExample()};
        response = (List<OASUniswapV3TickDayDataDTO>) api.uniswapV3GetTickDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Ticks (historical)
     *
     * Gets ticks.
     */
    @isTest
    private static void uniswapV3GetTicksHistoricalTest() {
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
            'pool' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TickDTO> response;
        List<OASUniswapV3TickDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDTO>{OASUniswapV3TickDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDTO>{OASUniswapV3TickDTO.getExample()};
        response = (List<OASUniswapV3TickDTO>) api.uniswapV3GetTicksHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenHourData (historical)
     *
     * Gets tokenHourData.
     */
    @isTest
    private static void uniswapV3GetTokenHourDataHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TokenHourDataDTO> response;
        List<OASUniswapV3TokenHourDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataDTO>{OASUniswapV3TokenHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataDTO>{OASUniswapV3TokenHourDataDTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataDTO>) api.uniswapV3GetTokenHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV3DayData (historical)
     *
     * Gets tokenV3DayData.
     */
    @isTest
    private static void uniswapV3GetTokenV3DayDataHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TokenV3DayDataDTO> response;
        List<OASUniswapV3TokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (historical)
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV3GetTokensHistoricalTest() {
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
            'symbol' => 'null',
            'name' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenDTO> response;
        List<OASUniswapV3TokenDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenDTO>{OASUniswapV3TokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenDTO>{OASUniswapV3TokenDTO.getExample()};
        response = (List<OASUniswapV3TokenDTO>) api.uniswapV3GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Transactions (historical)
     *
     * Gets transactions.
     */
    @isTest
    private static void uniswapV3GetTransactionsHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TransactionDTO> response;
        List<OASUniswapV3TransactionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TransactionDTO>{OASUniswapV3TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionDTO>{OASUniswapV3TransactionDTO.getExample()};
        response = (List<OASUniswapV3TransactionDTO>) api.uniswapV3GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayData (historical)
     *
     * Gets uniswapDayData.
     */
    @isTest
    private static void uniswapV3GetUniswapDayDataHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3UniswapDayDataDTO> response;
        List<OASUniswapV3UniswapDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataDTO>{OASUniswapV3UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataDTO>{OASUniswapV3UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataDTO>) api.uniswapV3GetUniswapDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Mints (current)
     *
     * Gets mints.
     */
    @isTest
    private static void uniswapV3MintsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3MintDTO> response;
        List<OASUniswapV3MintDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3MintDTO>{OASUniswapV3MintDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintDTO>{OASUniswapV3MintDTO.getExample()};
        response = (List<OASUniswapV3MintDTO>) api.uniswapV3MintsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolDayData (current)
     *
     * Gets poolDayData.
     */
    @isTest
    private static void uniswapV3PoolDayDataCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolDayDataDTO> response;
        List<OASUniswapV3PoolDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataDTO>{OASUniswapV3PoolDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataDTO>{OASUniswapV3PoolDayDataDTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataDTO>) api.uniswapV3PoolDayDataCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolHourData (current)
     *
     * Gets poolHourData.
     */
    @isTest
    private static void uniswapV3PoolHourDataCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolHourDataDTO> response;
        List<OASUniswapV3PoolHourDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataDTO>{OASUniswapV3PoolHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataDTO>{OASUniswapV3PoolHourDataDTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataDTO>) api.uniswapV3PoolHourDataCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (current)
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV3PoolsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolDTO> response;
        List<OASUniswapV3PoolDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDTO>{OASUniswapV3PoolDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDTO>{OASUniswapV3PoolDTO.getExample()};
        response = (List<OASUniswapV3PoolDTO>) api.uniswapV3PoolsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionSnapshots (current)
     *
     * Gets positionSnapshots.
     */
    @isTest
    private static void uniswapV3PositionSnapshotsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PositionSnapshotDTO> response;
        List<OASUniswapV3PositionSnapshotDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotDTO>{OASUniswapV3PositionSnapshotDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotDTO>{OASUniswapV3PositionSnapshotDTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotDTO>) api.uniswapV3PositionSnapshotsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Positions (current)
     *
     * Gets positions.
     */
    @isTest
    private static void uniswapV3PositionsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PositionDTO> response;
        List<OASUniswapV3PositionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionDTO>{OASUniswapV3PositionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionDTO>{OASUniswapV3PositionDTO.getExample()};
        response = (List<OASUniswapV3PositionDTO>) api.uniswapV3PositionsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (current)
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV3SwapsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'pool' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3SwapDTO> response;
        List<OASUniswapV3SwapDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3SwapDTO>{OASUniswapV3SwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapDTO>{OASUniswapV3SwapDTO.getExample()};
        response = (List<OASUniswapV3SwapDTO>) api.uniswapV3SwapsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TickDayData (current)
     *
     * Gets tickDayData.
     */
    @isTest
    private static void uniswapV3TickDayDataCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TickDayDataDTO> response;
        List<OASUniswapV3TickDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDayDataDTO>{OASUniswapV3TickDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataDTO>{OASUniswapV3TickDayDataDTO.getExample()};
        response = (List<OASUniswapV3TickDayDataDTO>) api.uniswapV3TickDayDataCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Ticks (current)
     *
     * Gets ticks.
     */
    @isTest
    private static void uniswapV3TicksCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TickDTO> response;
        List<OASUniswapV3TickDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDTO>{OASUniswapV3TickDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDTO>{OASUniswapV3TickDTO.getExample()};
        response = (List<OASUniswapV3TickDTO>) api.uniswapV3TicksCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenHourData (current)
     *
     * Gets tokenHourData.
     */
    @isTest
    private static void uniswapV3TokenHourDataCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenHourDataDTO> response;
        List<OASUniswapV3TokenHourDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataDTO>{OASUniswapV3TokenHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataDTO>{OASUniswapV3TokenHourDataDTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataDTO>) api.uniswapV3TokenHourDataCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV3DayData (current)
     *
     * Gets tokenV3DayData.
     */
    @isTest
    private static void uniswapV3TokenV3DayDataCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenV3DayDataDTO> response;
        List<OASUniswapV3TokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3TokenV3DayDataCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current)
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV3TokensCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenDTO> response;
        List<OASUniswapV3TokenDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenDTO>{OASUniswapV3TokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenDTO>{OASUniswapV3TokenDTO.getExample()};
        response = (List<OASUniswapV3TokenDTO>) api.uniswapV3TokensCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Transactions (current)
     *
     * Gets transactions.
     */
    @isTest
    private static void uniswapV3TransactionsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TransactionDTO> response;
        List<OASUniswapV3TransactionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TransactionDTO>{OASUniswapV3TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionDTO>{OASUniswapV3TransactionDTO.getExample()};
        response = (List<OASUniswapV3TransactionDTO>) api.uniswapV3TransactionsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayData (current)
     *
     * Gets uniswapDayData.
     */
    @isTest
    private static void uniswapV3UniswapDayDataCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3UniswapDayDataDTO> response;
        List<OASUniswapV3UniswapDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataDTO>{OASUniswapV3UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataDTO>{OASUniswapV3UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataDTO>) api.uniswapV3UniswapDayDataCurrent();
        System.assertEquals(expectedResponse, response);
    }
}