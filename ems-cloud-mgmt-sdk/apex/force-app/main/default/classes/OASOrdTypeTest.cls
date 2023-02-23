@isTest
private class OASOrdTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASOrdType> expected = new Set<OASOrdType>{
            OASOrdType.LIMIT
        };
        Set<OASOrdType> actual  = new Set<OASOrdType>(OASOrdType.values());
        System.assertEquals(expected, actual);
    }
}
