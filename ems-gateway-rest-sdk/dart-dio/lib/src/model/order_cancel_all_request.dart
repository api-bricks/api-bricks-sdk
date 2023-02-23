//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_all_request.g.dart';

/// Cancel all orders request object.
///
/// Properties:
/// * [exchangeId] - Identifier of the exchange from which active orders should be canceled.
@BuiltValue()
abstract class OrderCancelAllRequest implements Built<OrderCancelAllRequest, OrderCancelAllRequestBuilder> {
  /// Identifier of the exchange from which active orders should be canceled.
  @BuiltValueField(wireName: r'exchange_id')
  String get exchangeId;

  OrderCancelAllRequest._();

  factory OrderCancelAllRequest([void updates(OrderCancelAllRequestBuilder b)]) = _$OrderCancelAllRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderCancelAllRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderCancelAllRequest> get serializer => _$OrderCancelAllRequestSerializer();
}

class _$OrderCancelAllRequestSerializer implements PrimitiveSerializer<OrderCancelAllRequest> {
  @override
  final Iterable<Type> types = const [OrderCancelAllRequest, _$OrderCancelAllRequest];

  @override
  final String wireName = r'OrderCancelAllRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderCancelAllRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'exchange_id';
    yield serializers.serialize(
      object.exchangeId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderCancelAllRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderCancelAllRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderCancelAllRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderCancelAllRequestBuilder();
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

