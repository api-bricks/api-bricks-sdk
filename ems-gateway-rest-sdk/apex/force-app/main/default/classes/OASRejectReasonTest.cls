@isTest
private class OASRejectReasonTest {
    @isTest
    private static void allowableValues() {
        Set<OASRejectReason> expected = new Set<OASRejectReason>{
            OASRejectReason.OTHER,
            OASRejectReason.EXCHANGE_UNREACHABLE,
            OASRejectReason.EXCHANGE_RESPONSE_TIMEOUT,
            OASRejectReason.ORDER_ID_NOT_FOUND,
            OASRejectReason.INVALID_TYPE,
            OASRejectReason.METHOD_NOT_SUPPORTED,
            OASRejectReason.JSON_ERROR
        };
        Set<OASRejectReason> actual  = new Set<OASRejectReason>(OASRejectReason.values());
        System.assertEquals(expected, actual);
    }
}
