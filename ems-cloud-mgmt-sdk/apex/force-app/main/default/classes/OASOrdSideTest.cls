@isTest
private class OASOrdSideTest {
    @isTest
    private static void allowableValues() {
        Set<OASOrdSide> expected = new Set<OASOrdSide>{
            OASOrdSide.BUY,
            OASOrdSide.SELL
        };
        Set<OASOrdSide> actual  = new Set<OASOrdSide>(OASOrdSide.values());
        System.assertEquals(expected, actual);
    }
}
