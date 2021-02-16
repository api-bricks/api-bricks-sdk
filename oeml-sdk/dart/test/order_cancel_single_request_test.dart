import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderCancelSingleRequest
void main() {
  final instance = OrderCancelSingleRequest();

  group('test OrderCancelSingleRequest', () {
    // Exchange identifier used to identify the routing destination.
    // String exchangeId
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    // String exchangeOrderId
    test('to test the property `exchangeOrderId`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    // String clientOrderId
    test('to test the property `clientOrderId`', () async {
      // TODO
    });


  });

}
