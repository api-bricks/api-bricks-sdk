@isTest
private class OASOrdStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASOrdStatus> expected = new Set<OASOrdStatus>{
            OASOrdStatus.RECEIVED,
            OASOrdStatus.ROUTING,
            OASOrdStatus.ROUTED,
            OASOrdStatus.NEW,
            OASOrdStatus.PENDING_CANCEL,
            OASOrdStatus.PARTIALLY_FILLED,
            OASOrdStatus.FILLED,
            OASOrdStatus.CANCELED,
            OASOrdStatus.REJECTED
        };
        Set<OASOrdStatus> actual  = new Set<OASOrdStatus>(OASOrdStatus.values());
        System.assertEquals(expected, actual);
    }
}
