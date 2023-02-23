import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for OrderExecutionReportAllOf
void main() {
  //final instance = OrderExecutionReportAllOfBuilder();
  // TODO add properties to the builder and call build()

  group(OrderExecutionReportAllOf, () {
    // The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    // String clientOrderIdFormatExchange
    test('to test the property `clientOrderIdFormatExchange`', () async {
      // TODO
    });

    // Unique identifier of the order assigned by the exchange or executing system.
    // String exchangeOrderId
    test('to test the property `exchangeOrderId`', () async {
      // TODO
    });

    // Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    // num amountOpen
    test('to test the property `amountOpen`', () async {
      // TODO
    });

    // Total quantity filled.
    // num amountFilled
    test('to test the property `amountFilled`', () async {
      // TODO
    });

    // Calculated average price of all fills on this order.
    // num avgPx
    test('to test the property `avgPx`', () async {
      // TODO
    });

    // OrdStatus status
    test('to test the property `status`', () async {
      // TODO
    });

    // Timestamped history of order status changes.
    // BuiltList<BuiltList<String>> statusHistory
    test('to test the property `statusHistory`', () async {
      // TODO
    });

    // Error message.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // Relay fill information on working orders.
    // BuiltList<Fills> fills
    test('to test the property `fills`', () async {
      // TODO
    });

  });
}
