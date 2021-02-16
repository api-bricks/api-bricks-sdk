//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Order types are documented in the separate section: <a href=\"#oeml-order-params-type\">OEML / Starter Guide / Order parameters / Order type</a> 
class OrdType {
  /// Instantiate a new enum with the provided [value].
  const OrdType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is OrdType && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const LIMIT = OrdType._(r'LIMIT');

  /// List of all possible values in this [enum][OrdType].
  static const values = <OrdType>[
    LIMIT,
  ];

  static OrdType fromJson(dynamic value) =>
    OrdTypeTypeTransformer().decode(value);

  static List<OrdType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrdType>[]
      : json
          .map((value) => OrdType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrdType] to String,
/// and [decode] dynamic data back to [OrdType].
class OrdTypeTypeTransformer {
  const OrdTypeTypeTransformer._();

  factory OrdTypeTypeTransformer() => _instance ??= OrdTypeTypeTransformer._();

  String encode(OrdType data) => data.value;

  /// Decodes a [dynamic value][data] to a OrdType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrdType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'LIMIT': return OrdType.LIMIT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrdTypeTypeTransformer] instance.
  static OrdTypeTypeTransformer _instance;
}
