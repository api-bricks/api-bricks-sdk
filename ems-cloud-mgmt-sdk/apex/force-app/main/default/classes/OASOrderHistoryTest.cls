@isTest
private class OASOrderHistoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderHistory orderHistory1 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory2 = orderHistory1;
        OASOrderHistory orderHistory3 = new OASOrderHistory();
        OASOrderHistory orderHistory4 = orderHistory3;

        System.assert(orderHistory1.equals(orderHistory2));
        System.assert(orderHistory2.equals(orderHistory1));
        System.assert(orderHistory1.equals(orderHistory1));
        System.assert(orderHistory3.equals(orderHistory4));
        System.assert(orderHistory4.equals(orderHistory3));
        System.assert(orderHistory3.equals(orderHistory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderHistory orderHistory1 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory2 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory3 = new OASOrderHistory();
        OASOrderHistory orderHistory4 = new OASOrderHistory();

        System.assert(orderHistory1.equals(orderHistory2));
        System.assert(orderHistory2.equals(orderHistory1));
        System.assert(orderHistory3.equals(orderHistory4));
        System.assert(orderHistory4.equals(orderHistory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderHistory orderHistory1 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory2 = new OASOrderHistory();

        System.assertEquals(false, orderHistory1.equals('foo'));
        System.assertEquals(false, orderHistory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderHistory orderHistory1 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory2 = new OASOrderHistory();
        OASOrderHistory orderHistory3;

        System.assertEquals(false, orderHistory1.equals(orderHistory3));
        System.assertEquals(false, orderHistory2.equals(orderHistory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderHistory orderHistory1 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory2 = new OASOrderHistory();

        System.assertEquals(orderHistory1.hashCode(), orderHistory1.hashCode());
        System.assertEquals(orderHistory2.hashCode(), orderHistory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderHistory orderHistory1 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory2 = OASOrderHistory.getExample();
        OASOrderHistory orderHistory3 = new OASOrderHistory();
        OASOrderHistory orderHistory4 = new OASOrderHistory();

        System.assert(orderHistory1.equals(orderHistory2));
        System.assert(orderHistory3.equals(orderHistory4));
        System.assertEquals(orderHistory1.hashCode(), orderHistory2.hashCode());
        System.assertEquals(orderHistory3.hashCode(), orderHistory4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderHistory orderHistory = new OASOrderHistory();
        System.assertEquals(new List<String>(), orderHistory.execInst);
        System.assertEquals(new List<String>(), orderHistory.statusHistoryStatus);
        System.assertEquals(new List<Date>(), orderHistory.statusHistoryTime);
        System.assertEquals(new List<Date>(), orderHistory.fillsTime);
        System.assertEquals(new List<Double>(), orderHistory.fillsPrice);
        System.assertEquals(new List<Double>(), orderHistory.fillsAmount);
        System.assertEquals(null, orderHistory.apikey);
        System.assertEquals(null, orderHistory.exchangeId);
        System.assertEquals(null, orderHistory.clientOrderId);
        System.assertEquals(null, orderHistory.symbolIdExchange);
        System.assertEquals(null, orderHistory.symbolIdCoinapi);
        System.assertEquals(null, orderHistory.amountOrder);
        System.assertEquals(null, orderHistory.price);
        System.assertEquals(null, orderHistory.side);
        System.assertEquals(null, orderHistory.orderType);
        System.assertEquals(null, orderHistory.timeInForce);
        System.assertEquals(null, orderHistory.expireTime);
        System.assertEquals(null, orderHistory.clientOrderIdFormatExchange);
        System.assertEquals(null, orderHistory.exchangeOrderId);
        System.assertEquals(null, orderHistory.amountOpen);
        System.assertEquals(null, orderHistory.amountFilled);
        System.assertEquals(null, orderHistory.avgPx);
        System.assertEquals(null, orderHistory.status);
        System.assertEquals(null, orderHistory.errorMessageResult);
        System.assertEquals(null, orderHistory.errorMessageReason);
        System.assertEquals(null, orderHistory.errorMessageMessage);
        System.assertEquals(null, orderHistory.createdTime);
    }
}
