//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/fills.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/ord_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report_all_of.g.dart';

/// The order execution report message.
///
/// Properties:
/// * [clientOrderIdFormatExchange] - The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
/// * [exchangeOrderId] - Unique identifier of the order assigned by the exchange or executing system.
/// * [amountOpen] - Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
/// * [amountFilled] - Total quantity filled.
/// * [avgPx] - Calculated average price of all fills on this order.
/// * [status] 
/// * [statusHistory] - Timestamped history of order status changes.
/// * [errorMessage] - Error message.
/// * [fills] - Relay fill information on working orders.
@BuiltValue(instantiable: false)
abstract class OrderExecutionReportAllOf  {
  /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
  @BuiltValueField(wireName: r'client_order_id_format_exchange')
  String get clientOrderIdFormatExchange;

  /// Unique identifier of the order assigned by the exchange or executing system.
  @BuiltValueField(wireName: r'exchange_order_id')
  String? get exchangeOrderId;

  /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
  @BuiltValueField(wireName: r'amount_open')
  num get amountOpen;

  /// Total quantity filled.
  @BuiltValueField(wireName: r'amount_filled')
  num get amountFilled;

  /// Calculated average price of all fills on this order.
  @BuiltValueField(wireName: r'avg_px')
  num? get avgPx;

  @BuiltValueField(wireName: r'status')
  OrdStatus get status;
  // enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };

  /// Timestamped history of order status changes.
  @BuiltValueField(wireName: r'status_history')
  BuiltList<BuiltList<String>>? get statusHistory;

  /// Error message.
  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  /// Relay fill information on working orders.
  @BuiltValueField(wireName: r'fills')
  BuiltList<Fills>? get fills;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderExecutionReportAllOf> get serializer => _$OrderExecutionReportAllOfSerializer();
}

class _$OrderExecutionReportAllOfSerializer implements PrimitiveSerializer<OrderExecutionReportAllOf> {
  @override
  final Iterable<Type> types = const [OrderExecutionReportAllOf];

  @override
  final String wireName = r'OrderExecutionReportAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderExecutionReportAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'client_order_id_format_exchange';
    yield serializers.serialize(
      object.clientOrderIdFormatExchange,
      specifiedType: const FullType(String),
    );
    if (object.exchangeOrderId != null) {
      yield r'exchange_order_id';
      yield serializers.serialize(
        object.exchangeOrderId,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount_open';
    yield serializers.serialize(
      object.amountOpen,
      specifiedType: const FullType(num),
    );
    yield r'amount_filled';
    yield serializers.serialize(
      object.amountFilled,
      specifiedType: const FullType(num),
    );
    if (object.avgPx != null) {
      yield r'avg_px';
      yield serializers.serialize(
        object.avgPx,
        specifiedType: const FullType(num),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(OrdStatus),
    );
    if (object.statusHistory != null) {
      yield r'status_history';
      yield serializers.serialize(
        object.statusHistory,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])]),
      );
    }
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.fills != null) {
      yield r'fills';
      yield serializers.serialize(
        object.fills,
        specifiedType: const FullType(BuiltList, [FullType(Fills)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderExecutionReportAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  OrderExecutionReportAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($OrderExecutionReportAllOf)) as $OrderExecutionReportAllOf;
  }
}

/// a concrete implementation of [OrderExecutionReportAllOf], since [OrderExecutionReportAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $OrderExecutionReportAllOf implements OrderExecutionReportAllOf, Built<$OrderExecutionReportAllOf, $OrderExecutionReportAllOfBuilder> {
  $OrderExecutionReportAllOf._();

  factory $OrderExecutionReportAllOf([void Function($OrderExecutionReportAllOfBuilder)? updates]) = _$$OrderExecutionReportAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OrderExecutionReportAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$OrderExecutionReportAllOf> get serializer => _$$OrderExecutionReportAllOfSerializer();
}

class _$$OrderExecutionReportAllOfSerializer implements PrimitiveSerializer<$OrderExecutionReportAllOf> {
  @override
  final Iterable<Type> types = const [$OrderExecutionReportAllOf, _$$OrderExecutionReportAllOf];

  @override
  final String wireName = r'$OrderExecutionReportAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $OrderExecutionReportAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(OrderExecutionReportAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderExecutionReportAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'client_order_id_format_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderIdFormatExchange = valueDes;
          break;
        case r'exchange_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeOrderId = valueDes;
          break;
        case r'amount_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountOpen = valueDes;
          break;
        case r'amount_filled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountFilled = valueDes;
          break;
        case r'avg_px':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgPx = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdStatus),
          ) as OrdStatus;
          result.status = valueDes;
          break;
        case r'status_history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])]),
          ) as BuiltList<BuiltList<String>>;
          result.statusHistory.replace(valueDes);
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'fills':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Fills)]),
          ) as BuiltList<Fills>;
          result.fills.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $OrderExecutionReportAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OrderExecutionReportAllOfBuilder();
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

