//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCancelSingleRequest {
  /// Returns a new [OrderCancelSingleRequest] instance.
  OrderCancelSingleRequest({
    @required this.exchangeId,
    this.exchangeOrderId,
    this.clientOrderId,
  });

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  /// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  String exchangeOrderId;

  /// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  String clientOrderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCancelSingleRequest &&
     other.exchangeId == exchangeId &&
     other.exchangeOrderId == exchangeOrderId &&
     other.clientOrderId == clientOrderId;

  @override
  int get hashCode =>
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId.hashCode);

  @override
  String toString() => 'OrderCancelSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (exchangeOrderId != null) {
      json[r'exchange_order_id'] = exchangeOrderId;
    }
    if (clientOrderId != null) {
      json[r'client_order_id'] = clientOrderId;
    }
    return json;
  }

  /// Returns a new [OrderCancelSingleRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderCancelSingleRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderCancelSingleRequest(
        exchangeId: json[r'exchange_id'],
        exchangeOrderId: json[r'exchange_order_id'],
        clientOrderId: json[r'client_order_id'],
    );

  static List<OrderCancelSingleRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderCancelSingleRequest>[]
      : json.map((v) => OrderCancelSingleRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrderCancelSingleRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderCancelSingleRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrderCancelSingleRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrderCancelSingleRequest-objects as value to a dart map
  static Map<String, List<OrderCancelSingleRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCancelSingleRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrderCancelSingleRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

