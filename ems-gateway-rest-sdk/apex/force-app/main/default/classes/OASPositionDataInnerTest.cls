@isTest
private class OASPositionDataInnerTest {
    @isTest
    private static void equalsSameInstance() {
        OASPositionDataInner positionDataInner1 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner2 = positionDataInner1;
        OASPositionDataInner positionDataInner3 = new OASPositionDataInner();
        OASPositionDataInner positionDataInner4 = positionDataInner3;

        System.assert(positionDataInner1.equals(positionDataInner2));
        System.assert(positionDataInner2.equals(positionDataInner1));
        System.assert(positionDataInner1.equals(positionDataInner1));
        System.assert(positionDataInner3.equals(positionDataInner4));
        System.assert(positionDataInner4.equals(positionDataInner3));
        System.assert(positionDataInner3.equals(positionDataInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPositionDataInner positionDataInner1 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner2 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner3 = new OASPositionDataInner();
        OASPositionDataInner positionDataInner4 = new OASPositionDataInner();

        System.assert(positionDataInner1.equals(positionDataInner2));
        System.assert(positionDataInner2.equals(positionDataInner1));
        System.assert(positionDataInner3.equals(positionDataInner4));
        System.assert(positionDataInner4.equals(positionDataInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPositionDataInner positionDataInner1 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner2 = new OASPositionDataInner();

        System.assertEquals(false, positionDataInner1.equals('foo'));
        System.assertEquals(false, positionDataInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPositionDataInner positionDataInner1 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner2 = new OASPositionDataInner();
        OASPositionDataInner positionDataInner3;

        System.assertEquals(false, positionDataInner1.equals(positionDataInner3));
        System.assertEquals(false, positionDataInner2.equals(positionDataInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPositionDataInner positionDataInner1 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner2 = new OASPositionDataInner();

        System.assertEquals(positionDataInner1.hashCode(), positionDataInner1.hashCode());
        System.assertEquals(positionDataInner2.hashCode(), positionDataInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPositionDataInner positionDataInner1 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner2 = OASPositionDataInner.getExample();
        OASPositionDataInner positionDataInner3 = new OASPositionDataInner();
        OASPositionDataInner positionDataInner4 = new OASPositionDataInner();

        System.assert(positionDataInner1.equals(positionDataInner2));
        System.assert(positionDataInner3.equals(positionDataInner4));
        System.assertEquals(positionDataInner1.hashCode(), positionDataInner2.hashCode());
        System.assertEquals(positionDataInner3.hashCode(), positionDataInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPositionDataInner positionDataInner = new OASPositionDataInner();
        Map<String, String> x-property-mappings = positionDataInner.getx-property-mappings();
        System.assertEquals('symbolIdExchange', x-property-mappings.get('symbol_id_exchange'));
        System.assertEquals('symbolIdCoinapi', x-property-mappings.get('symbol_id_coinapi'));
        System.assertEquals('avgEntryPrice', x-property-mappings.get('avg_entry_price'));
        System.assertEquals('unrealizedPnl', x-property-mappings.get('unrealized_pnl'));
        System.assertEquals('crossMargin', x-property-mappings.get('cross_margin'));
        System.assertEquals('liquidationPrice', x-property-mappings.get('liquidation_price'));
        System.assertEquals('rawData', x-property-mappings.get('raw_data'));
    }
}
