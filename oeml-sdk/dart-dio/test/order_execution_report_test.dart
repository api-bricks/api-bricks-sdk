import 'package:openapi/model/order_execution_report.dart';
import 'package:test/test.dart';

// tests for OrderExecutionReport
void main() {
  final instance = OrderExecutionReport();

  group(OrderExecutionReport, () {
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

    // Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
    // BuiltList<String> execInst
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
