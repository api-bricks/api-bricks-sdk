//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCancelAllRequest {
  /// Returns a new [OrderCancelAllRequest] instance.
  OrderCancelAllRequest({
    required this.exchangeId,
  });

  /// Identifier of the exchange from which active orders should be canceled.
  String exchangeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCancelAllRequest &&
     other.exchangeId == exchangeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exchangeId.hashCode);

  @override
  String toString() => 'OrderCancelAllRequest[exchangeId=$exchangeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = this.exchangeId;
    return json;
  }

  /// Returns a new [OrderCancelAllRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCancelAllRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderCancelAllRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderCancelAllRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderCancelAllRequest(
        exchangeId: mapValueOfType<String>(json, r'exchange_id')!,
      );
    }
    return null;
  }

  static List<OrderCancelAllRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderCancelAllRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderCancelAllRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderCancelAllRequest> mapFromJson(dynamic json) {
    final map = <String, OrderCancelAllRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCancelAllRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderCancelAllRequest-objects as value to a dart map
  static Map<String, List<OrderCancelAllRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderCancelAllRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCancelAllRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'exchange_id',
  };
}

