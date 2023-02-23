//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCancelSingleRequest {
  /// Returns a new [OrderCancelSingleRequest] instance.
  OrderCancelSingleRequest({
    required this.exchangeId,
    this.exchangeOrderId,
    this.clientOrderId,
  });

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  /// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchangeOrderId;

  /// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientOrderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCancelSingleRequest &&
     other.exchangeId == exchangeId &&
     other.exchangeOrderId == exchangeOrderId &&
     other.clientOrderId == clientOrderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exchangeId.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId!.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId!.hashCode);

  @override
  String toString() => 'OrderCancelSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = this.exchangeId;
    if (this.exchangeOrderId != null) {
      json[r'exchange_order_id'] = this.exchangeOrderId;
    } else {
      json[r'exchange_order_id'] = null;
    }
    if (this.clientOrderId != null) {
      json[r'client_order_id'] = this.clientOrderId;
    } else {
      json[r'client_order_id'] = null;
    }
    return json;
  }

  /// Returns a new [OrderCancelSingleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCancelSingleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderCancelSingleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderCancelSingleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderCancelSingleRequest(
        exchangeId: mapValueOfType<String>(json, r'exchange_id')!,
        exchangeOrderId: mapValueOfType<String>(json, r'exchange_order_id'),
        clientOrderId: mapValueOfType<String>(json, r'client_order_id'),
      );
    }
    return null;
  }

  static List<OrderCancelSingleRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderCancelSingleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderCancelSingleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderCancelSingleRequest> mapFromJson(dynamic json) {
    final map = <String, OrderCancelSingleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCancelSingleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderCancelSingleRequest-objects as value to a dart map
  static Map<String, List<OrderCancelSingleRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderCancelSingleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCancelSingleRequest.listFromJson(entry.value, growable: growable,);
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

