@isTest
private class OASCRYPTOPUNKSCollectionDailySnapshoTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO1 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO2 = crYPTOPUNKSCollectionDailySnapshotDTO1;
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO3 = new OASCRYPTOPUNKSCollectionDailySnapsho();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO4 = crYPTOPUNKSCollectionDailySnapshotDTO3;

        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO1.equals(crYPTOPUNKSCollectionDailySnapshotDTO2));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO2.equals(crYPTOPUNKSCollectionDailySnapshotDTO1));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO1.equals(crYPTOPUNKSCollectionDailySnapshotDTO1));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO3.equals(crYPTOPUNKSCollectionDailySnapshotDTO4));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO4.equals(crYPTOPUNKSCollectionDailySnapshotDTO3));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO3.equals(crYPTOPUNKSCollectionDailySnapshotDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO1 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO2 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO3 = new OASCRYPTOPUNKSCollectionDailySnapsho();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO4 = new OASCRYPTOPUNKSCollectionDailySnapsho();

        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO1.equals(crYPTOPUNKSCollectionDailySnapshotDTO2));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO2.equals(crYPTOPUNKSCollectionDailySnapshotDTO1));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO3.equals(crYPTOPUNKSCollectionDailySnapshotDTO4));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO4.equals(crYPTOPUNKSCollectionDailySnapshotDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO1 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO2 = new OASCRYPTOPUNKSCollectionDailySnapsho();

        System.assertEquals(false, crYPTOPUNKSCollectionDailySnapshotDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSCollectionDailySnapshotDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO1 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO2 = new OASCRYPTOPUNKSCollectionDailySnapsho();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO3;

        System.assertEquals(false, crYPTOPUNKSCollectionDailySnapshotDTO1.equals(crYPTOPUNKSCollectionDailySnapshotDTO3));
        System.assertEquals(false, crYPTOPUNKSCollectionDailySnapshotDTO2.equals(crYPTOPUNKSCollectionDailySnapshotDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO1 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO2 = new OASCRYPTOPUNKSCollectionDailySnapsho();

        System.assertEquals(crYPTOPUNKSCollectionDailySnapshotDTO1.hashCode(), crYPTOPUNKSCollectionDailySnapshotDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSCollectionDailySnapshotDTO2.hashCode(), crYPTOPUNKSCollectionDailySnapshotDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO1 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO2 = OASCRYPTOPUNKSCollectionDailySnapsho.getExample();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO3 = new OASCRYPTOPUNKSCollectionDailySnapsho();
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO4 = new OASCRYPTOPUNKSCollectionDailySnapsho();

        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO1.equals(crYPTOPUNKSCollectionDailySnapshotDTO2));
        System.assert(crYPTOPUNKSCollectionDailySnapshotDTO3.equals(crYPTOPUNKSCollectionDailySnapshotDTO4));
        System.assertEquals(crYPTOPUNKSCollectionDailySnapshotDTO1.hashCode(), crYPTOPUNKSCollectionDailySnapshotDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSCollectionDailySnapshotDTO3.hashCode(), crYPTOPUNKSCollectionDailySnapshotDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSCollectionDailySnapsho crYPTOPUNKSCollectionDailySnapshotDTO = new OASCRYPTOPUNKSCollectionDailySnapsho();
        Map<String, String> x-property-mappings = crYPTOPUNKSCollectionDailySnapshotDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('royaltyFee', x-property-mappings.get('royalty_fee'));
        System.assertEquals('dailyMinSalePrice', x-property-mappings.get('daily_min_sale_price'));
        System.assertEquals('dailyMaxSalePrice', x-property-mappings.get('daily_max_sale_price'));
        System.assertEquals('cumulativeTradeVolumeEth', x-property-mappings.get('cumulative_trade_volume_eth'));
        System.assertEquals('dailyTradeVolumeEth', x-property-mappings.get('daily_trade_volume_eth'));
        System.assertEquals('marketplaceRevenueEth', x-property-mappings.get('marketplace_revenue_eth'));
        System.assertEquals('creatorRevenueEth', x-property-mappings.get('creator_revenue_eth'));
        System.assertEquals('totalRevenueEth', x-property-mappings.get('total_revenue_eth'));
        System.assertEquals('tradeCount', x-property-mappings.get('trade_count'));
        System.assertEquals('dailyTradedItemCount', x-property-mappings.get('daily_traded_item_count'));
    }
}
