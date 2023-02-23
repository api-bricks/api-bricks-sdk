//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderNewSingleRequest {
  /// Returns a new [OrderNewSingleRequest] instance.
  OrderNewSingleRequest({
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
    (execInst.hashCode);

  @override
  String toString() => 'OrderNewSingleRequest[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst]';

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
    return json;
  }

  /// Returns a new [OrderNewSingleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderNewSingleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderNewSingleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderNewSingleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderNewSingleRequest(
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
      );
    }
    return null;
  }

  static List<OrderNewSingleRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderNewSingleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderNewSingleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderNewSingleRequest> mapFromJson(dynamic json) {
    final map = <String, OrderNewSingleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderNewSingleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderNewSingleRequest-objects as value to a dart map
  static Map<String, List<OrderNewSingleRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderNewSingleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderNewSingleRequest.listFromJson(entry.value, growable: growable,);
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


