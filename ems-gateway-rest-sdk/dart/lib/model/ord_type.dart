//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Order types are documented in the separate section: <a href=\"#ems-order-params-type\">EMS / Starter Guide / Order parameters / Order type</a> 
class OrdType {
  /// Instantiate a new enum with the provided [value].
  const OrdType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LIMIT = OrdType._(r'LIMIT');

  /// List of all possible values in this [enum][OrdType].
  static const values = <OrdType>[
    LIMIT,
  ];

  static OrdType? fromJson(dynamic value) => OrdTypeTypeTransformer().decode(value);

  static List<OrdType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrdType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrdType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrdType] to String,
/// and [decode] dynamic data back to [OrdType].
class OrdTypeTypeTransformer {
  factory OrdTypeTypeTransformer() => _instance ??= const OrdTypeTypeTransformer._();

  const OrdTypeTypeTransformer._();

  String encode(OrdType data) => data.value;

  /// Decodes a [dynamic value][data] to a OrdType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrdType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LIMIT': return OrdType.LIMIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrdTypeTypeTransformer] instance.
  static OrdTypeTypeTransformer? _instance;
}

