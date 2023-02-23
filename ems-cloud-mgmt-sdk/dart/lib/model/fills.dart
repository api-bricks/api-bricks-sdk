//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? time;

  /// Execution price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// Executed quantity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Fills &&
     other.time == time &&
     other.price == price &&
     other.amount == amount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (time == null ? 0 : time!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (amount == null ? 0 : amount!.hashCode);

  @override
  String toString() => 'Fills[time=$time, price=$price, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    return json;
  }

  /// Returns a new [Fills] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Fills? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Fills[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Fills[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Fills(
        time: DateTime.fromJson(json[r'time']),
        price: json[r'price'] == null
            ? null
            : num.parse(json[r'price'].toString()),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
      );
    }
    return null;
  }

  static List<Fills>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Fills>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Fills.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Fills> mapFromJson(dynamic json) {
    final map = <String, Fills>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Fills.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Fills-objects as value to a dart map
  static Map<String, List<Fills>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Fills>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Fills.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

