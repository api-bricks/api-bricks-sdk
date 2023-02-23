@isTest
private class OASTimeInForceTest {
    @isTest
    private static void allowableValues() {
        Set<OASTimeInForce> expected = new Set<OASTimeInForce>{
            OASTimeInForce.GOOD_TILL_CANCEL,
            OASTimeInForce.GOOD_TILL_TIME_EXCHANGE,
            OASTimeInForce.GOOD_TILL_TIME_OMS,
            OASTimeInForce.FILL_OR_KILL,
            OASTimeInForce.IMMEDIATE_OR_CANCEL
        };
        Set<OASTimeInForce> actual  = new Set<OASTimeInForce>(OASTimeInForce.values());
        System.assertEquals(expected, actual);
    }
}
