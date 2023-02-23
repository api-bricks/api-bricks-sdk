//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Order statuses and the lifecycle are documented in the separate section: <a href=\"#ems-order-lifecycle\">EMS / Starter Guide / Order Lifecycle</a> 
class OrdStatus {
  /// Instantiate a new enum with the provided [value].
  const OrdStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVED = OrdStatus._(r'RECEIVED');
  static const ROUTING = OrdStatus._(r'ROUTING');
  static const ROUTED = OrdStatus._(r'ROUTED');
  static const NEW = OrdStatus._(r'NEW');
  static const PENDING_CANCEL = OrdStatus._(r'PENDING_CANCEL');
  static const PARTIALLY_FILLED = OrdStatus._(r'PARTIALLY_FILLED');
  static const FILLED = OrdStatus._(r'FILLED');
  static const CANCELED = OrdStatus._(r'CANCELED');
  static const REJECTED = OrdStatus._(r'REJECTED');

  /// List of all possible values in this [enum][OrdStatus].
  static const values = <OrdStatus>[
    RECEIVED,
    ROUTING,
    ROUTED,
    NEW,
    PENDING_CANCEL,
    PARTIALLY_FILLED,
    FILLED,
    CANCELED,
    REJECTED,
  ];

  static OrdStatus? fromJson(dynamic value) => OrdStatusTypeTransformer().decode(value);

  static List<OrdStatus>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrdStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrdStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrdStatus] to String,
/// and [decode] dynamic data back to [OrdStatus].
class OrdStatusTypeTransformer {
  factory OrdStatusTypeTransformer() => _instance ??= const OrdStatusTypeTransformer._();

  const OrdStatusTypeTransformer._();

  String encode(OrdStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a OrdStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrdStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVED': return OrdStatus.RECEIVED;
        case r'ROUTING': return OrdStatus.ROUTING;
        case r'ROUTED': return OrdStatus.ROUTED;
        case r'NEW': return OrdStatus.NEW;
        case r'PENDING_CANCEL': return OrdStatus.PENDING_CANCEL;
        case r'PARTIALLY_FILLED': return OrdStatus.PARTIALLY_FILLED;
        case r'FILLED': return OrdStatus.FILLED;
        case r'CANCELED': return OrdStatus.CANCELED;
        case r'REJECTED': return OrdStatus.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrdStatusTypeTransformer] instance.
  static OrdStatusTypeTransformer? _instance;
}

