@isTest
private class OASMessageErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASMessageError messageError1 = OASMessageError.getExample();
        OASMessageError messageError2 = messageError1;
        OASMessageError messageError3 = new OASMessageError();
        OASMessageError messageError4 = messageError3;

        System.assert(messageError1.equals(messageError2));
        System.assert(messageError2.equals(messageError1));
        System.assert(messageError1.equals(messageError1));
        System.assert(messageError3.equals(messageError4));
        System.assert(messageError4.equals(messageError3));
        System.assert(messageError3.equals(messageError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMessageError messageError1 = OASMessageError.getExample();
        OASMessageError messageError2 = OASMessageError.getExample();
        OASMessageError messageError3 = new OASMessageError();
        OASMessageError messageError4 = new OASMessageError();

        System.assert(messageError1.equals(messageError2));
        System.assert(messageError2.equals(messageError1));
        System.assert(messageError3.equals(messageError4));
        System.assert(messageError4.equals(messageError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMessageError messageError1 = OASMessageError.getExample();
        OASMessageError messageError2 = new OASMessageError();

        System.assertEquals(false, messageError1.equals('foo'));
        System.assertEquals(false, messageError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMessageError messageError1 = OASMessageError.getExample();
        OASMessageError messageError2 = new OASMessageError();
        OASMessageError messageError3;

        System.assertEquals(false, messageError1.equals(messageError3));
        System.assertEquals(false, messageError2.equals(messageError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMessageError messageError1 = OASMessageError.getExample();
        OASMessageError messageError2 = new OASMessageError();

        System.assertEquals(messageError1.hashCode(), messageError1.hashCode());
        System.assertEquals(messageError2.hashCode(), messageError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMessageError messageError1 = OASMessageError.getExample();
        OASMessageError messageError2 = OASMessageError.getExample();
        OASMessageError messageError3 = new OASMessageError();
        OASMessageError messageError4 = new OASMessageError();

        System.assert(messageError1.equals(messageError2));
        System.assert(messageError3.equals(messageError4));
        System.assertEquals(messageError1.hashCode(), messageError2.hashCode());
        System.assertEquals(messageError3.hashCode(), messageError4.hashCode());
    }
}
