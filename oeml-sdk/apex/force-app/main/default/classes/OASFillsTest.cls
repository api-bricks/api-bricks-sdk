@isTest
private class OASFillsTest {
    @isTest
    private static void equalsSameInstance() {
        OASFills fills1 = OASFills.getExample();
        OASFills fills2 = fills1;
        OASFills fills3 = new OASFills();
        OASFills fills4 = fills3;

        System.assert(fills1.equals(fills2));
        System.assert(fills2.equals(fills1));
        System.assert(fills1.equals(fills1));
        System.assert(fills3.equals(fills4));
        System.assert(fills4.equals(fills3));
        System.assert(fills3.equals(fills3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFills fills1 = OASFills.getExample();
        OASFills fills2 = OASFills.getExample();
        OASFills fills3 = new OASFills();
        OASFills fills4 = new OASFills();

        System.assert(fills1.equals(fills2));
        System.assert(fills2.equals(fills1));
        System.assert(fills3.equals(fills4));
        System.assert(fills4.equals(fills3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFills fills1 = OASFills.getExample();
        OASFills fills2 = new OASFills();

        System.assertEquals(false, fills1.equals('foo'));
        System.assertEquals(false, fills2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFills fills1 = OASFills.getExample();
        OASFills fills2 = new OASFills();
        OASFills fills3;

        System.assertEquals(false, fills1.equals(fills3));
        System.assertEquals(false, fills2.equals(fills3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFills fills1 = OASFills.getExample();
        OASFills fills2 = new OASFills();

        System.assertEquals(fills1.hashCode(), fills1.hashCode());
        System.assertEquals(fills2.hashCode(), fills2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFills fills1 = OASFills.getExample();
        OASFills fills2 = OASFills.getExample();
        OASFills fills3 = new OASFills();
        OASFills fills4 = new OASFills();

        System.assert(fills1.equals(fills2));
        System.assert(fills3.equals(fills4));
        System.assertEquals(fills1.hashCode(), fills2.hashCode());
        System.assertEquals(fills3.hashCode(), fills4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFills fills = new OASFills();
        Map<String, String> x-property-mappings = fills.getx-property-mappings();
        System.assertEquals('r_time', x-property-mappings.get('time'));
    }
}
