import 'package:jaguar_serializer/jaguar_serializer.dart';



class RejectReason {
  /// The underlying value of this enum member.
  final String value;

  const RejectReason._internal(this.value);

  /// Cause of rejection.
  static const RejectReason OTHER = const RejectReason._internal('OTHER');
  /// Cause of rejection.
  static const RejectReason EXCHANGE_UNREACHABLE = const RejectReason._internal('EXCHANGE_UNREACHABLE');
  /// Cause of rejection.
  static const RejectReason EXCHANGE_RESPONSE_TIMEOUT = const RejectReason._internal('EXCHANGE_RESPONSE_TIMEOUT');
  /// Cause of rejection.
  static const RejectReason ORDER_ID_NOT_FOUND = const RejectReason._internal('ORDER_ID_NOT_FOUND');
  /// Cause of rejection.
  static const RejectReason INVALID_TYPE = const RejectReason._internal('INVALID_TYPE');
  /// Cause of rejection.
  static const RejectReason METHOD_NOT_SUPPORTED = const RejectReason._internal('METHOD_NOT_SUPPORTED');
  /// Cause of rejection.
  static const RejectReason JSON_ERROR = const RejectReason._internal('JSON_ERROR');
}

class RejectReasonFieldProcessor implements FieldProcessor<RejectReason, String> {
    const RejectReasonFieldProcessor();

    RejectReason deserialize(String data) {
        switch (data) {
            case 'OTHER': return RejectReason.OTHER;
            case 'EXCHANGE_UNREACHABLE': return RejectReason.EXCHANGE_UNREACHABLE;
            case 'EXCHANGE_RESPONSE_TIMEOUT': return RejectReason.EXCHANGE_RESPONSE_TIMEOUT;
            case 'ORDER_ID_NOT_FOUND': return RejectReason.ORDER_ID_NOT_FOUND;
            case 'INVALID_TYPE': return RejectReason.INVALID_TYPE;
            case 'METHOD_NOT_SUPPORTED': return RejectReason.METHOD_NOT_SUPPORTED;
            case 'JSON_ERROR': return RejectReason.JSON_ERROR;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RejectReason item) {
        return item.value;
    }
}

