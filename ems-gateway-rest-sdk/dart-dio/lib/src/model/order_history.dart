//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_history.g.dart';

/// OrderHistory
///
/// Properties:
/// * [apikey] - Apikey
/// * [exchangeId] - Exchange id
/// * [clientOrderId] - Client order id
/// * [symbolIdExchange] - Symbol id exchange
/// * [symbolIdCoinapi] - Symbol id in coinapi
/// * [amountOrder] - Amount
/// * [price] - Price
/// * [side] - 1-buy, 2-sell
/// * [orderType] - Order type
/// * [timeInForce] - Time in force
/// * [expireTime] - Expire time
/// * [execInst] - Exec inst
/// * [clientOrderIdFormatExchange] - Client order id format
/// * [exchangeOrderId] - Exchange order id
/// * [amountOpen] - Amount open
/// * [amountFilled] - Amount filled
/// * [avgPx] - Average price
/// * [status] - Status
/// * [statusHistoryStatus] - History status
/// * [statusHistoryTime] - History status time
/// * [errorMessageResult] - Error message
/// * [errorMessageReason] - Error message reason
/// * [errorMessageMessage] - Error message
/// * [fillsTime] - Fills time
/// * [fillsPrice] - Fills price
/// * [fillsAmount] - Fills amount
/// * [createdTime] - Created time
@BuiltValue()
abstract class OrderHistory implements Built<OrderHistory, OrderHistoryBuilder> {
  /// Apikey
  @BuiltValueField(wireName: r'apikey')
  String? get apikey;

  /// Exchange id
  @BuiltValueField(wireName: r'exchangeId')
  String? get exchangeId;

  /// Client order id
  @BuiltValueField(wireName: r'clientOrderId')
  String? get clientOrderId;

  /// Symbol id exchange
  @BuiltValueField(wireName: r'symbolIdExchange')
  String? get symbolIdExchange;

  /// Symbol id in coinapi
  @BuiltValueField(wireName: r'symbolIdCoinapi')
  String? get symbolIdCoinapi;

  /// Amount
  @BuiltValueField(wireName: r'amountOrder')
  num? get amountOrder;

  /// Price
  @BuiltValueField(wireName: r'price')
  num? get price;

  /// 1-buy, 2-sell
  @BuiltValueField(wireName: r'side')
  num? get side;

  /// Order type
  @BuiltValueField(wireName: r'orderType')
  String? get orderType;

  /// Time in force
  @BuiltValueField(wireName: r'timeInForce')
  String? get timeInForce;

  /// Expire time
  @BuiltValueField(wireName: r'expireTime')
  Date? get expireTime;

  /// Exec inst
  @BuiltValueField(wireName: r'execInst')
  BuiltList<String>? get execInst;

  /// Client order id format
  @BuiltValueField(wireName: r'clientOrderIdFormatExchange')
  String? get clientOrderIdFormatExchange;

  /// Exchange order id
  @BuiltValueField(wireName: r'exchangeOrderId')
  String? get exchangeOrderId;

  /// Amount open
  @BuiltValueField(wireName: r'amountOpen')
  num? get amountOpen;

  /// Amount filled
  @BuiltValueField(wireName: r'amountFilled')
  num? get amountFilled;

  /// Average price
  @BuiltValueField(wireName: r'avgPx')
  num? get avgPx;

  /// Status
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// History status
  @BuiltValueField(wireName: r'statusHistoryStatus')
  BuiltList<String>? get statusHistoryStatus;

  /// History status time
  @BuiltValueField(wireName: r'statusHistoryTime')
  BuiltList<Date>? get statusHistoryTime;

  /// Error message
  @BuiltValueField(wireName: r'errorMessageResult')
  String? get errorMessageResult;

  /// Error message reason
  @BuiltValueField(wireName: r'errorMessageReason')
  String? get errorMessageReason;

  /// Error message
  @BuiltValueField(wireName: r'errorMessageMessage')
  String? get errorMessageMessage;

  /// Fills time
  @BuiltValueField(wireName: r'fillsTime')
  BuiltList<Date>? get fillsTime;

  /// Fills price
  @BuiltValueField(wireName: r'fillsPrice')
  BuiltList<num>? get fillsPrice;

  /// Fills amount
  @BuiltValueField(wireName: r'fillsAmount')
  BuiltList<num>? get fillsAmount;

  /// Created time
  @BuiltValueField(wireName: r'createdTime')
  Date? get createdTime;

  OrderHistory._();

  factory OrderHistory([void updates(OrderHistoryBuilder b)]) = _$OrderHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderHistory> get serializer => _$OrderHistorySerializer();
}

class _$OrderHistorySerializer implements PrimitiveSerializer<OrderHistory> {
  @override
  final Iterable<Type> types = const [OrderHistory, _$OrderHistory];

  @override
  final String wireName = r'OrderHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apikey != null) {
      yield r'apikey';
      yield serializers.serialize(
        object.apikey,
        specifiedType: const FullType(String),
      );
    }
    if (object.exchangeId != null) {
      yield r'exchangeId';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientOrderId != null) {
      yield r'clientOrderId';
      yield serializers.serialize(
        object.clientOrderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.symbolIdExchange != null) {
      yield r'symbolIdExchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType(String),
      );
    }
    if (object.symbolIdCoinapi != null) {
      yield r'symbolIdCoinapi';
      yield serializers.serialize(
        object.symbolIdCoinapi,
        specifiedType: const FullType(String),
      );
    }
    if (object.amountOrder != null) {
      yield r'amountOrder';
      yield serializers.serialize(
        object.amountOrder,
        specifiedType: const FullType(num),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.side != null) {
      yield r'side';
      yield serializers.serialize(
        object.side,
        specifiedType: const FullType(num),
      );
    }
    if (object.orderType != null) {
      yield r'orderType';
      yield serializers.serialize(
        object.orderType,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeInForce != null) {
      yield r'timeInForce';
      yield serializers.serialize(
        object.timeInForce,
        specifiedType: const FullType(String),
      );
    }
    if (object.expireTime != null) {
      yield r'expireTime';
      yield serializers.serialize(
        object.expireTime,
        specifiedType: const FullType(Date),
      );
    }
    if (object.execInst != null) {
      yield r'execInst';
      yield serializers.serialize(
        object.execInst,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.clientOrderIdFormatExchange != null) {
      yield r'clientOrderIdFormatExchange';
      yield serializers.serialize(
        object.clientOrderIdFormatExchange,
        specifiedType: const FullType(String),
      );
    }
    if (object.exchangeOrderId != null) {
      yield r'exchangeOrderId';
      yield serializers.serialize(
        object.exchangeOrderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.amountOpen != null) {
      yield r'amountOpen';
      yield serializers.serialize(
        object.amountOpen,
        specifiedType: const FullType(num),
      );
    }
    if (object.amountFilled != null) {
      yield r'amountFilled';
      yield serializers.serialize(
        object.amountFilled,
        specifiedType: const FullType(num),
      );
    }
    if (object.avgPx != null) {
      yield r'avgPx';
      yield serializers.serialize(
        object.avgPx,
        specifiedType: const FullType(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusHistoryStatus != null) {
      yield r'statusHistoryStatus';
      yield serializers.serialize(
        object.statusHistoryStatus,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.statusHistoryTime != null) {
      yield r'statusHistoryTime';
      yield serializers.serialize(
        object.statusHistoryTime,
        specifiedType: const FullType(BuiltList, [FullType(Date)]),
      );
    }
    if (object.errorMessageResult != null) {
      yield r'errorMessageResult';
      yield serializers.serialize(
        object.errorMessageResult,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorMessageReason != null) {
      yield r'errorMessageReason';
      yield serializers.serialize(
        object.errorMessageReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorMessageMessage != null) {
      yield r'errorMessageMessage';
      yield serializers.serialize(
        object.errorMessageMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.fillsTime != null) {
      yield r'fillsTime';
      yield serializers.serialize(
        object.fillsTime,
        specifiedType: const FullType(BuiltList, [FullType(Date)]),
      );
    }
    if (object.fillsPrice != null) {
      yield r'fillsPrice';
      yield serializers.serialize(
        object.fillsPrice,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.fillsAmount != null) {
      yield r'fillsAmount';
      yield serializers.serialize(
        object.fillsAmount,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apikey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apikey = valueDes;
          break;
        case r'exchangeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeId = valueDes;
          break;
        case r'clientOrderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderId = valueDes;
          break;
        case r'symbolIdExchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdExchange = valueDes;
          break;
        case r'symbolIdCoinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdCoinapi = valueDes;
          break;
        case r'amountOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountOrder = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'side':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.side = valueDes;
          break;
        case r'orderType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderType = valueDes;
          break;
        case r'timeInForce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeInForce = valueDes;
          break;
        case r'expireTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.expireTime = valueDes;
          break;
        case r'execInst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.execInst.replace(valueDes);
          break;
        case r'clientOrderIdFormatExchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderIdFormatExchange = valueDes;
          break;
        case r'exchangeOrderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeOrderId = valueDes;
          break;
        case r'amountOpen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountOpen = valueDes;
          break;
        case r'amountFilled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountFilled = valueDes;
          break;
        case r'avgPx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgPx = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'statusHistoryStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.statusHistoryStatus.replace(valueDes);
          break;
        case r'statusHistoryTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Date)]),
          ) as BuiltList<Date>;
          result.statusHistoryTime.replace(valueDes);
          break;
        case r'errorMessageResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessageResult = valueDes;
          break;
        case r'errorMessageReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessageReason = valueDes;
          break;
        case r'errorMessageMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessageMessage = valueDes;
          break;
        case r'fillsTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Date)]),
          ) as BuiltList<Date>;
          result.fillsTime.replace(valueDes);
          break;
        case r'fillsPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.fillsPrice.replace(valueDes);
          break;
        case r'fillsAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.fillsAmount.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.createdTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderHistoryBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

