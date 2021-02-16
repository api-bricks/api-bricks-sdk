@isTest
private class OASMessageTest {
    @isTest
    private static void equalsSameInstance() {
        OASMessage message1 = OASMessage.getExample();
        OASMessage message2 = message1;
        OASMessage message3 = new OASMessage();
        OASMessage message4 = message3;

        System.assert(message1.equals(message2));
        System.assert(message2.equals(message1));
        System.assert(message1.equals(message1));
        System.assert(message3.equals(message4));
        System.assert(message4.equals(message3));
        System.assert(message3.equals(message3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMessage message1 = OASMessage.getExample();
        OASMessage message2 = OASMessage.getExample();
        OASMessage message3 = new OASMessage();
        OASMessage message4 = new OASMessage();

        System.assert(message1.equals(message2));
        System.assert(message2.equals(message1));
        System.assert(message3.equals(message4));
        System.assert(message4.equals(message3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMessage message1 = OASMessage.getExample();
        OASMessage message2 = new OASMessage();

        System.assertEquals(false, message1.equals('foo'));
        System.assertEquals(false, message2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMessage message1 = OASMessage.getExample();
        OASMessage message2 = new OASMessage();
        OASMessage message3;

        System.assertEquals(false, message1.equals(message3));
        System.assertEquals(false, message2.equals(message3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMessage message1 = OASMessage.getExample();
        OASMessage message2 = new OASMessage();

        System.assertEquals(message1.hashCode(), message1.hashCode());
        System.assertEquals(message2.hashCode(), message2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMessage message1 = OASMessage.getExample();
        OASMessage message2 = OASMessage.getExample();
        OASMessage message3 = new OASMessage();
        OASMessage message4 = new OASMessage();

        System.assert(message1.equals(message2));
        System.assert(message3.equals(message4));
        System.assertEquals(message1.hashCode(), message2.hashCode());
        System.assertEquals(message3.hashCode(), message4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMessage message = new OASMessage();
        Map<String, String> x-property-mappings = message.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }
}
