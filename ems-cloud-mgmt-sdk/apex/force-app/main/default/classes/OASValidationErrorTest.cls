@isTest
private class OASValidationErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASValidationError validationError1 = OASValidationError.getExample();
        OASValidationError validationError2 = validationError1;
        OASValidationError validationError3 = new OASValidationError();
        OASValidationError validationError4 = validationError3;

        System.assert(validationError1.equals(validationError2));
        System.assert(validationError2.equals(validationError1));
        System.assert(validationError1.equals(validationError1));
        System.assert(validationError3.equals(validationError4));
        System.assert(validationError4.equals(validationError3));
        System.assert(validationError3.equals(validationError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASValidationError validationError1 = OASValidationError.getExample();
        OASValidationError validationError2 = OASValidationError.getExample();
        OASValidationError validationError3 = new OASValidationError();
        OASValidationError validationError4 = new OASValidationError();

        System.assert(validationError1.equals(validationError2));
        System.assert(validationError2.equals(validationError1));
        System.assert(validationError3.equals(validationError4));
        System.assert(validationError4.equals(validationError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASValidationError validationError1 = OASValidationError.getExample();
        OASValidationError validationError2 = new OASValidationError();

        System.assertEquals(false, validationError1.equals('foo'));
        System.assertEquals(false, validationError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASValidationError validationError1 = OASValidationError.getExample();
        OASValidationError validationError2 = new OASValidationError();
        OASValidationError validationError3;

        System.assertEquals(false, validationError1.equals(validationError3));
        System.assertEquals(false, validationError2.equals(validationError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASValidationError validationError1 = OASValidationError.getExample();
        OASValidationError validationError2 = new OASValidationError();

        System.assertEquals(validationError1.hashCode(), validationError1.hashCode());
        System.assertEquals(validationError2.hashCode(), validationError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASValidationError validationError1 = OASValidationError.getExample();
        OASValidationError validationError2 = OASValidationError.getExample();
        OASValidationError validationError3 = new OASValidationError();
        OASValidationError validationError4 = new OASValidationError();

        System.assert(validationError1.equals(validationError2));
        System.assert(validationError3.equals(validationError4));
        System.assertEquals(validationError1.hashCode(), validationError2.hashCode());
        System.assertEquals(validationError3.hashCode(), validationError4.hashCode());
    }
}
