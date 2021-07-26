//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Cause of rejection.
class RejectReason {
  /// Instantiate a new enum with the provided [value].
  const RejectReason._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OTHER = RejectReason._(r'OTHER');
  static const EXCHANGE_UNREACHABLE = RejectReason._(r'EXCHANGE_UNREACHABLE');
  static const EXCHANGE_RESPONSE_TIMEOUT = RejectReason._(r'EXCHANGE_RESPONSE_TIMEOUT');
  static const ORDER_ID_NOT_FOUND = RejectReason._(r'ORDER_ID_NOT_FOUND');
  static const INVALID_TYPE = RejectReason._(r'INVALID_TYPE');
  static const METHOD_NOT_SUPPORTED = RejectReason._(r'METHOD_NOT_SUPPORTED');
  static const JSON_ERROR = RejectReason._(r'JSON_ERROR');

  /// List of all possible values in this [enum][RejectReason].
  static const values = <RejectReason>[
    OTHER,
    EXCHANGE_UNREACHABLE,
    EXCHANGE_RESPONSE_TIMEOUT,
    ORDER_ID_NOT_FOUND,
    INVALID_TYPE,
    METHOD_NOT_SUPPORTED,
    JSON_ERROR,
  ];

  static RejectReason fromJson(dynamic value) =>
    RejectReasonTypeTransformer().decode(value);

  static List<RejectReason> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RejectReason>[]
      : json
          .map((value) => RejectReason.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RejectReason] to String,
/// and [decode] dynamic data back to [RejectReason].
class RejectReasonTypeTransformer {
  const RejectReasonTypeTransformer._();

  factory RejectReasonTypeTransformer() => _instance ??= RejectReasonTypeTransformer._();

  String encode(RejectReason data) => data.value;

  /// Decodes a [dynamic value][data] to a RejectReason.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RejectReason decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'OTHER': return RejectReason.OTHER;
      case r'EXCHANGE_UNREACHABLE': return RejectReason.EXCHANGE_UNREACHABLE;
      case r'EXCHANGE_RESPONSE_TIMEOUT': return RejectReason.EXCHANGE_RESPONSE_TIMEOUT;
      case r'ORDER_ID_NOT_FOUND': return RejectReason.ORDER_ID_NOT_FOUND;
      case r'INVALID_TYPE': return RejectReason.INVALID_TYPE;
      case r'METHOD_NOT_SUPPORTED': return RejectReason.METHOD_NOT_SUPPORTED;
      case r'JSON_ERROR': return RejectReason.JSON_ERROR;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RejectReasonTypeTransformer] instance.
  static RejectReasonTypeTransformer _instance;
}
