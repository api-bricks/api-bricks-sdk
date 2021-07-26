//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCancelAllRequest {
  /// Returns a new [OrderCancelAllRequest] instance.
  OrderCancelAllRequest({
    @required this.exchangeId,
  });

  /// Identifier of the exchange from which active orders should be canceled.
  String exchangeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCancelAllRequest &&
     other.exchangeId == exchangeId;

  @override
  int get hashCode =>
    (exchangeId == null ? 0 : exchangeId.hashCode);

  @override
  String toString() => 'OrderCancelAllRequest[exchangeId=$exchangeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = exchangeId;
    return json;
  }

  /// Returns a new [OrderCancelAllRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderCancelAllRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderCancelAllRequest(
        exchangeId: json[r'exchange_id'],
    );

  static List<OrderCancelAllRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderCancelAllRequest>[]
      : json.map((dynamic value) => OrderCancelAllRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, OrderCancelAllRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderCancelAllRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = OrderCancelAllRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCancelAllRequest-objects as value to a dart map
  static Map<String, List<OrderCancelAllRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCancelAllRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = OrderCancelAllRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

