@isTest
private class OASPositionTest {
    @isTest
    private static void equalsSameInstance() {
        OASPosition position1 = OASPosition.getExample();
        OASPosition position2 = position1;
        OASPosition position3 = new OASPosition();
        OASPosition position4 = position3;

        System.assert(position1.equals(position2));
        System.assert(position2.equals(position1));
        System.assert(position1.equals(position1));
        System.assert(position3.equals(position4));
        System.assert(position4.equals(position3));
        System.assert(position3.equals(position3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPosition position1 = OASPosition.getExample();
        OASPosition position2 = OASPosition.getExample();
        OASPosition position3 = new OASPosition();
        OASPosition position4 = new OASPosition();

        System.assert(position1.equals(position2));
        System.assert(position2.equals(position1));
        System.assert(position3.equals(position4));
        System.assert(position4.equals(position3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPosition position1 = OASPosition.getExample();
        OASPosition position2 = new OASPosition();

        System.assertEquals(false, position1.equals('foo'));
        System.assertEquals(false, position2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPosition position1 = OASPosition.getExample();
        OASPosition position2 = new OASPosition();
        OASPosition position3;

        System.assertEquals(false, position1.equals(position3));
        System.assertEquals(false, position2.equals(position3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPosition position1 = OASPosition.getExample();
        OASPosition position2 = new OASPosition();

        System.assertEquals(position1.hashCode(), position1.hashCode());
        System.assertEquals(position2.hashCode(), position2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPosition position1 = OASPosition.getExample();
        OASPosition position2 = OASPosition.getExample();
        OASPosition position3 = new OASPosition();
        OASPosition position4 = new OASPosition();

        System.assert(position1.equals(position2));
        System.assert(position3.equals(position4));
        System.assertEquals(position1.hashCode(), position2.hashCode());
        System.assertEquals(position3.hashCode(), position4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPosition position = new OASPosition();
        Map<String, String> x-property-mappings = position.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPosition position = new OASPosition();
        System.assertEquals(new List<OASPositionDataInner>(), position.data);
        System.assertEquals(null, position.exchangeId);
    }
}
