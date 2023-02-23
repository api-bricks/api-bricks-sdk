@isTest
private class OASBalanceDataInnerTest {
    @isTest
    private static void equalsSameInstance() {
        OASBalanceDataInner balanceDataInner1 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner2 = balanceDataInner1;
        OASBalanceDataInner balanceDataInner3 = new OASBalanceDataInner();
        OASBalanceDataInner balanceDataInner4 = balanceDataInner3;

        System.assert(balanceDataInner1.equals(balanceDataInner2));
        System.assert(balanceDataInner2.equals(balanceDataInner1));
        System.assert(balanceDataInner1.equals(balanceDataInner1));
        System.assert(balanceDataInner3.equals(balanceDataInner4));
        System.assert(balanceDataInner4.equals(balanceDataInner3));
        System.assert(balanceDataInner3.equals(balanceDataInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBalanceDataInner balanceDataInner1 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner2 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner3 = new OASBalanceDataInner();
        OASBalanceDataInner balanceDataInner4 = new OASBalanceDataInner();

        System.assert(balanceDataInner1.equals(balanceDataInner2));
        System.assert(balanceDataInner2.equals(balanceDataInner1));
        System.assert(balanceDataInner3.equals(balanceDataInner4));
        System.assert(balanceDataInner4.equals(balanceDataInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBalanceDataInner balanceDataInner1 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner2 = new OASBalanceDataInner();

        System.assertEquals(false, balanceDataInner1.equals('foo'));
        System.assertEquals(false, balanceDataInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBalanceDataInner balanceDataInner1 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner2 = new OASBalanceDataInner();
        OASBalanceDataInner balanceDataInner3;

        System.assertEquals(false, balanceDataInner1.equals(balanceDataInner3));
        System.assertEquals(false, balanceDataInner2.equals(balanceDataInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBalanceDataInner balanceDataInner1 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner2 = new OASBalanceDataInner();

        System.assertEquals(balanceDataInner1.hashCode(), balanceDataInner1.hashCode());
        System.assertEquals(balanceDataInner2.hashCode(), balanceDataInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBalanceDataInner balanceDataInner1 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner2 = OASBalanceDataInner.getExample();
        OASBalanceDataInner balanceDataInner3 = new OASBalanceDataInner();
        OASBalanceDataInner balanceDataInner4 = new OASBalanceDataInner();

        System.assert(balanceDataInner1.equals(balanceDataInner2));
        System.assert(balanceDataInner3.equals(balanceDataInner4));
        System.assertEquals(balanceDataInner1.hashCode(), balanceDataInner2.hashCode());
        System.assertEquals(balanceDataInner3.hashCode(), balanceDataInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBalanceDataInner balanceDataInner = new OASBalanceDataInner();
        Map<String, String> x-property-mappings = balanceDataInner.getx-property-mappings();
        System.assertEquals('assetIdExchange', x-property-mappings.get('asset_id_exchange'));
        System.assertEquals('assetIdCoinapi', x-property-mappings.get('asset_id_coinapi'));
        System.assertEquals('lastUpdatedBy', x-property-mappings.get('last_updated_by'));
        System.assertEquals('rateUsd', x-property-mappings.get('rate_usd'));
    }
}
