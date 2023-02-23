//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_single_request.g.dart';

/// Cancel single order request object.
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [exchangeOrderId] - Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
/// * [clientOrderId] - The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
@BuiltValue()
abstract class OrderCancelSingleRequest implements Built<OrderCancelSingleRequest, OrderCancelSingleRequestBuilder> {
  /// Exchange identifier used to identify the routing destination.
  @BuiltValueField(wireName: r'exchange_id')
  String get exchangeId;

  /// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  @BuiltValueField(wireName: r'exchange_order_id')
  String? get exchangeOrderId;

  /// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  @BuiltValueField(wireName: r'client_order_id')
  String? get clientOrderId;

  OrderCancelSingleRequest._();

  factory OrderCancelSingleRequest([void updates(OrderCancelSingleRequestBuilder b)]) = _$OrderCancelSingleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderCancelSingleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderCancelSingleRequest> get serializer => _$OrderCancelSingleRequestSerializer();
}

class _$OrderCancelSingleRequestSerializer implements PrimitiveSerializer<OrderCancelSingleRequest> {
  @override
  final Iterable<Type> types = const [OrderCancelSingleRequest, _$OrderCancelSingleRequest];

  @override
  final String wireName = r'OrderCancelSingleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderCancelSingleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'exchange_id';
    yield serializers.serialize(
      object.exchangeId,
      specifiedType: const FullType(String),
    );
    if (object.exchangeOrderId != null) {
      yield r'exchange_order_id';
      yield serializers.serialize(
        object.exchangeOrderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientOrderId != null) {
      yield r'client_order_id';
      yield serializers.serialize(
        object.clientOrderId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderCancelSingleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderCancelSingleRequestBuilder result,
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
        case r'exchange_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exchangeOrderId = valueDes;
          break;
        case r'client_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientOrderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderCancelSingleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderCancelSingleRequestBuilder();
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

