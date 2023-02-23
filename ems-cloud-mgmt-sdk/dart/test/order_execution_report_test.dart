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

// tests for OrderExecutionReport
void main() {
  // final instance = OrderExecutionReport();

  group('test OrderExecutionReport', () {
    // Exchange identifier used to identify the routing destination.
    // String exchangeId
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the client.
    // String clientOrderId
    test('to test the property `clientOrderId`', () async {
      // TODO
    });

    // Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    // String symbolIdExchange
    test('to test the property `symbolIdExchange`', () async {
      // TODO
    });

    // CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    // String symbolIdCoinapi
    test('to test the property `symbolIdCoinapi`', () async {
      // TODO
    });

    // Order quantity.
    // num amountOrder
    test('to test the property `amountOrder`', () async {
      // TODO
    });

    // Order price.
    // num price
    test('to test the property `price`', () async {
      // TODO
    });

    // OrdSide side
    test('to test the property `side`', () async {
      // TODO
    });

    // OrdType orderType
    test('to test the property `orderType`', () async {
      // TODO
    });

    // TimeInForce timeInForce
    test('to test the property `timeInForce`', () async {
      // TODO
    });

    // Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    // DateTime expireTime
    test('to test the property `expireTime`', () async {
      // TODO
    });

    // Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
    // List<String> execInst (default value: const [])
    test('to test the property `execInst`', () async {
      // TODO
    });

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
