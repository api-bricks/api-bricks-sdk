//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ord_type.dart';
import 'package:openapi/src/model/ord_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/time_in_force.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_new_single_request.g.dart';

/// The new order message.
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [clientOrderId] - The unique identifier of the order assigned by the client.
/// * [symbolIdExchange] - Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
/// * [symbolIdCoinapi] - CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
/// * [amountOrder] - Order quantity.
/// * [price] - Order price.
/// * [side] 
/// * [orderType] 
/// * [timeInForce] 
/// * [expireTime] - Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
/// * [execInst] - Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
@BuiltValue(instantiable: false)
abstract class OrderNewSingleRequest  {
  /// Exchange identifier used to identify the routing destination.
  @BuiltValueField(wireName: r'exchange_id')
  String get exchangeId;

  /// The unique identifier of the order assigned by the client.
  @BuiltValueField(wireName: r'client_order_id')
  String get clientOrderId;

  /// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
  @BuiltValueField(wireName: r'symbol_id_exchange')
  String? get symbolIdExchange;

  /// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
  @BuiltValueField(wireName: r'symbol_id_coinapi')
  String? get symbolIdCoinapi;

  /// Order quantity.
  @BuiltValueField(wireName: r'amount_order')
  num get amountOrder;

  /// Order price.
  @BuiltValueField(wireName: r'price')
  num get price;

  @BuiltValueField(wireName: r'side')
  OrdSide get side;
  // enum sideEnum {  BUY,  SELL,  };

  @BuiltValueField(wireName: r'order_type')
  OrdType get orderType;
  // enum orderTypeEnum {  LIMIT,  };

  @BuiltValueField(wireName: r'time_in_force')
  TimeInForce get timeInForce;
  // enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };

  /// Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
  @BuiltValueField(wireName: r'expire_time')
  Date? get expireTime;

  /// Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
  @BuiltValueField(wireName: r'exec_inst')
  BuiltList<OrderExecutionReportExecInstEnum>? get execInst;
  // enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderNewSingleRequest> get serializer => _$OrderNewSingleRequestSerializer();
}

class _$OrderNewSingleRequestSerializer implements PrimitiveSerializer<OrderNewSingleRequest> {
  @override
  final Iterable<Type> types = const [OrderNewSingleRequest];

  @override
  final String wireName = r'OrderNewSingleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderNewSingleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'exchange_id';
    yield serializers.serialize(
      object.exchangeId,
      specifiedType: const FullType(String),
    );
    yield r'client_order_id';
    yield serializers.serialize(
      object.clientOrderId,
      specifiedType: const FullType(String),
    );
    if (object.symbolIdExchange != null) {
      yield r'symbol_id_exchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType(String),
      );
    }
    if (object.symbolIdCoinapi != null) {
      yield r'symbol_id_coinapi';
      yield serializers.serialize(
        object.symbolIdCoinapi,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount_order';
    yield serializers.serialize(
      object.amountOrder,
      specifiedType: const FullType(num),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(num),
    );
    yield r'side';
    yield serializers.serialize(
      object.side,
      specifiedType: const FullType(OrdSide),
    );
    yield r'order_type';
    yield serializers.serialize(
      object.orderType,
      specifiedType: const FullType(OrdType),
    );
    yield r'time_in_force';
    yield serializers.serialize(
      object.timeInForce,
      specifiedType: const FullType(TimeInForce),
    );
    if (object.expireTime != null) {
      yield r'expire_time';
      yield serializers.serialize(
        object.expireTime,
        specifiedType: const FullType(Date),
      );
    }
    if (object.execInst != null) {
      yield r'exec_inst';
      yield serializers.serialize(
        object.execInst,
        specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderNewSingleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  OrderNewSingleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($OrderNewSingleRequest)) as $OrderNewSingleRequest;
  }
}

/// a concrete implementation of [OrderNewSingleRequest], since [OrderNewSingleRequest] is not instantiable
@BuiltValue(instantiable: true)
abstract class $OrderNewSingleRequest implements OrderNewSingleRequest, Built<$OrderNewSingleRequest, $OrderNewSingleRequestBuilder> {
  $OrderNewSingleRequest._();

  factory $OrderNewSingleRequest([void Function($OrderNewSingleRequestBuilder)? updates]) = _$$OrderNewSingleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OrderNewSingleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$OrderNewSingleRequest> get serializer => _$$OrderNewSingleRequestSerializer();
}

class _$$OrderNewSingleRequestSerializer implements PrimitiveSerializer<$OrderNewSingleRequest> {
  @override
  final Iterable<Type> types = const [$OrderNewSingleRequest, _$$OrderNewSingleRequest];

  @override
  final String wireName = r'$OrderNewSingleRequest';

  @override
  Object serialize(
    Serializers serializers,
    $OrderNewSingleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(OrderNewSingleRequest))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderNewSingleRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeId = valueDes;
          break;
        case r'client_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderId = valueDes;
          break;
        case r'symbol_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdExchange = valueDes;
          break;
        case r'symbol_id_coinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdCoinapi = valueDes;
          break;
        case r'amount_order':
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
            specifiedType: const FullType(OrdSide),
          ) as OrdSide;
          result.side = valueDes;
          break;
        case r'order_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdType),
          ) as OrdType;
          result.orderType = valueDes;
          break;
        case r'time_in_force':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeInForce),
          ) as TimeInForce;
          result.timeInForce = valueDes;
          break;
        case r'expire_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.expireTime = valueDes;
          break;
        case r'exec_inst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)]),
          ) as BuiltList<OrderExecutionReportExecInstEnum>;
          result.execInst.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $OrderNewSingleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OrderNewSingleRequestBuilder();
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

class OrderExecutionReportExecInstEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'MAKER_OR_CANCEL')
  static const OrderExecutionReportExecInstEnum MAKER_OR_CANCEL = _$orderExecutionReportExecInstEnum_MAKER_OR_CANCEL;
  @BuiltValueEnumConst(wireName: r'AUCTION_ONLY')
  static const OrderExecutionReportExecInstEnum AUCTION_ONLY = _$orderExecutionReportExecInstEnum_AUCTION_ONLY;
  @BuiltValueEnumConst(wireName: r'INDICATION_OF_INTEREST')
  static const OrderExecutionReportExecInstEnum INDICATION_OF_INTEREST = _$orderExecutionReportExecInstEnum_INDICATION_OF_INTEREST;

  static Serializer<OrderExecutionReportExecInstEnum> get serializer => _$orderExecutionReportExecInstEnumSerializer;

  const OrderExecutionReportExecInstEnum._(String name): super(name);

  static BuiltSet<OrderExecutionReportExecInstEnum> get values => _$orderExecutionReportExecInstEnumValues;
  static OrderExecutionReportExecInstEnum valueOf(String name) => _$orderExecutionReportExecInstEnumValueOf(name);
}

