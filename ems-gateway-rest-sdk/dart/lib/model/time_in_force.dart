//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Order time in force options are documented in the separate section: <a href=\"#ems-order-params-tif\">EMS / Starter Guide / Order parameters / Time in force</a> 
class TimeInForce {
  /// Instantiate a new enum with the provided [value].
  const TimeInForce._(this.value);

  /// The underlying value of this enum member.
  final String value;

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

  static TimeInForce? fromJson(dynamic value) => TimeInForceTypeTransformer().decode(value);

  static List<TimeInForce>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeInForce>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeInForce.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TimeInForce] to String,
/// and [decode] dynamic data back to [TimeInForce].
class TimeInForceTypeTransformer {
  factory TimeInForceTypeTransformer() => _instance ??= const TimeInForceTypeTransformer._();

  const TimeInForceTypeTransformer._();

  String encode(TimeInForce data) => data.value;

  /// Decodes a [dynamic value][data] to a TimeInForce.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TimeInForce? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GOOD_TILL_CANCEL': return TimeInForce.GOOD_TILL_CANCEL;
        case r'GOOD_TILL_TIME_EXCHANGE': return TimeInForce.GOOD_TILL_TIME_EXCHANGE;
        case r'GOOD_TILL_TIME_OMS': return TimeInForce.GOOD_TILL_TIME_OMS;
        case r'FILL_OR_KILL': return TimeInForce.FILL_OR_KILL;
        case r'IMMEDIATE_OR_CANCEL': return TimeInForce.IMMEDIATE_OR_CANCEL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TimeInForceTypeTransformer] instance.
  static TimeInForceTypeTransformer? _instance;
}

