//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Side of order. 
class OrdSide {
  /// Instantiate a new enum with the provided [value].
  const OrdSide._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is OrdSide && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const BUY = OrdSide._(r'BUY');
  static const SELL = OrdSide._(r'SELL');

  /// List of all possible values in this [enum][OrdSide].
  static const values = <OrdSide>[
    BUY,
    SELL,
  ];

  static OrdSide fromJson(dynamic value) =>
    OrdSideTypeTransformer().decode(value);

  static List<OrdSide> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrdSide>[]
      : json
          .map((value) => OrdSide.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrdSide] to String,
/// and [decode] dynamic data back to [OrdSide].
class OrdSideTypeTransformer {
  const OrdSideTypeTransformer._();

  factory OrdSideTypeTransformer() => _instance ??= OrdSideTypeTransformer._();

  String encode(OrdSide data) => data.value;

  /// Decodes a [dynamic value][data] to a OrdSide.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrdSide decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BUY': return OrdSide.BUY;
      case r'SELL': return OrdSide.SELL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrdSideTypeTransformer] instance.
  static OrdSideTypeTransformer _instance;
}
