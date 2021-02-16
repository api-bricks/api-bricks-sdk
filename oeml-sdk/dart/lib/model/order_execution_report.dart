//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderExecutionReport {
  /// Returns a new [OrderExecutionReport] instance.
  OrderExecutionReport({
    @required this.exchangeId,
    @required this.clientOrderId,
    this.symbolIdExchange,
    this.symbolIdCoinapi,
    @required this.amountOrder,
    @required this.price,
    @required this.side,
    @required this.orderType,
    @required this.timeInForce,
    this.expireTime,
    this.execInst = const [],
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

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  /// The unique identifier of the order assigned by the client.
  String clientOrderId;

  /// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
  String symbolIdExchange;

  /// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
  String symbolIdCoinapi;

  /// Order quantity.
  num amountOrder;

  /// Order price.
  num price;

  OrdSide side;

  OrdType orderType;

  TimeInForce timeInForce;

  /// Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
  DateTime expireTime;

  /// Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
  List<OrderExecutionReportExecInstEnum> execInst;

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
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId.hashCode) +
    (symbolIdExchange == null ? 0 : symbolIdExchange.hashCode) +
    (symbolIdCoinapi == null ? 0 : symbolIdCoinapi.hashCode) +
    (amountOrder == null ? 0 : amountOrder.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (side == null ? 0 : side.hashCode) +
    (orderType == null ? 0 : orderType.hashCode) +
    (timeInForce == null ? 0 : timeInForce.hashCode) +
    (expireTime == null ? 0 : expireTime.hashCode) +
    (execInst == null ? 0 : execInst.hashCode) +
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
  String toString() => 'OrderExecutionReport[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (clientOrderId != null) {
      json[r'client_order_id'] = clientOrderId;
    }
    if (symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = symbolIdExchange;
    }
    if (symbolIdCoinapi != null) {
      json[r'symbol_id_coinapi'] = symbolIdCoinapi;
    }
    if (amountOrder != null) {
      json[r'amount_order'] = amountOrder;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (side != null) {
      json[r'side'] = side;
    }
    if (orderType != null) {
      json[r'order_type'] = orderType;
    }
    if (timeInForce != null) {
      json[r'time_in_force'] = timeInForce;
    }
    if (expireTime != null) {
      json[r'expire_time'] = expireTime;
    }
    if (execInst != null) {
      json[r'exec_inst'] = execInst;
    }
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

  /// Returns a new [OrderExecutionReport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderExecutionReport fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderExecutionReport(
        exchangeId: json[r'exchange_id'],
        clientOrderId: json[r'client_order_id'],
        symbolIdExchange: json[r'symbol_id_exchange'],
        symbolIdCoinapi: json[r'symbol_id_coinapi'],
        amountOrder: json[r'amount_order'] == null ?
          null :
          json[r'amount_order'].toDouble(),
        price: json[r'price'] == null ?
          null :
          json[r'price'].toDouble(),
        side: OrdSide.fromJson(json[r'side']),
        orderType: OrdType.fromJson(json[r'order_type']),
        timeInForce: TimeInForce.fromJson(json[r'time_in_force']),
        expireTime: DateTime.fromJson(json[r'expire_time']),
        execInst: OrderExecutionReportExecInstEnum.listFromJson(json[r'exec_inst']),
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

  static List<OrderExecutionReport> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderExecutionReport>[]
      : json.map((v) => OrderExecutionReport.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrderExecutionReport> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderExecutionReport>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrderExecutionReport.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReport-objects as value to a dart map
  static Map<String, List<OrderExecutionReport>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderExecutionReport>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrderExecutionReport.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class OrderExecutionReportExecInstEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderExecutionReportExecInstEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is OrderExecutionReportExecInstEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

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

  static OrderExecutionReportExecInstEnum fromJson(dynamic value) =>
    OrderExecutionReportExecInstEnumTypeTransformer().decode(value);

  static List<OrderExecutionReportExecInstEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderExecutionReportExecInstEnum>[]
      : json
          .map((value) => OrderExecutionReportExecInstEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrderExecutionReportExecInstEnum] to String,
/// and [decode] dynamic data back to [OrderExecutionReportExecInstEnum].
class OrderExecutionReportExecInstEnumTypeTransformer {
  const OrderExecutionReportExecInstEnumTypeTransformer._();

  factory OrderExecutionReportExecInstEnumTypeTransformer() => _instance ??= OrderExecutionReportExecInstEnumTypeTransformer._();

  String encode(OrderExecutionReportExecInstEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderExecutionReportExecInstEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderExecutionReportExecInstEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'MAKER_OR_CANCEL': return OrderExecutionReportExecInstEnum.MAKER_OR_CANCEL;
      case r'AUCTION_ONLY': return OrderExecutionReportExecInstEnum.AUCTION_ONLY;
      case r'INDICATION_OF_INTEREST': return OrderExecutionReportExecInstEnum.INDICATION_OF_INTEREST;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrderExecutionReportExecInstEnumTypeTransformer] instance.
  static OrderExecutionReportExecInstEnumTypeTransformer _instance;
}

