@isTest
private class OASOrderExecutionReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderExecutionReport orderExecutionReport1 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport2 = orderExecutionReport1;
        OASOrderExecutionReport orderExecutionReport3 = new OASOrderExecutionReport();
        OASOrderExecutionReport orderExecutionReport4 = orderExecutionReport3;

        System.assert(orderExecutionReport1.equals(orderExecutionReport2));
        System.assert(orderExecutionReport2.equals(orderExecutionReport1));
        System.assert(orderExecutionReport1.equals(orderExecutionReport1));
        System.assert(orderExecutionReport3.equals(orderExecutionReport4));
        System.assert(orderExecutionReport4.equals(orderExecutionReport3));
        System.assert(orderExecutionReport3.equals(orderExecutionReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderExecutionReport orderExecutionReport1 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport2 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport3 = new OASOrderExecutionReport();
        OASOrderExecutionReport orderExecutionReport4 = new OASOrderExecutionReport();

        System.assert(orderExecutionReport1.equals(orderExecutionReport2));
        System.assert(orderExecutionReport2.equals(orderExecutionReport1));
        System.assert(orderExecutionReport3.equals(orderExecutionReport4));
        System.assert(orderExecutionReport4.equals(orderExecutionReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderExecutionReport orderExecutionReport1 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport2 = new OASOrderExecutionReport();

        System.assertEquals(false, orderExecutionReport1.equals('foo'));
        System.assertEquals(false, orderExecutionReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderExecutionReport orderExecutionReport1 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport2 = new OASOrderExecutionReport();
        OASOrderExecutionReport orderExecutionReport3;

        System.assertEquals(false, orderExecutionReport1.equals(orderExecutionReport3));
        System.assertEquals(false, orderExecutionReport2.equals(orderExecutionReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderExecutionReport orderExecutionReport1 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport2 = new OASOrderExecutionReport();

        System.assertEquals(orderExecutionReport1.hashCode(), orderExecutionReport1.hashCode());
        System.assertEquals(orderExecutionReport2.hashCode(), orderExecutionReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderExecutionReport orderExecutionReport1 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport2 = OASOrderExecutionReport.getExample();
        OASOrderExecutionReport orderExecutionReport3 = new OASOrderExecutionReport();
        OASOrderExecutionReport orderExecutionReport4 = new OASOrderExecutionReport();

        System.assert(orderExecutionReport1.equals(orderExecutionReport2));
        System.assert(orderExecutionReport3.equals(orderExecutionReport4));
        System.assertEquals(orderExecutionReport1.hashCode(), orderExecutionReport2.hashCode());
        System.assertEquals(orderExecutionReport3.hashCode(), orderExecutionReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderExecutionReport orderExecutionReport = new OASOrderExecutionReport();
        Map<String, String> x-property-mappings = orderExecutionReport.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('clientOrderId', x-property-mappings.get('client_order_id'));
        System.assertEquals('symbolIdExchange', x-property-mappings.get('symbol_id_exchange'));
        System.assertEquals('symbolIdCoinapi', x-property-mappings.get('symbol_id_coinapi'));
        System.assertEquals('amountOrder', x-property-mappings.get('amount_order'));
        System.assertEquals('orderType', x-property-mappings.get('order_type'));
        System.assertEquals('timeInForce', x-property-mappings.get('time_in_force'));
        System.assertEquals('expireTime', x-property-mappings.get('expire_time'));
        System.assertEquals('execInst', x-property-mappings.get('exec_inst'));
        System.assertEquals('clientOrderIdFormatExchange', x-property-mappings.get('client_order_id_format_exchange'));
        System.assertEquals('exchangeOrderId', x-property-mappings.get('exchange_order_id'));
        System.assertEquals('amountOpen', x-property-mappings.get('amount_open'));
        System.assertEquals('amountFilled', x-property-mappings.get('amount_filled'));
        System.assertEquals('avgPx', x-property-mappings.get('avg_px'));
        System.assertEquals('statusHistory', x-property-mappings.get('status_history'));
        System.assertEquals('errorMessage', x-property-mappings.get('error_message'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderExecutionReport orderExecutionReport = new OASOrderExecutionReport();
        System.assertEquals(new List<ExecInstEnum>(), orderExecutionReport.execInst);
        System.assertEquals(new List<List<String>>(), orderExecutionReport.statusHistory);
        System.assertEquals(new List<OASFills>(), orderExecutionReport.fills);
        System.assertEquals(null, orderExecutionReport.exchangeId);
        System.assertEquals(null, orderExecutionReport.clientOrderId);
        System.assertEquals(null, orderExecutionReport.symbolIdExchange);
        System.assertEquals(null, orderExecutionReport.symbolIdCoinapi);
        System.assertEquals(null, orderExecutionReport.amountOrder);
        System.assertEquals(null, orderExecutionReport.price);
        System.assertEquals(null, orderExecutionReport.side);
        System.assertEquals(null, orderExecutionReport.orderType);
        System.assertEquals(null, orderExecutionReport.timeInForce);
        System.assertEquals(null, orderExecutionReport.expireTime);
        System.assertEquals(null, orderExecutionReport.clientOrderIdFormatExchange);
        System.assertEquals(null, orderExecutionReport.exchangeOrderId);
        System.assertEquals(null, orderExecutionReport.amountOpen);
        System.assertEquals(null, orderExecutionReport.amountFilled);
        System.assertEquals(null, orderExecutionReport.avgPx);
        System.assertEquals(null, orderExecutionReport.status);
        System.assertEquals(null, orderExecutionReport.errorMessage);
    }
}
