//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
class TimeInForce {
  /// Instantiate a new enum with the provided [value].
  const TimeInForce._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TimeInForce && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const GOOD_TILL_CANCEL = TimeInForce._(r'GOOD_TILL_CANCEL');
  static const GOOD_TILL_TIME_EXCHANGE = TimeInForce._(r'GOOD_TILL_TIME_EXCHANGE');
  static const GOOD_TILL_TIME_OMS = TimeInForce._(r'GOOD_TILL_TIME_OMS');
  static const FILL_OR_KILL = TimeInForce._(r'FILL_OR_KILL');
  static const IMMEDIATE_OR_CANCEL = TimeInForce._(r'IMMEDIATE_OR_CANCEL');

  /// List of all possible values in this [enum][TimeInForce].
  static const values = <TimeInForce>[
    GOOD_TILL_CANCEL,
    GOOD_TILL_TIME_EXCHANGE,
    GOOD_TILL_TIME_OMS,
    FILL_OR_KILL,
    IMMEDIATE_OR_CANCEL,
  ];

  static TimeInForce fromJson(dynamic value) =>
    TimeInForceTypeTransformer().decode(value);

  static List<TimeInForce> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeInForce>[]
      : json
          .map((value) => TimeInForce.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TimeInForce] to String,
/// and [decode] dynamic data back to [TimeInForce].
class TimeInForceTypeTransformer {
  const TimeInForceTypeTransformer._();

  factory TimeInForceTypeTransformer() => _instance ??= TimeInForceTypeTransformer._();

  String encode(TimeInForce data) => data.value;

  /// Decodes a [dynamic value][data] to a TimeInForce.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TimeInForce decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'GOOD_TILL_CANCEL': return TimeInForce.GOOD_TILL_CANCEL;
      case r'GOOD_TILL_TIME_EXCHANGE': return TimeInForce.GOOD_TILL_TIME_EXCHANGE;
      case r'GOOD_TILL_TIME_OMS': return TimeInForce.GOOD_TILL_TIME_OMS;
      case r'FILL_OR_KILL': return TimeInForce.FILL_OR_KILL;
      case r'IMMEDIATE_OR_CANCEL': return TimeInForce.IMMEDIATE_OR_CANCEL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TimeInForceTypeTransformer] instance.
  static TimeInForceTypeTransformer _instance;
}
