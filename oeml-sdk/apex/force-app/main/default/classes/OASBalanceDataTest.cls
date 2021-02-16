@isTest
private class OASBalanceDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASBalanceData balanceData1 = OASBalanceData.getExample();
        OASBalanceData balanceData2 = balanceData1;
        OASBalanceData balanceData3 = new OASBalanceData();
        OASBalanceData balanceData4 = balanceData3;

        System.assert(balanceData1.equals(balanceData2));
        System.assert(balanceData2.equals(balanceData1));
        System.assert(balanceData1.equals(balanceData1));
        System.assert(balanceData3.equals(balanceData4));
        System.assert(balanceData4.equals(balanceData3));
        System.assert(balanceData3.equals(balanceData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBalanceData balanceData1 = OASBalanceData.getExample();
        OASBalanceData balanceData2 = OASBalanceData.getExample();
        OASBalanceData balanceData3 = new OASBalanceData();
        OASBalanceData balanceData4 = new OASBalanceData();

        System.assert(balanceData1.equals(balanceData2));
        System.assert(balanceData2.equals(balanceData1));
        System.assert(balanceData3.equals(balanceData4));
        System.assert(balanceData4.equals(balanceData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBalanceData balanceData1 = OASBalanceData.getExample();
        OASBalanceData balanceData2 = new OASBalanceData();

        System.assertEquals(false, balanceData1.equals('foo'));
        System.assertEquals(false, balanceData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBalanceData balanceData1 = OASBalanceData.getExample();
        OASBalanceData balanceData2 = new OASBalanceData();
        OASBalanceData balanceData3;

        System.assertEquals(false, balanceData1.equals(balanceData3));
        System.assertEquals(false, balanceData2.equals(balanceData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBalanceData balanceData1 = OASBalanceData.getExample();
        OASBalanceData balanceData2 = new OASBalanceData();

        System.assertEquals(balanceData1.hashCode(), balanceData1.hashCode());
        System.assertEquals(balanceData2.hashCode(), balanceData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBalanceData balanceData1 = OASBalanceData.getExample();
        OASBalanceData balanceData2 = OASBalanceData.getExample();
        OASBalanceData balanceData3 = new OASBalanceData();
        OASBalanceData balanceData4 = new OASBalanceData();

        System.assert(balanceData1.equals(balanceData2));
        System.assert(balanceData3.equals(balanceData4));
        System.assertEquals(balanceData1.hashCode(), balanceData2.hashCode());
        System.assertEquals(balanceData3.hashCode(), balanceData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBalanceData balanceData = new OASBalanceData();
        Map<String, String> x-property-mappings = balanceData.getx-property-mappings();
        System.assertEquals('assetIdExchange', x-property-mappings.get('asset_id_exchange'));
        System.assertEquals('assetIdCoinapi', x-property-mappings.get('asset_id_coinapi'));
        System.assertEquals('lastUpdatedBy', x-property-mappings.get('last_updated_by'));
        System.assertEquals('rateUsd', x-property-mappings.get('rate_usd'));
    }
}
