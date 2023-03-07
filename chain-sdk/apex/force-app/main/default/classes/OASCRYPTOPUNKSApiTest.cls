@isTest
private class OASCRYPTOPUNKSApiTest {
    /**
     * Bids (current)
     *
     * Gets bids.
     */
    @isTest
    private static void cRYPTOPUNKSBidsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSBidDTO> response;
        List<OASCRYPTOPUNKSBidDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSBidDTO>{OASCRYPTOPUNKSBidDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSBidDTO>{OASCRYPTOPUNKSBidDTO.getExample()};
        response = (List<OASCRYPTOPUNKSBidDTO>) api.cRYPTOPUNKSBidsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * CollectionDailySnapshots (current)
     *
     * Gets collectionDailySnapshots.
     */
    @isTest
    private static void cRYPTOPUNKSCollectionDailySnapshotsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSCollectionDailySnapsho> response;
        List<OASCRYPTOPUNKSCollectionDailySnapsho> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSCollectionDailySnapsho>{OASCRYPTOPUNKSCollectionDailySnapsho.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSCollectionDailySnapsho>{OASCRYPTOPUNKSCollectionDailySnapsho.getExample()};
        response = (List<OASCRYPTOPUNKSCollectionDailySnapsho>) api.cRYPTOPUNKSCollectionDailySnapshotsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Collections (current)
     *
     * Gets collections.
     */
    @isTest
    private static void cRYPTOPUNKSCollectionsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSCollectionDTO> response;
        List<OASCRYPTOPUNKSCollectionDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSCollectionDTO>{OASCRYPTOPUNKSCollectionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSCollectionDTO>{OASCRYPTOPUNKSCollectionDTO.getExample()};
        response = (List<OASCRYPTOPUNKSCollectionDTO>) api.cRYPTOPUNKSCollectionsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * DataSources (current)
     *
     * Gets dataSources.
     */
    @isTest
    private static void cRYPTOPUNKSDataSourcesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSDataSourcesDTO> response;
        List<OASCRYPTOPUNKSDataSourcesDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSDataSourcesDTO>{OASCRYPTOPUNKSDataSourcesDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSDataSourcesDTO>{OASCRYPTOPUNKSDataSourcesDTO.getExample()};
        response = (List<OASCRYPTOPUNKSDataSourcesDTO>) api.cRYPTOPUNKSDataSourcesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Bids (historical)
     *
     * Gets bids.
     */
    @isTest
    private static void cRYPTOPUNKSGetBidsHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSBidDTO> response;
        List<OASCRYPTOPUNKSBidDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSBidDTO>{OASCRYPTOPUNKSBidDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSBidDTO>{OASCRYPTOPUNKSBidDTO.getExample()};
        response = (List<OASCRYPTOPUNKSBidDTO>) api.cRYPTOPUNKSGetBidsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * CollectionDailySnapshots (historical)
     *
     * Gets collectionDailySnapshots.
     */
    @isTest
    private static void cRYPTOPUNKSGetCollectionDailySnapshotsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSCollectionDailySnapsho> response;
        List<OASCRYPTOPUNKSCollectionDailySnapsho> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSCollectionDailySnapsho>{OASCRYPTOPUNKSCollectionDailySnapsho.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSCollectionDailySnapsho>{OASCRYPTOPUNKSCollectionDailySnapsho.getExample()};
        response = (List<OASCRYPTOPUNKSCollectionDailySnapsho>) api.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Collections (historical)
     *
     * Gets collections.
     */
    @isTest
    private static void cRYPTOPUNKSGetCollectionsHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSCollectionDTO> response;
        List<OASCRYPTOPUNKSCollectionDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSCollectionDTO>{OASCRYPTOPUNKSCollectionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSCollectionDTO>{OASCRYPTOPUNKSCollectionDTO.getExample()};
        response = (List<OASCRYPTOPUNKSCollectionDTO>) api.cRYPTOPUNKSGetCollectionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * DataSources (historical)
     *
     * Gets dataSources.
     */
    @isTest
    private static void cRYPTOPUNKSGetDataSourcesHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSDataSourcesDTO> response;
        List<OASCRYPTOPUNKSDataSourcesDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSDataSourcesDTO>{OASCRYPTOPUNKSDataSourcesDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSDataSourcesDTO>{OASCRYPTOPUNKSDataSourcesDTO.getExample()};
        response = (List<OASCRYPTOPUNKSDataSourcesDTO>) api.cRYPTOPUNKSGetDataSourcesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Items (historical)
     *
     * Gets items.
     */
    @isTest
    private static void cRYPTOPUNKSGetItemsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSItemDTO> response;
        List<OASCRYPTOPUNKSItemDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSItemDTO>{OASCRYPTOPUNKSItemDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSItemDTO>{OASCRYPTOPUNKSItemDTO.getExample()};
        response = (List<OASCRYPTOPUNKSItemDTO>) api.cRYPTOPUNKSGetItemsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MarketPlaces (historical)
     *
     * Gets marketPlaces.
     */
    @isTest
    private static void cRYPTOPUNKSGetMarketPlacesHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSMarketPlaceDTO> response;
        List<OASCRYPTOPUNKSMarketPlaceDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSMarketPlaceDTO>{OASCRYPTOPUNKSMarketPlaceDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSMarketPlaceDTO>{OASCRYPTOPUNKSMarketPlaceDTO.getExample()};
        response = (List<OASCRYPTOPUNKSMarketPlaceDTO>) api.cRYPTOPUNKSGetMarketPlacesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MarketplaceDailySnapshots (historical)
     *
     * Gets marketplaceDailySnapshots.
     */
    @isTest
    private static void cRYPTOPUNKSGetMarketplaceDailySnapshotsHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSMarketplaceDailySnapsh> response;
        List<OASCRYPTOPUNKSMarketplaceDailySnapsh> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSMarketplaceDailySnapsh>{OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSMarketplaceDailySnapsh>{OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample()};
        response = (List<OASCRYPTOPUNKSMarketplaceDailySnapsh>) api.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (historical)
     *
     * Gets trades.
     */
    @isTest
    private static void cRYPTOPUNKSGetTradesHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSTradeDTO> response;
        List<OASCRYPTOPUNKSTradeDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSTradeDTO>{OASCRYPTOPUNKSTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSTradeDTO>{OASCRYPTOPUNKSTradeDTO.getExample()};
        response = (List<OASCRYPTOPUNKSTradeDTO>) api.cRYPTOPUNKSGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (historical)
     *
     * Gets users.
     */
    @isTest
    private static void cRYPTOPUNKSGetUsersHistoricalTest() {
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
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSUserDTO> response;
        List<OASCRYPTOPUNKSUserDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSUserDTO>{OASCRYPTOPUNKSUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSUserDTO>{OASCRYPTOPUNKSUserDTO.getExample()};
        response = (List<OASCRYPTOPUNKSUserDTO>) api.cRYPTOPUNKSGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Items (current)
     *
     * Gets items.
     */
    @isTest
    private static void cRYPTOPUNKSItemsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSItemDTO> response;
        List<OASCRYPTOPUNKSItemDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSItemDTO>{OASCRYPTOPUNKSItemDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSItemDTO>{OASCRYPTOPUNKSItemDTO.getExample()};
        response = (List<OASCRYPTOPUNKSItemDTO>) api.cRYPTOPUNKSItemsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MarketPlaces (current)
     *
     * Gets marketPlaces.
     */
    @isTest
    private static void cRYPTOPUNKSMarketPlacesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSMarketPlaceDTO> response;
        List<OASCRYPTOPUNKSMarketPlaceDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSMarketPlaceDTO>{OASCRYPTOPUNKSMarketPlaceDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSMarketPlaceDTO>{OASCRYPTOPUNKSMarketPlaceDTO.getExample()};
        response = (List<OASCRYPTOPUNKSMarketPlaceDTO>) api.cRYPTOPUNKSMarketPlacesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MarketplaceDailySnapshots (current)
     *
     * Gets marketplaceDailySnapshots.
     */
    @isTest
    private static void cRYPTOPUNKSMarketplaceDailySnapshotsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSMarketplaceDailySnapsh> response;
        List<OASCRYPTOPUNKSMarketplaceDailySnapsh> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSMarketplaceDailySnapsh>{OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSMarketplaceDailySnapsh>{OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample()};
        response = (List<OASCRYPTOPUNKSMarketplaceDailySnapsh>) api.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (current)
     *
     * Gets trades.
     */
    @isTest
    private static void cRYPTOPUNKSTradesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSTradeDTO> response;
        List<OASCRYPTOPUNKSTradeDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSTradeDTO>{OASCRYPTOPUNKSTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSTradeDTO>{OASCRYPTOPUNKSTradeDTO.getExample()};
        response = (List<OASCRYPTOPUNKSTradeDTO>) api.cRYPTOPUNKSTradesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (current)
     *
     * Gets users.
     */
    @isTest
    private static void cRYPTOPUNKSUsersCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCRYPTOPUNKSApi api;
        List<OASCRYPTOPUNKSUserDTO> response;
        List<OASCRYPTOPUNKSUserDTO> expectedResponse;
        String js = '';

        api = new OASCRYPTOPUNKSApi(new OASClient());

        js = JSON.serialize(new List<OASCRYPTOPUNKSUserDTO>{OASCRYPTOPUNKSUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCRYPTOPUNKSUserDTO>{OASCRYPTOPUNKSUserDTO.getExample()};
        response = (List<OASCRYPTOPUNKSUserDTO>) api.cRYPTOPUNKSUsersCurrent();
        System.assertEquals(expectedResponse, response);
    }
}