@isTest
private class OASOrderNewSingleRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderNewSingleRequest orderNewSingleRequest1 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest2 = orderNewSingleRequest1;
        OASOrderNewSingleRequest orderNewSingleRequest3 = new OASOrderNewSingleRequest();
        OASOrderNewSingleRequest orderNewSingleRequest4 = orderNewSingleRequest3;

        System.assert(orderNewSingleRequest1.equals(orderNewSingleRequest2));
        System.assert(orderNewSingleRequest2.equals(orderNewSingleRequest1));
        System.assert(orderNewSingleRequest1.equals(orderNewSingleRequest1));
        System.assert(orderNewSingleRequest3.equals(orderNewSingleRequest4));
        System.assert(orderNewSingleRequest4.equals(orderNewSingleRequest3));
        System.assert(orderNewSingleRequest3.equals(orderNewSingleRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderNewSingleRequest orderNewSingleRequest1 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest2 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest3 = new OASOrderNewSingleRequest();
        OASOrderNewSingleRequest orderNewSingleRequest4 = new OASOrderNewSingleRequest();

        System.assert(orderNewSingleRequest1.equals(orderNewSingleRequest2));
        System.assert(orderNewSingleRequest2.equals(orderNewSingleRequest1));
        System.assert(orderNewSingleRequest3.equals(orderNewSingleRequest4));
        System.assert(orderNewSingleRequest4.equals(orderNewSingleRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderNewSingleRequest orderNewSingleRequest1 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest2 = new OASOrderNewSingleRequest();

        System.assertEquals(false, orderNewSingleRequest1.equals('foo'));
        System.assertEquals(false, orderNewSingleRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderNewSingleRequest orderNewSingleRequest1 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest2 = new OASOrderNewSingleRequest();
        OASOrderNewSingleRequest orderNewSingleRequest3;

        System.assertEquals(false, orderNewSingleRequest1.equals(orderNewSingleRequest3));
        System.assertEquals(false, orderNewSingleRequest2.equals(orderNewSingleRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderNewSingleRequest orderNewSingleRequest1 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest2 = new OASOrderNewSingleRequest();

        System.assertEquals(orderNewSingleRequest1.hashCode(), orderNewSingleRequest1.hashCode());
        System.assertEquals(orderNewSingleRequest2.hashCode(), orderNewSingleRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderNewSingleRequest orderNewSingleRequest1 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest2 = OASOrderNewSingleRequest.getExample();
        OASOrderNewSingleRequest orderNewSingleRequest3 = new OASOrderNewSingleRequest();
        OASOrderNewSingleRequest orderNewSingleRequest4 = new OASOrderNewSingleRequest();

        System.assert(orderNewSingleRequest1.equals(orderNewSingleRequest2));
        System.assert(orderNewSingleRequest3.equals(orderNewSingleRequest4));
        System.assertEquals(orderNewSingleRequest1.hashCode(), orderNewSingleRequest2.hashCode());
        System.assertEquals(orderNewSingleRequest3.hashCode(), orderNewSingleRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderNewSingleRequest orderNewSingleRequest = new OASOrderNewSingleRequest();
        Map<String, String> x-property-mappings = orderNewSingleRequest.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('clientOrderId', x-property-mappings.get('client_order_id'));
        System.assertEquals('symbolIdExchange', x-property-mappings.get('symbol_id_exchange'));
        System.assertEquals('symbolIdCoinapi', x-property-mappings.get('symbol_id_coinapi'));
        System.assertEquals('amountOrder', x-property-mappings.get('amount_order'));
        System.assertEquals('orderType', x-property-mappings.get('order_type'));
        System.assertEquals('timeInForce', x-property-mappings.get('time_in_force'));
        System.assertEquals('expireTime', x-property-mappings.get('expire_time'));
        System.assertEquals('execInst', x-property-mappings.get('exec_inst'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderNewSingleRequest orderNewSingleRequest = new OASOrderNewSingleRequest();
        System.assertEquals(new List<ExecInstEnum>(), orderNewSingleRequest.execInst);
        System.assertEquals(null, orderNewSingleRequest.exchangeId);
        System.assertEquals(null, orderNewSingleRequest.clientOrderId);
        System.assertEquals(null, orderNewSingleRequest.symbolIdExchange);
        System.assertEquals(null, orderNewSingleRequest.symbolIdCoinapi);
        System.assertEquals(null, orderNewSingleRequest.amountOrder);
        System.assertEquals(null, orderNewSingleRequest.price);
        System.assertEquals(null, orderNewSingleRequest.side);
        System.assertEquals(null, orderNewSingleRequest.orderType);
        System.assertEquals(null, orderNewSingleRequest.timeInForce);
        System.assertEquals(null, orderNewSingleRequest.expireTime);
    }
}
