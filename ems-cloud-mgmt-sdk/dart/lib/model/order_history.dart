//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderHistory {
  /// Returns a new [OrderHistory] instance.
  OrderHistory({
    this.apikey,
    this.exchangeId,
    this.clientOrderId,
    this.symbolIdExchange,
    this.symbolIdCoinapi,
    this.amountOrder,
    this.price,
    this.side,
    this.orderType,
    this.timeInForce,
    this.expireTime,
    this.execInst = const [],
    this.clientOrderIdFormatExchange,
    this.exchangeOrderId,
    this.amountOpen,
    this.amountFilled,
    this.avgPx,
    this.status,
    this.statusHistoryStatus = const [],
    this.statusHistoryTime = const [],
    this.errorMessageResult,
    this.errorMessageReason,
    this.errorMessageMessage,
    this.fillsTime = const [],
    this.fillsPrice = const [],
    this.fillsAmount = const [],
    this.createdTime,
  });

  /// Apikey
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apikey;

  /// Exchange id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchangeId;

  /// Client order id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientOrderId;

  /// Symbol id exchange
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbolIdExchange;

  /// Symbol id in coinapi
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbolIdCoinapi;

  /// Amount
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amountOrder;

  /// Price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// 1-buy, 2-sell
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? side;

  /// Order type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderType;

  /// Time in force
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeInForce;

  /// Expire time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expireTime;

  /// Exec inst
  List<String> execInst;

  /// Client order id format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientOrderIdFormatExchange;

  /// Exchange order id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchangeOrderId;

  /// Amount open
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amountOpen;

  /// Amount filled
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amountFilled;

  /// Average price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgPx;

  /// Status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// History status
  List<String> statusHistoryStatus;

  /// History status time
  List<DateTime> statusHistoryTime;

  /// Error message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessageResult;

  /// Error message reason
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessageReason;

  /// Error message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessageMessage;

  /// Fills time
  List<DateTime> fillsTime;

  /// Fills price
  List<num> fillsPrice;

  /// Fills amount
  List<num> fillsAmount;

  /// Created time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderHistory &&
     other.apikey == apikey &&
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
     other.statusHistoryStatus == statusHistoryStatus &&
     other.statusHistoryTime == statusHistoryTime &&
     other.errorMessageResult == errorMessageResult &&
     other.errorMessageReason == errorMessageReason &&
     other.errorMessageMessage == errorMessageMessage &&
     other.fillsTime == fillsTime &&
     other.fillsPrice == fillsPrice &&
     other.fillsAmount == fillsAmount &&
     other.createdTime == createdTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apikey == null ? 0 : apikey!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId!.hashCode) +
    (symbolIdExchange == null ? 0 : symbolIdExchange!.hashCode) +
    (symbolIdCoinapi == null ? 0 : symbolIdCoinapi!.hashCode) +
    (amountOrder == null ? 0 : amountOrder!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (side == null ? 0 : side!.hashCode) +
    (orderType == null ? 0 : orderType!.hashCode) +
    (timeInForce == null ? 0 : timeInForce!.hashCode) +
    (expireTime == null ? 0 : expireTime!.hashCode) +
    (execInst.hashCode) +
    (clientOrderIdFormatExchange == null ? 0 : clientOrderIdFormatExchange!.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId!.hashCode) +
    (amountOpen == null ? 0 : amountOpen!.hashCode) +
    (amountFilled == null ? 0 : amountFilled!.hashCode) +
    (avgPx == null ? 0 : avgPx!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusHistoryStatus.hashCode) +
    (statusHistoryTime.hashCode) +
    (errorMessageResult == null ? 0 : errorMessageResult!.hashCode) +
    (errorMessageReason == null ? 0 : errorMessageReason!.hashCode) +
    (errorMessageMessage == null ? 0 : errorMessageMessage!.hashCode) +
    (fillsTime.hashCode) +
    (fillsPrice.hashCode) +
    (fillsAmount.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode);

  @override
  String toString() => 'OrderHistory[apikey=$apikey, exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistoryStatus=$statusHistoryStatus, statusHistoryTime=$statusHistoryTime, errorMessageResult=$errorMessageResult, errorMessageReason=$errorMessageReason, errorMessageMessage=$errorMessageMessage, fillsTime=$fillsTime, fillsPrice=$fillsPrice, fillsAmount=$fillsAmount, createdTime=$createdTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apikey != null) {
      json[r'apikey'] = this.apikey;
    } else {
      json[r'apikey'] = null;
    }
    if (this.exchangeId != null) {
      json[r'exchangeId'] = this.exchangeId;
    } else {
      json[r'exchangeId'] = null;
    }
    if (this.clientOrderId != null) {
      json[r'clientOrderId'] = this.clientOrderId;
    } else {
      json[r'clientOrderId'] = null;
    }
    if (this.symbolIdExchange != null) {
      json[r'symbolIdExchange'] = this.symbolIdExchange;
    } else {
      json[r'symbolIdExchange'] = null;
    }
    if (this.symbolIdCoinapi != null) {
      json[r'symbolIdCoinapi'] = this.symbolIdCoinapi;
    } else {
      json[r'symbolIdCoinapi'] = null;
    }
    if (this.amountOrder != null) {
      json[r'amountOrder'] = this.amountOrder;
    } else {
      json[r'amountOrder'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.side != null) {
      json[r'side'] = this.side;
    } else {
      json[r'side'] = null;
    }
    if (this.orderType != null) {
      json[r'orderType'] = this.orderType;
    } else {
      json[r'orderType'] = null;
    }
    if (this.timeInForce != null) {
      json[r'timeInForce'] = this.timeInForce;
    } else {
      json[r'timeInForce'] = null;
    }
    if (this.expireTime != null) {
      json[r'expireTime'] = this.expireTime;
    } else {
      json[r'expireTime'] = null;
    }
      json[r'execInst'] = this.execInst;
    if (this.clientOrderIdFormatExchange != null) {
      json[r'clientOrderIdFormatExchange'] = this.clientOrderIdFormatExchange;
    } else {
      json[r'clientOrderIdFormatExchange'] = null;
    }
    if (this.exchangeOrderId != null) {
      json[r'exchangeOrderId'] = this.exchangeOrderId;
    } else {
      json[r'exchangeOrderId'] = null;
    }
    if (this.amountOpen != null) {
      json[r'amountOpen'] = this.amountOpen;
    } else {
      json[r'amountOpen'] = null;
    }
    if (this.amountFilled != null) {
      json[r'amountFilled'] = this.amountFilled;
    } else {
      json[r'amountFilled'] = null;
    }
    if (this.avgPx != null) {
      json[r'avgPx'] = this.avgPx;
    } else {
      json[r'avgPx'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'statusHistoryStatus'] = this.statusHistoryStatus;
      json[r'statusHistoryTime'] = this.statusHistoryTime;
    if (this.errorMessageResult != null) {
      json[r'errorMessageResult'] = this.errorMessageResult;
    } else {
      json[r'errorMessageResult'] = null;
    }
    if (this.errorMessageReason != null) {
      json[r'errorMessageReason'] = this.errorMessageReason;
    } else {
      json[r'errorMessageReason'] = null;
    }
    if (this.errorMessageMessage != null) {
      json[r'errorMessageMessage'] = this.errorMessageMessage;
    } else {
      json[r'errorMessageMessage'] = null;
    }
      json[r'fillsTime'] = this.fillsTime;
      json[r'fillsPrice'] = this.fillsPrice;
      json[r'fillsAmount'] = this.fillsAmount;
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    return json;
  }

  /// Returns a new [OrderHistory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderHistory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderHistory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderHistory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderHistory(
        apikey: mapValueOfType<String>(json, r'apikey'),
        exchangeId: mapValueOfType<String>(json, r'exchangeId'),
        clientOrderId: mapValueOfType<String>(json, r'clientOrderId'),
        symbolIdExchange: mapValueOfType<String>(json, r'symbolIdExchange'),
        symbolIdCoinapi: mapValueOfType<String>(json, r'symbolIdCoinapi'),
        amountOrder: json[r'amountOrder'] == null
            ? null
            : num.parse(json[r'amountOrder'].toString()),
        price: json[r'price'] == null
            ? null
            : num.parse(json[r'price'].toString()),
        side: json[r'side'] == null
            ? null
            : num.parse(json[r'side'].toString()),
        orderType: mapValueOfType<String>(json, r'orderType'),
        timeInForce: mapValueOfType<String>(json, r'timeInForce'),
        expireTime: DateTime.fromJson(json[r'expireTime']),
        execInst: json[r'execInst'] is List
            ? (json[r'execInst'] as List).cast<String>()
            : const [],
        clientOrderIdFormatExchange: mapValueOfType<String>(json, r'clientOrderIdFormatExchange'),
        exchangeOrderId: mapValueOfType<String>(json, r'exchangeOrderId'),
        amountOpen: json[r'amountOpen'] == null
            ? null
            : num.parse(json[r'amountOpen'].toString()),
        amountFilled: json[r'amountFilled'] == null
            ? null
            : num.parse(json[r'amountFilled'].toString()),
        avgPx: json[r'avgPx'] == null
            ? null
            : num.parse(json[r'avgPx'].toString()),
        status: mapValueOfType<String>(json, r'status'),
        statusHistoryStatus: json[r'statusHistoryStatus'] is List
            ? (json[r'statusHistoryStatus'] as List).cast<String>()
            : const [],
        statusHistoryTime: DateTime.listFromJson(json[r'statusHistoryTime']) ?? const [],
        errorMessageResult: mapValueOfType<String>(json, r'errorMessageResult'),
        errorMessageReason: mapValueOfType<String>(json, r'errorMessageReason'),
        errorMessageMessage: mapValueOfType<String>(json, r'errorMessageMessage'),
        fillsTime: DateTime.listFromJson(json[r'fillsTime']) ?? const [],
        fillsPrice: json[r'fillsPrice'] is List
            ? (json[r'fillsPrice'] as List).cast<num>()
            : const [],
        fillsAmount: json[r'fillsAmount'] is List
            ? (json[r'fillsAmount'] as List).cast<num>()
            : const [],
        createdTime: DateTime.fromJson(json[r'createdTime']),
      );
    }
    return null;
  }

  static List<OrderHistory>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderHistory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderHistory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderHistory> mapFromJson(dynamic json) {
    final map = <String, OrderHistory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderHistory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderHistory-objects as value to a dart map
  static Map<String, List<OrderHistory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderHistory>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderHistory.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

