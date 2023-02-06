@isTest
private class OASMetadataApiTest {
    /**
     * List all chains.
     *
     * 
     */
    @isTest
    private static void metadataChainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMetadataApi api;
        String js = '';

        api = new OASMetadataApi(new OASClient());

        api.metadataChainsGet();
    }

    /**
     * Gets dapp by name.
     *
     * 
     */
    @isTest
    private static void metadataDappsDappNameGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'dappName' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        String js = '';

        api = new OASMetadataApi(new OASClient());

        api.metadataDappsDappNameGet(params);
    }

    /**
     * List all decentralized applications.
     *
     * 
     */
    @isTest
    private static void metadataDappsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMetadataApi api;
        String js = '';

        api = new OASMetadataApi(new OASClient());

        api.metadataDappsGet();
    }
}