//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderExecutionReportAllOf {
  /// Returns a new [OrderExecutionReportAllOf] instance.
  OrderExecutionReportAllOf({
    @required this.clientOrderIdFormatExchange,
    this.exchangeOrderId,
    @required this.amountOpen,
    @required this.amountFilled,
    this.avgPx,
    @required this.status,
    this.statusHistory = const [],
    this.errorMessage,
    this.fills = const [],
  });

  /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
  String clientOrderIdFormatExchange;

  /// Unique identifier of the order assigned by the exchange or executing system.
  String exchangeOrderId;

  /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
  num amountOpen;

  /// Total quantity filled.
  num amountFilled;

  /// Calculated average price of all fills on this order.
  num avgPx;

  OrdStatus status;

  /// Timestamped history of order status changes.
  List<List<String>> statusHistory;

  /// Error message.
  String errorMessage;

  /// Relay fill information on working orders.
  List<Fills> fills;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderExecutionReportAllOf &&
     other.clientOrderIdFormatExchange == clientOrderIdFormatExchange &&
     other.exchangeOrderId == exchangeOrderId &&
     other.amountOpen == amountOpen &&
     other.amountFilled == amountFilled &&
     other.avgPx == avgPx &&
     other.status == status &&
     other.statusHistory == statusHistory &&
     other.errorMessage == errorMessage &&
     other.fills == fills;

  @override
  int get hashCode =>
    (clientOrderIdFormatExchange == null ? 0 : clientOrderIdFormatExchange.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId.hashCode) +
    (amountOpen == null ? 0 : amountOpen.hashCode) +
    (amountFilled == null ? 0 : amountFilled.hashCode) +
    (avgPx == null ? 0 : avgPx.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (statusHistory == null ? 0 : statusHistory.hashCode) +
    (errorMessage == null ? 0 : errorMessage.hashCode) +
    (fills == null ? 0 : fills.hashCode);

  @override
  String toString() => 'OrderExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (clientOrderIdFormatExchange != null) {
      json[r'client_order_id_format_exchange'] = clientOrderIdFormatExchange;
    }
    if (exchangeOrderId != null) {
      json[r'exchange_order_id'] = exchangeOrderId;
    }
    if (amountOpen != null) {
      json[r'amount_open'] = amountOpen;
    }
    if (amountFilled != null) {
      json[r'amount_filled'] = amountFilled;
    }
    if (avgPx != null) {
      json[r'avg_px'] = avgPx;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (statusHistory != null) {
      json[r'status_history'] = statusHistory;
    }
    if (errorMessage != null) {
      json[r'error_message'] = errorMessage;
    }
    if (fills != null) {
      json[r'fills'] = fills;
    }
    return json;
  }

  /// Returns a new [OrderExecutionReportAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderExecutionReportAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderExecutionReportAllOf(
        clientOrderIdFormatExchange: json[r'client_order_id_format_exchange'],
        exchangeOrderId: json[r'exchange_order_id'],
        amountOpen: json[r'amount_open'] == null ?
          null :
          json[r'amount_open'].toDouble(),
        amountFilled: json[r'amount_filled'] == null ?
          null :
          json[r'amount_filled'].toDouble(),
        avgPx: json[r'avg_px'] == null ?
          null :
          json[r'avg_px'].toDouble(),
        status: OrdStatus.fromJson(json[r'status']),
        statusHistory: json[r'status_history'] == null
          ? null
          : (json[r'status_history'] as List).map(
              (e) => e == null ? null : (e as List).cast<String>()
            ).toList(growable: false),
        errorMessage: json[r'error_message'],
        fills: Fills.listFromJson(json[r'fills']),
    );

  static List<OrderExecutionReportAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderExecutionReportAllOf>[]
      : json.map((v) => OrderExecutionReportAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrderExecutionReportAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderExecutionReportAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrderExecutionReportAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReportAllOf-objects as value to a dart map
  static Map<String, List<OrderExecutionReportAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderExecutionReportAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrderExecutionReportAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

