//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderNewSingleRequest {
  /// Returns a new [OrderNewSingleRequest] instance.
  OrderNewSingleRequest({
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
  List<OrderNewSingleRequestExecInstEnum> execInst;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderNewSingleRequest &&
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
     other.execInst == execInst;

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
    (execInst == null ? 0 : execInst.hashCode);

  @override
  String toString() => 'OrderNewSingleRequest[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = exchangeId;
      json[r'client_order_id'] = clientOrderId;
    if (symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = symbolIdExchange;
    }
    if (symbolIdCoinapi != null) {
      json[r'symbol_id_coinapi'] = symbolIdCoinapi;
    }
      json[r'amount_order'] = amountOrder;
      json[r'price'] = price;
      json[r'side'] = side;
      json[r'order_type'] = orderType;
      json[r'time_in_force'] = timeInForce;
    if (expireTime != null) {
      json[r'expire_time'] = expireTime;
    }
    if (execInst != null) {
      json[r'exec_inst'] = execInst;
    }
    return json;
  }

  /// Returns a new [OrderNewSingleRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrderNewSingleRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrderNewSingleRequest(
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
    );

  static List<OrderNewSingleRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrderNewSingleRequest>[]
      : json.map((dynamic value) => OrderNewSingleRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, OrderNewSingleRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrderNewSingleRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = OrderNewSingleRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderNewSingleRequest-objects as value to a dart map
  static Map<String, List<OrderNewSingleRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderNewSingleRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = OrderNewSingleRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
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

