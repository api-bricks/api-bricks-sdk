@isTest
private class OASOrderCancelSingleRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderCancelSingleRequest orderCancelSingleRequest1 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest2 = orderCancelSingleRequest1;
        OASOrderCancelSingleRequest orderCancelSingleRequest3 = new OASOrderCancelSingleRequest();
        OASOrderCancelSingleRequest orderCancelSingleRequest4 = orderCancelSingleRequest3;

        System.assert(orderCancelSingleRequest1.equals(orderCancelSingleRequest2));
        System.assert(orderCancelSingleRequest2.equals(orderCancelSingleRequest1));
        System.assert(orderCancelSingleRequest1.equals(orderCancelSingleRequest1));
        System.assert(orderCancelSingleRequest3.equals(orderCancelSingleRequest4));
        System.assert(orderCancelSingleRequest4.equals(orderCancelSingleRequest3));
        System.assert(orderCancelSingleRequest3.equals(orderCancelSingleRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderCancelSingleRequest orderCancelSingleRequest1 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest2 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest3 = new OASOrderCancelSingleRequest();
        OASOrderCancelSingleRequest orderCancelSingleRequest4 = new OASOrderCancelSingleRequest();

        System.assert(orderCancelSingleRequest1.equals(orderCancelSingleRequest2));
        System.assert(orderCancelSingleRequest2.equals(orderCancelSingleRequest1));
        System.assert(orderCancelSingleRequest3.equals(orderCancelSingleRequest4));
        System.assert(orderCancelSingleRequest4.equals(orderCancelSingleRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderCancelSingleRequest orderCancelSingleRequest1 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest2 = new OASOrderCancelSingleRequest();

        System.assertEquals(false, orderCancelSingleRequest1.equals('foo'));
        System.assertEquals(false, orderCancelSingleRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderCancelSingleRequest orderCancelSingleRequest1 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest2 = new OASOrderCancelSingleRequest();
        OASOrderCancelSingleRequest orderCancelSingleRequest3;

        System.assertEquals(false, orderCancelSingleRequest1.equals(orderCancelSingleRequest3));
        System.assertEquals(false, orderCancelSingleRequest2.equals(orderCancelSingleRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderCancelSingleRequest orderCancelSingleRequest1 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest2 = new OASOrderCancelSingleRequest();

        System.assertEquals(orderCancelSingleRequest1.hashCode(), orderCancelSingleRequest1.hashCode());
        System.assertEquals(orderCancelSingleRequest2.hashCode(), orderCancelSingleRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderCancelSingleRequest orderCancelSingleRequest1 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest2 = OASOrderCancelSingleRequest.getExample();
        OASOrderCancelSingleRequest orderCancelSingleRequest3 = new OASOrderCancelSingleRequest();
        OASOrderCancelSingleRequest orderCancelSingleRequest4 = new OASOrderCancelSingleRequest();

        System.assert(orderCancelSingleRequest1.equals(orderCancelSingleRequest2));
        System.assert(orderCancelSingleRequest3.equals(orderCancelSingleRequest4));
        System.assertEquals(orderCancelSingleRequest1.hashCode(), orderCancelSingleRequest2.hashCode());
        System.assertEquals(orderCancelSingleRequest3.hashCode(), orderCancelSingleRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderCancelSingleRequest orderCancelSingleRequest = new OASOrderCancelSingleRequest();
        Map<String, String> x-property-mappings = orderCancelSingleRequest.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('exchangeOrderId', x-property-mappings.get('exchange_order_id'));
        System.assertEquals('clientOrderId', x-property-mappings.get('client_order_id'));
    }
}
