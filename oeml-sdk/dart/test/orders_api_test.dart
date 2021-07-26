//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for OrdersApi
void main() {
  final instance = OrdersApi();

  group('tests for OrdersApi', () {
    // Cancel all orders request
    //
    // This request cancels all open orders on single specified exchange.
    //
    //Future<MessageReject> v1OrdersCancelAllPost(OrderCancelAllRequest orderCancelAllRequest) async
    test('test v1OrdersCancelAllPost', () async {
      // TODO
    });

    // Cancel order request
    //
    // Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
    //
    //Future<OrderExecutionReport> v1OrdersCancelPost(OrderCancelSingleRequest orderCancelSingleRequest) async
    test('test v1OrdersCancelPost', () async {
      // TODO
    });

    // Get open orders
    //
    // Get last execution reports for open orders across all or single exchange.
    //
    //Future<List<OrderExecutionReport>> v1OrdersGet({ String exchangeId }) async
    test('test v1OrdersGet', () async {
      // TODO
    });

    // Send new order
    //
    // This request creating new order for the specific exchange.
    //
    //Future<OrderExecutionReport> v1OrdersPost(OrderNewSingleRequest orderNewSingleRequest) async
    test('test v1OrdersPost', () async {
      // TODO
    });

    // Get order execution report
    //
    // Get the last order execution report for the specified order. The requested order does not need to be active or opened.
    //
    //Future<OrderExecutionReport> v1OrdersStatusClientOrderIdGet(String clientOrderId) async
    test('test v1OrdersStatusClientOrderIdGet', () async {
      // TODO
    });

  });
}
