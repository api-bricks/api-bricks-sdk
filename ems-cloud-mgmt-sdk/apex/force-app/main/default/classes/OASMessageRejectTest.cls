@isTest
private class OASMessageRejectTest {
    @isTest
    private static void equalsSameInstance() {
        OASMessageReject messageReject1 = OASMessageReject.getExample();
        OASMessageReject messageReject2 = messageReject1;
        OASMessageReject messageReject3 = new OASMessageReject();
        OASMessageReject messageReject4 = messageReject3;

        System.assert(messageReject1.equals(messageReject2));
        System.assert(messageReject2.equals(messageReject1));
        System.assert(messageReject1.equals(messageReject1));
        System.assert(messageReject3.equals(messageReject4));
        System.assert(messageReject4.equals(messageReject3));
        System.assert(messageReject3.equals(messageReject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMessageReject messageReject1 = OASMessageReject.getExample();
        OASMessageReject messageReject2 = OASMessageReject.getExample();
        OASMessageReject messageReject3 = new OASMessageReject();
        OASMessageReject messageReject4 = new OASMessageReject();

        System.assert(messageReject1.equals(messageReject2));
        System.assert(messageReject2.equals(messageReject1));
        System.assert(messageReject3.equals(messageReject4));
        System.assert(messageReject4.equals(messageReject3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMessageReject messageReject1 = OASMessageReject.getExample();
        OASMessageReject messageReject2 = new OASMessageReject();

        System.assertEquals(false, messageReject1.equals('foo'));
        System.assertEquals(false, messageReject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMessageReject messageReject1 = OASMessageReject.getExample();
        OASMessageReject messageReject2 = new OASMessageReject();
        OASMessageReject messageReject3;

        System.assertEquals(false, messageReject1.equals(messageReject3));
        System.assertEquals(false, messageReject2.equals(messageReject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMessageReject messageReject1 = OASMessageReject.getExample();
        OASMessageReject messageReject2 = new OASMessageReject();

        System.assertEquals(messageReject1.hashCode(), messageReject1.hashCode());
        System.assertEquals(messageReject2.hashCode(), messageReject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMessageReject messageReject1 = OASMessageReject.getExample();
        OASMessageReject messageReject2 = OASMessageReject.getExample();
        OASMessageReject messageReject3 = new OASMessageReject();
        OASMessageReject messageReject4 = new OASMessageReject();

        System.assert(messageReject1.equals(messageReject2));
        System.assert(messageReject3.equals(messageReject4));
        System.assertEquals(messageReject1.hashCode(), messageReject2.hashCode());
        System.assertEquals(messageReject3.hashCode(), messageReject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMessageReject messageReject = new OASMessageReject();
        Map<String, String> x-property-mappings = messageReject.getx-property-mappings();
        System.assertEquals('rejectReason', x-property-mappings.get('reject_reason'));
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('rejectedMessage', x-property-mappings.get('rejected_message'));
    }
}
