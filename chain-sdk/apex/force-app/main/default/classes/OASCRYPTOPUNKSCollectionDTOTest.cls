@isTest
private class OASCRYPTOPUNKSCollectionDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO1 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO2 = crYPTOPUNKSCollectionDTO1;
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO3 = new OASCRYPTOPUNKSCollectionDTO();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO4 = crYPTOPUNKSCollectionDTO3;

        System.assert(crYPTOPUNKSCollectionDTO1.equals(crYPTOPUNKSCollectionDTO2));
        System.assert(crYPTOPUNKSCollectionDTO2.equals(crYPTOPUNKSCollectionDTO1));
        System.assert(crYPTOPUNKSCollectionDTO1.equals(crYPTOPUNKSCollectionDTO1));
        System.assert(crYPTOPUNKSCollectionDTO3.equals(crYPTOPUNKSCollectionDTO4));
        System.assert(crYPTOPUNKSCollectionDTO4.equals(crYPTOPUNKSCollectionDTO3));
        System.assert(crYPTOPUNKSCollectionDTO3.equals(crYPTOPUNKSCollectionDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO1 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO2 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO3 = new OASCRYPTOPUNKSCollectionDTO();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO4 = new OASCRYPTOPUNKSCollectionDTO();

        System.assert(crYPTOPUNKSCollectionDTO1.equals(crYPTOPUNKSCollectionDTO2));
        System.assert(crYPTOPUNKSCollectionDTO2.equals(crYPTOPUNKSCollectionDTO1));
        System.assert(crYPTOPUNKSCollectionDTO3.equals(crYPTOPUNKSCollectionDTO4));
        System.assert(crYPTOPUNKSCollectionDTO4.equals(crYPTOPUNKSCollectionDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO1 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO2 = new OASCRYPTOPUNKSCollectionDTO();

        System.assertEquals(false, crYPTOPUNKSCollectionDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSCollectionDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO1 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO2 = new OASCRYPTOPUNKSCollectionDTO();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO3;

        System.assertEquals(false, crYPTOPUNKSCollectionDTO1.equals(crYPTOPUNKSCollectionDTO3));
        System.assertEquals(false, crYPTOPUNKSCollectionDTO2.equals(crYPTOPUNKSCollectionDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO1 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO2 = new OASCRYPTOPUNKSCollectionDTO();

        System.assertEquals(crYPTOPUNKSCollectionDTO1.hashCode(), crYPTOPUNKSCollectionDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSCollectionDTO2.hashCode(), crYPTOPUNKSCollectionDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO1 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO2 = OASCRYPTOPUNKSCollectionDTO.getExample();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO3 = new OASCRYPTOPUNKSCollectionDTO();
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO4 = new OASCRYPTOPUNKSCollectionDTO();

        System.assert(crYPTOPUNKSCollectionDTO1.equals(crYPTOPUNKSCollectionDTO2));
        System.assert(crYPTOPUNKSCollectionDTO3.equals(crYPTOPUNKSCollectionDTO4));
        System.assertEquals(crYPTOPUNKSCollectionDTO1.hashCode(), crYPTOPUNKSCollectionDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSCollectionDTO3.hashCode(), crYPTOPUNKSCollectionDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSCollectionDTO crYPTOPUNKSCollectionDTO = new OASCRYPTOPUNKSCollectionDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSCollectionDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('totalSupply', x-property-mappings.get('total_supply'));
        System.assertEquals('royaltyFee', x-property-mappings.get('royalty_fee'));
        System.assertEquals('cumulativeTradeVolumeEth', x-property-mappings.get('cumulative_trade_volume_eth'));
        System.assertEquals('marketplaceRevenueEth', x-property-mappings.get('marketplace_revenue_eth'));
        System.assertEquals('creatorRevenueEth', x-property-mappings.get('creator_revenue_eth'));
        System.assertEquals('totalRevenueEth', x-property-mappings.get('total_revenue_eth'));
        System.assertEquals('tradeCount', x-property-mappings.get('trade_count'));
        System.assertEquals('buyerCount', x-property-mappings.get('buyer_count'));
        System.assertEquals('sellerCount', x-property-mappings.get('seller_count'));
    }
}
