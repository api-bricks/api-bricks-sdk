@isTest
private class OASBalanceTest {
    @isTest
    private static void equalsSameInstance() {
        OASBalance balance1 = OASBalance.getExample();
        OASBalance balance2 = balance1;
        OASBalance balance3 = new OASBalance();
        OASBalance balance4 = balance3;

        System.assert(balance1.equals(balance2));
        System.assert(balance2.equals(balance1));
        System.assert(balance1.equals(balance1));
        System.assert(balance3.equals(balance4));
        System.assert(balance4.equals(balance3));
        System.assert(balance3.equals(balance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBalance balance1 = OASBalance.getExample();
        OASBalance balance2 = OASBalance.getExample();
        OASBalance balance3 = new OASBalance();
        OASBalance balance4 = new OASBalance();

        System.assert(balance1.equals(balance2));
        System.assert(balance2.equals(balance1));
        System.assert(balance3.equals(balance4));
        System.assert(balance4.equals(balance3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBalance balance1 = OASBalance.getExample();
        OASBalance balance2 = new OASBalance();

        System.assertEquals(false, balance1.equals('foo'));
        System.assertEquals(false, balance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBalance balance1 = OASBalance.getExample();
        OASBalance balance2 = new OASBalance();
        OASBalance balance3;

        System.assertEquals(false, balance1.equals(balance3));
        System.assertEquals(false, balance2.equals(balance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBalance balance1 = OASBalance.getExample();
        OASBalance balance2 = new OASBalance();

        System.assertEquals(balance1.hashCode(), balance1.hashCode());
        System.assertEquals(balance2.hashCode(), balance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBalance balance1 = OASBalance.getExample();
        OASBalance balance2 = OASBalance.getExample();
        OASBalance balance3 = new OASBalance();
        OASBalance balance4 = new OASBalance();

        System.assert(balance1.equals(balance2));
        System.assert(balance3.equals(balance4));
        System.assertEquals(balance1.hashCode(), balance2.hashCode());
        System.assertEquals(balance3.hashCode(), balance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBalance balance = new OASBalance();
        Map<String, String> x-property-mappings = balance.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBalance balance = new OASBalance();
        System.assertEquals(new List<OASBalanceDataInner>(), balance.data);
        System.assertEquals(null, balance.exchangeId);
    }
}
