//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NumericsBigInteger {
  /// Returns a new [NumericsBigInteger] instance.
  NumericsBigInteger({
    this.isPowerOfTwo,
    this.isZero,
    this.isOne,
    this.isEven,
    this.sign,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPowerOfTwo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isZero;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOne;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEven;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sign;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NumericsBigInteger &&
     other.isPowerOfTwo == isPowerOfTwo &&
     other.isZero == isZero &&
     other.isOne == isOne &&
     other.isEven == isEven &&
     other.sign == sign;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isPowerOfTwo == null ? 0 : isPowerOfTwo!.hashCode) +
    (isZero == null ? 0 : isZero!.hashCode) +
    (isOne == null ? 0 : isOne!.hashCode) +
    (isEven == null ? 0 : isEven!.hashCode) +
    (sign == null ? 0 : sign!.hashCode);

  @override
  String toString() => 'NumericsBigInteger[isPowerOfTwo=$isPowerOfTwo, isZero=$isZero, isOne=$isOne, isEven=$isEven, sign=$sign]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isPowerOfTwo != null) {
      json[r'is_power_of_two'] = this.isPowerOfTwo;
    } else {
      json[r'is_power_of_two'] = null;
    }
    if (this.isZero != null) {
      json[r'is_zero'] = this.isZero;
    } else {
      json[r'is_zero'] = null;
    }
    if (this.isOne != null) {
      json[r'is_one'] = this.isOne;
    } else {
      json[r'is_one'] = null;
    }
    if (this.isEven != null) {
      json[r'is_even'] = this.isEven;
    } else {
      json[r'is_even'] = null;
    }
    if (this.sign != null) {
      json[r'sign'] = this.sign;
    } else {
      json[r'sign'] = null;
    }
    return json;
  }

  /// Returns a new [NumericsBigInteger] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NumericsBigInteger? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NumericsBigInteger[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NumericsBigInteger[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NumericsBigInteger(
        isPowerOfTwo: mapValueOfType<bool>(json, r'is_power_of_two'),
        isZero: mapValueOfType<bool>(json, r'is_zero'),
        isOne: mapValueOfType<bool>(json, r'is_one'),
        isEven: mapValueOfType<bool>(json, r'is_even'),
        sign: mapValueOfType<int>(json, r'sign'),
      );
    }
    return null;
  }

  static List<NumericsBigInteger> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NumericsBigInteger>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NumericsBigInteger.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NumericsBigInteger> mapFromJson(dynamic json) {
    final map = <String, NumericsBigInteger>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NumericsBigInteger.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NumericsBigInteger-objects as value to a dart map
  static Map<String, List<NumericsBigInteger>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NumericsBigInteger>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NumericsBigInteger.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

