//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderExecutionReportAllOf
void main() {
  // final instance = OrderExecutionReportAllOf();

  group('test OrderExecutionReportAllOf', () {
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
    // List<List<String>> statusHistory (default value: const [])
    test('to test the property `statusHistory`', () async {
      // TODO
    });

    // Error message.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // Relay fill information on working orders.
    // List<Fills> fills (default value: const [])
    test('to test the property `fills`', () async {
      // TODO
    });


  });

}
