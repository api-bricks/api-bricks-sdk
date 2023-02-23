@isTest
private class OASOrderCancelAllRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderCancelAllRequest orderCancelAllRequest1 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest2 = orderCancelAllRequest1;
        OASOrderCancelAllRequest orderCancelAllRequest3 = new OASOrderCancelAllRequest();
        OASOrderCancelAllRequest orderCancelAllRequest4 = orderCancelAllRequest3;

        System.assert(orderCancelAllRequest1.equals(orderCancelAllRequest2));
        System.assert(orderCancelAllRequest2.equals(orderCancelAllRequest1));
        System.assert(orderCancelAllRequest1.equals(orderCancelAllRequest1));
        System.assert(orderCancelAllRequest3.equals(orderCancelAllRequest4));
        System.assert(orderCancelAllRequest4.equals(orderCancelAllRequest3));
        System.assert(orderCancelAllRequest3.equals(orderCancelAllRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderCancelAllRequest orderCancelAllRequest1 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest2 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest3 = new OASOrderCancelAllRequest();
        OASOrderCancelAllRequest orderCancelAllRequest4 = new OASOrderCancelAllRequest();

        System.assert(orderCancelAllRequest1.equals(orderCancelAllRequest2));
        System.assert(orderCancelAllRequest2.equals(orderCancelAllRequest1));
        System.assert(orderCancelAllRequest3.equals(orderCancelAllRequest4));
        System.assert(orderCancelAllRequest4.equals(orderCancelAllRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderCancelAllRequest orderCancelAllRequest1 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest2 = new OASOrderCancelAllRequest();

        System.assertEquals(false, orderCancelAllRequest1.equals('foo'));
        System.assertEquals(false, orderCancelAllRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderCancelAllRequest orderCancelAllRequest1 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest2 = new OASOrderCancelAllRequest();
        OASOrderCancelAllRequest orderCancelAllRequest3;

        System.assertEquals(false, orderCancelAllRequest1.equals(orderCancelAllRequest3));
        System.assertEquals(false, orderCancelAllRequest2.equals(orderCancelAllRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderCancelAllRequest orderCancelAllRequest1 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest2 = new OASOrderCancelAllRequest();

        System.assertEquals(orderCancelAllRequest1.hashCode(), orderCancelAllRequest1.hashCode());
        System.assertEquals(orderCancelAllRequest2.hashCode(), orderCancelAllRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderCancelAllRequest orderCancelAllRequest1 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest2 = OASOrderCancelAllRequest.getExample();
        OASOrderCancelAllRequest orderCancelAllRequest3 = new OASOrderCancelAllRequest();
        OASOrderCancelAllRequest orderCancelAllRequest4 = new OASOrderCancelAllRequest();

        System.assert(orderCancelAllRequest1.equals(orderCancelAllRequest2));
        System.assert(orderCancelAllRequest3.equals(orderCancelAllRequest4));
        System.assertEquals(orderCancelAllRequest1.hashCode(), orderCancelAllRequest2.hashCode());
        System.assertEquals(orderCancelAllRequest3.hashCode(), orderCancelAllRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderCancelAllRequest orderCancelAllRequest = new OASOrderCancelAllRequest();
        Map<String, String> x-property-mappings = orderCancelAllRequest.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }
}
