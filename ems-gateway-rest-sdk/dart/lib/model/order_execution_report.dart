//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderExecutionReport {
  /// Returns a new [OrderExecutionReport] instance.
  OrderExecutionReport({
    required this.exchangeId,
    required this.clientOrderId,
    this.symbolIdExchange,
    this.symbolIdCoinapi,
    required this.amountOrder,
    required this.price,
    required this.side,
    required this.orderType,
    required this.timeInForce,
    this.expireTime,
    this.execInst = const [],
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

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  /// The unique identifier of the order assigned by the client.
  String clientOrderId;

  /// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbolIdExchange;

  /// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbolIdCoinapi;

  /// Order quantity.
  num amountOrder;

  /// Order price.
  num price;

  OrdSide side;

  OrdType orderType;

  TimeInForce timeInForce;

  /// Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expireTime;

  /// Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
  List<ExecInstEnum> execInst;

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
  bool operator ==(Object other) => identical(this, other) || other is OrderExecutionReport &&
     other.exchangeId == exchangeId &&
     other.clientOrderId == clientOrderId &&
     other.symbolIdExchange == symbolIdExchange &&
     other.symbolIdCoinapi == symbolIdCoinapi &&
     other.amountOrder == amountOrder &&
     other.price == price &&
     other.side == side &&
     other.orderType == orderType &&
     other.timeInForce == timeInForce &&
     other.expireTime == expireTime &&
     other.execInst == execInst &&
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
    (exchangeId.hashCode) +
    (clientOrderId.hashCode) +
    (symbolIdExchange == null ? 0 : symbolIdExchange!.hashCode) +
    (symbolIdCoinapi == null ? 0 : symbolIdCoinapi!.hashCode) +
    (amountOrder.hashCode) +
    (price.hashCode) +
    (side.hashCode) +
    (orderType.hashCode) +
    (timeInForce.hashCode) +
    (expireTime == null ? 0 : expireTime!.hashCode) +
    (execInst.hashCode) +
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
  String toString() => 'OrderExecutionReport[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = this.exchangeId;
      json[r'client_order_id'] = this.clientOrderId;
    if (this.symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = this.symbolIdExchange;
    } else {
      json[r'symbol_id_exchange'] = null;
    }
    if (this.symbolIdCoinapi != null) {
      json[r'symbol_id_coinapi'] = this.symbolIdCoinapi;
    } else {
      json[r'symbol_id_coinapi'] = null;
    }
      json[r'amount_order'] = this.amountOrder;
      json[r'price'] = this.price;
      json[r'side'] = this.side;
      json[r'order_type'] = this.orderType;
      json[r'time_in_force'] = this.timeInForce;
    if (this.expireTime != null) {
      json[r'expire_time'] = this.expireTime;
    } else {
      json[r'expire_time'] = null;
    }
      json[r'exec_inst'] = this.execInst;
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

  /// Returns a new [OrderExecutionReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderExecutionReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderExecutionReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderExecutionReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderExecutionReport(
        exchangeId: mapValueOfType<String>(json, r'exchange_id')!,
        clientOrderId: mapValueOfType<String>(json, r'client_order_id')!,
        symbolIdExchange: mapValueOfType<String>(json, r'symbol_id_exchange'),
        symbolIdCoinapi: mapValueOfType<String>(json, r'symbol_id_coinapi'),
        amountOrder: json[r'amount_order'] == null
            ? null
            : num.parse(json[r'amount_order'].toString()),
        price: json[r'price'] == null
            ? null
            : num.parse(json[r'price'].toString()),
        side: OrdSide.fromJson(json[r'side'])!,
        orderType: OrdType.fromJson(json[r'order_type'])!,
        timeInForce: TimeInForce.fromJson(json[r'time_in_force'])!,
        expireTime: DateTime.fromJson(json[r'expire_time']),
        execInst: OrderExecutionReportExecInstEnum.listFromJson(json[r'exec_inst']) ?? const [],
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

  static List<OrderExecutionReport>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderExecutionReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderExecutionReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderExecutionReport> mapFromJson(dynamic json) {
    final map = <String, OrderExecutionReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderExecutionReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReport-objects as value to a dart map
  static Map<String, List<OrderExecutionReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderExecutionReport>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderExecutionReport.listFromJson(entry.value, growable: growable,);
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
    'client_order_id',
    'amount_order',
    'price',
    'side',
    'order_type',
    'time_in_force',
    'client_order_id_format_exchange',
    'amount_open',
    'amount_filled',
    'status',
  };
}


class OrderExecutionReportExecInstEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderExecutionReportExecInstEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MAKER_OR_CANCEL = OrderExecutionReportExecInstEnum._(r'MAKER_OR_CANCEL');
  static const AUCTION_ONLY = OrderExecutionReportExecInstEnum._(r'AUCTION_ONLY');
  static const INDICATION_OF_INTEREST = OrderExecutionReportExecInstEnum._(r'INDICATION_OF_INTEREST');

  /// List of all possible values in this [enum][OrderExecutionReportExecInstEnum].
  static const values = <OrderExecutionReportExecInstEnum>[
    MAKER_OR_CANCEL,
    AUCTION_ONLY,
    INDICATION_OF_INTEREST,
  ];

  static OrderExecutionReportExecInstEnum? fromJson(dynamic value) => OrderExecutionReportExecInstEnumTypeTransformer().decode(value);

  static List<OrderExecutionReportExecInstEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderExecutionReportExecInstEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderExecutionReportExecInstEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderExecutionReportExecInstEnum] to String,
/// and [decode] dynamic data back to [OrderExecutionReportExecInstEnum].
class OrderExecutionReportExecInstEnumTypeTransformer {
  factory OrderExecutionReportExecInstEnumTypeTransformer() => _instance ??= const OrderExecutionReportExecInstEnumTypeTransformer._();

  const OrderExecutionReportExecInstEnumTypeTransformer._();

  String encode(OrderExecutionReportExecInstEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderExecutionReportExecInstEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderExecutionReportExecInstEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MAKER_OR_CANCEL': return OrderExecutionReportExecInstEnum.MAKER_OR_CANCEL;
        case r'AUCTION_ONLY': return OrderExecutionReportExecInstEnum.AUCTION_ONLY;
        case r'INDICATION_OF_INTEREST': return OrderExecutionReportExecInstEnum.INDICATION_OF_INTEREST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderExecutionReportExecInstEnumTypeTransformer] instance.
  static OrderExecutionReportExecInstEnumTypeTransformer? _instance;
}


