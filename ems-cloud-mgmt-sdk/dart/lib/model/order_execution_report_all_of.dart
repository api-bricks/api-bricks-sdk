//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderExecutionReportAllOf {
  /// Returns a new [OrderExecutionReportAllOf] instance.
  OrderExecutionReportAllOf({
    required this.clientOrderIdFormatExchange,
    this.exchangeOrderId,
    required this.amountOpen,
    required this.amountFilled,
    this.avgPx,
    required this.status,
    this.statusHistory = const [],
    this.errorMessage,
    this.fills = const [],
  });

  /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
  String clientOrderIdFormatExchange;

  /// Unique identifier of the order assigned by the exchange or executing system.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchangeOrderId;

  /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
  num amountOpen;

  /// Total quantity filled.
  num amountFilled;

  /// Calculated average price of all fills on this order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgPx;

  OrdStatus status;

  /// Timestamped history of order status changes.
  List<List<String>> statusHistory;

  /// Error message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

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
    // ignore: unnecessary_parenthesis
    (clientOrderIdFormatExchange.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId!.hashCode) +
    (amountOpen.hashCode) +
    (amountFilled.hashCode) +
    (avgPx == null ? 0 : avgPx!.hashCode) +
    (status.hashCode) +
    (statusHistory.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (fills.hashCode);

  @override
  String toString() => 'OrderExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'client_order_id_format_exchange'] = this.clientOrderIdFormatExchange;
    if (this.exchangeOrderId != null) {
      json[r'exchange_order_id'] = this.exchangeOrderId;
    } else {
      json[r'exchange_order_id'] = null;
    }
      json[r'amount_open'] = this.amountOpen;
      json[r'amount_filled'] = this.amountFilled;
    if (this.avgPx != null) {
      json[r'avg_px'] = this.avgPx;
    } else {
      json[r'avg_px'] = null;
    }
      json[r'status'] = this.status;
      json[r'status_history'] = this.statusHistory;
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
      json[r'fills'] = this.fills;
    return json;
  }

  /// Returns a new [OrderExecutionReportAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderExecutionReportAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderExecutionReportAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderExecutionReportAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderExecutionReportAllOf(
        clientOrderIdFormatExchange: mapValueOfType<String>(json, r'client_order_id_format_exchange')!,
        exchangeOrderId: mapValueOfType<String>(json, r'exchange_order_id'),
        amountOpen: json[r'amount_open'] == null
            ? null
            : num.parse(json[r'amount_open'].toString()),
        amountFilled: json[r'amount_filled'] == null
            ? null
            : num.parse(json[r'amount_filled'].toString()),
        avgPx: json[r'avg_px'] == null
            ? null
            : num.parse(json[r'avg_px'].toString()),
        status: OrdStatus.fromJson(json[r'status'])!,
        statusHistory: json[r'status_history'] is List
          ? (json[r'status_history'] as List).map(
              (e) => e == null ? null : (e as List).cast<String>()
            ).toList()
          : null,
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        fills: Fills.listFromJson(json[r'fills']) ?? const [],
      );
    }
    return null;
  }

  static List<OrderExecutionReportAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderExecutionReportAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderExecutionReportAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderExecutionReportAllOf> mapFromJson(dynamic json) {
    final map = <String, OrderExecutionReportAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderExecutionReportAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReportAllOf-objects as value to a dart map
  static Map<String, List<OrderExecutionReportAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderExecutionReportAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderExecutionReportAllOf.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'client_order_id_format_exchange',
    'amount_open',
    'amount_filled',
    'status',
  };
}

