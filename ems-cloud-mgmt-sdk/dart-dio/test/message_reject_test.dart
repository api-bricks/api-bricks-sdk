import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for MessageReject
void main() {
  final instance = MessageRejectBuilder();
  // TODO add properties to the builder and call build()

  group(MessageReject, () {
    // Message type, constant.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // RejectReason rejectReason
    test('to test the property `rejectReason`', () async {
      // TODO
    });

    // If the message related to exchange, then the identifier of the exchange will be provided.
    // String exchangeId
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // Message text.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Value of rejected request, if available.
    // String rejectedMessage
    test('to test the property `rejectedMessage`', () async {
      // TODO
    });

  });
}
