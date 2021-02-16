//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Fills {
  /// Returns a new [Fills] instance.
  Fills({
    this.time,
    this.price,
    this.amount,
  });

  /// Execution time.
  DateTime time;

  /// Execution price.
  num price;

  /// Executed quantity.
  num amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Fills &&
     other.time == time &&
     other.price == price &&
     other.amount == amount;

  @override
  int get hashCode =>
    (time == null ? 0 : time.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (amount == null ? 0 : amount.hashCode);

  @override
  String toString() => 'Fills[time=$time, price=$price, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (time != null) {
      json[r'time'] = time;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
    return json;
  }

  /// Returns a new [Fills] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Fills fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Fills(
        time: DateTime.fromJson(json[r'time']),
        price: json[r'price'] == null ?
          null :
          json[r'price'].toDouble(),
        amount: json[r'amount'] == null ?
          null :
          json[r'amount'].toDouble(),
    );

  static List<Fills> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Fills>[]
      : json.map((v) => Fills.fromJson(v)).toList(growable: true == growable);

  static Map<String, Fills> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Fills>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Fills.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Fills-objects as value to a dart map
  static Map<String, List<Fills>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Fills>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Fills.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

