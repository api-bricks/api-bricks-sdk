@isTest
private class OASCRYPTOPUNKSMarketPlaceDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO1 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO2 = crYPTOPUNKSMarketPlaceDTO1;
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO3 = new OASCRYPTOPUNKSMarketPlaceDTO();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO4 = crYPTOPUNKSMarketPlaceDTO3;

        System.assert(crYPTOPUNKSMarketPlaceDTO1.equals(crYPTOPUNKSMarketPlaceDTO2));
        System.assert(crYPTOPUNKSMarketPlaceDTO2.equals(crYPTOPUNKSMarketPlaceDTO1));
        System.assert(crYPTOPUNKSMarketPlaceDTO1.equals(crYPTOPUNKSMarketPlaceDTO1));
        System.assert(crYPTOPUNKSMarketPlaceDTO3.equals(crYPTOPUNKSMarketPlaceDTO4));
        System.assert(crYPTOPUNKSMarketPlaceDTO4.equals(crYPTOPUNKSMarketPlaceDTO3));
        System.assert(crYPTOPUNKSMarketPlaceDTO3.equals(crYPTOPUNKSMarketPlaceDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO1 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO2 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO3 = new OASCRYPTOPUNKSMarketPlaceDTO();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO4 = new OASCRYPTOPUNKSMarketPlaceDTO();

        System.assert(crYPTOPUNKSMarketPlaceDTO1.equals(crYPTOPUNKSMarketPlaceDTO2));
        System.assert(crYPTOPUNKSMarketPlaceDTO2.equals(crYPTOPUNKSMarketPlaceDTO1));
        System.assert(crYPTOPUNKSMarketPlaceDTO3.equals(crYPTOPUNKSMarketPlaceDTO4));
        System.assert(crYPTOPUNKSMarketPlaceDTO4.equals(crYPTOPUNKSMarketPlaceDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO1 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO2 = new OASCRYPTOPUNKSMarketPlaceDTO();

        System.assertEquals(false, crYPTOPUNKSMarketPlaceDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSMarketPlaceDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO1 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO2 = new OASCRYPTOPUNKSMarketPlaceDTO();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO3;

        System.assertEquals(false, crYPTOPUNKSMarketPlaceDTO1.equals(crYPTOPUNKSMarketPlaceDTO3));
        System.assertEquals(false, crYPTOPUNKSMarketPlaceDTO2.equals(crYPTOPUNKSMarketPlaceDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO1 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO2 = new OASCRYPTOPUNKSMarketPlaceDTO();

        System.assertEquals(crYPTOPUNKSMarketPlaceDTO1.hashCode(), crYPTOPUNKSMarketPlaceDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSMarketPlaceDTO2.hashCode(), crYPTOPUNKSMarketPlaceDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO1 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO2 = OASCRYPTOPUNKSMarketPlaceDTO.getExample();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO3 = new OASCRYPTOPUNKSMarketPlaceDTO();
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO4 = new OASCRYPTOPUNKSMarketPlaceDTO();

        System.assert(crYPTOPUNKSMarketPlaceDTO1.equals(crYPTOPUNKSMarketPlaceDTO2));
        System.assert(crYPTOPUNKSMarketPlaceDTO3.equals(crYPTOPUNKSMarketPlaceDTO4));
        System.assertEquals(crYPTOPUNKSMarketPlaceDTO1.hashCode(), crYPTOPUNKSMarketPlaceDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSMarketPlaceDTO3.hashCode(), crYPTOPUNKSMarketPlaceDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSMarketPlaceDTO crYPTOPUNKSMarketPlaceDTO = new OASCRYPTOPUNKSMarketPlaceDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSMarketPlaceDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('schemaVersion', x-property-mappings.get('schema_version'));
        System.assertEquals('subgraphVersion', x-property-mappings.get('subgraph_version'));
        System.assertEquals('methodologyVersion', x-property-mappings.get('methodology_version'));
        System.assertEquals('collectionCount', x-property-mappings.get('collection_count'));
        System.assertEquals('tradeCount', x-property-mappings.get('trade_count'));
        System.assertEquals('cumulativeTradeVolumeEth', x-property-mappings.get('cumulative_trade_volume_eth'));
        System.assertEquals('marketplaceRevenueEth', x-property-mappings.get('marketplace_revenue_eth'));
        System.assertEquals('creatorRevenueEth', x-property-mappings.get('creator_revenue_eth'));
        System.assertEquals('totalRevenueEth', x-property-mappings.get('total_revenue_eth'));
        System.assertEquals('cumulativeUniqueTraders', x-property-mappings.get('cumulative_unique_traders'));
    }
}
