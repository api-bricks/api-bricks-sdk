@isTest
private class OASCRYPTOPUNKSMarketplaceDailySnapshTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO1 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO2 = crYPTOPUNKSMarketplaceDailySnapshotDTO1;
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO3 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO4 = crYPTOPUNKSMarketplaceDailySnapshotDTO3;

        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO1.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO2));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO2.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO1));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO1.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO1));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO3.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO4));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO4.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO3));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO3.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO1 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO2 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO3 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO4 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();

        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO1.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO2));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO2.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO1));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO3.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO4));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO4.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO1 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO2 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();

        System.assertEquals(false, crYPTOPUNKSMarketplaceDailySnapshotDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSMarketplaceDailySnapshotDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO1 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO2 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO3;

        System.assertEquals(false, crYPTOPUNKSMarketplaceDailySnapshotDTO1.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO3));
        System.assertEquals(false, crYPTOPUNKSMarketplaceDailySnapshotDTO2.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO1 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO2 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();

        System.assertEquals(crYPTOPUNKSMarketplaceDailySnapshotDTO1.hashCode(), crYPTOPUNKSMarketplaceDailySnapshotDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSMarketplaceDailySnapshotDTO2.hashCode(), crYPTOPUNKSMarketplaceDailySnapshotDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO1 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO2 = OASCRYPTOPUNKSMarketplaceDailySnapsh.getExample();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO3 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO4 = new OASCRYPTOPUNKSMarketplaceDailySnapsh();

        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO1.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO2));
        System.assert(crYPTOPUNKSMarketplaceDailySnapshotDTO3.equals(crYPTOPUNKSMarketplaceDailySnapshotDTO4));
        System.assertEquals(crYPTOPUNKSMarketplaceDailySnapshotDTO1.hashCode(), crYPTOPUNKSMarketplaceDailySnapshotDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSMarketplaceDailySnapshotDTO3.hashCode(), crYPTOPUNKSMarketplaceDailySnapshotDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSMarketplaceDailySnapsh crYPTOPUNKSMarketplaceDailySnapshotDTO = new OASCRYPTOPUNKSMarketplaceDailySnapsh();
        Map<String, String> x-property-mappings = crYPTOPUNKSMarketplaceDailySnapshotDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('collectionCount', x-property-mappings.get('collection_count'));
        System.assertEquals('cumulativeTradeVolumeEth', x-property-mappings.get('cumulative_trade_volume_eth'));
        System.assertEquals('marketplaceRevenueEth', x-property-mappings.get('marketplace_revenue_eth'));
        System.assertEquals('creatorRevenueEth', x-property-mappings.get('creator_revenue_eth'));
        System.assertEquals('totalRevenueEth', x-property-mappings.get('total_revenue_eth'));
        System.assertEquals('tradeCount', x-property-mappings.get('trade_count'));
        System.assertEquals('cumulativeUniqueTraders', x-property-mappings.get('cumulative_unique_traders'));
        System.assertEquals('dailyActiveTraders', x-property-mappings.get('daily_active_traders'));
        System.assertEquals('dailyTradedCollectionCount', x-property-mappings.get('daily_traded_collection_count'));
        System.assertEquals('dailyTradedItemCount', x-property-mappings.get('daily_traded_item_count'));
    }
}
