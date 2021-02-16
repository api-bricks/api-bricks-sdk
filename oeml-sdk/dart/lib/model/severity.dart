//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Severity of the message.
class Severity {
  /// Instantiate a new enum with the provided [value].
  const Severity._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Severity && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const INFO = Severity._(r'INFO');
  static const WARNING = Severity._(r'WARNING');
  static const ERROR = Severity._(r'ERROR');

  /// List of all possible values in this [enum][Severity].
  static const values = <Severity>[
    INFO,
    WARNING,
    ERROR,
  ];

  static Severity fromJson(dynamic value) =>
    SeverityTypeTransformer().decode(value);

  static List<Severity> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Severity>[]
      : json
          .map((value) => Severity.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [Severity] to String,
/// and [decode] dynamic data back to [Severity].
class SeverityTypeTransformer {
  const SeverityTypeTransformer._();

  factory SeverityTypeTransformer() => _instance ??= SeverityTypeTransformer._();

  String encode(Severity data) => data.value;

  /// Decodes a [dynamic value][data] to a Severity.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Severity decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'INFO': return Severity.INFO;
      case r'WARNING': return Severity.WARNING;
      case r'ERROR': return Severity.ERROR;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SeverityTypeTransformer] instance.
  static SeverityTypeTransformer _instance;
}
