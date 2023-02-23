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

// tests for OrderNewSingleRequest
void main() {
  // final instance = OrderNewSingleRequest();

  group('test OrderNewSingleRequest', () {
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


  });

}
