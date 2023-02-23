//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/position_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position.g.dart';

/// Position
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [data] 
@BuiltValue()
abstract class Position implements Built<Position, PositionBuilder> {
  /// Exchange identifier used to identify the routing destination.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  @BuiltValueField(wireName: r'data')
  BuiltList<PositionDataInner>? get data;

  Position._();

  factory Position([void updates(PositionBuilder b)]) = _$Position;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PositionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Position> get serializer => _$PositionSerializer();
}

class _$PositionSerializer implements PrimitiveSerializer<Position> {
  @override
  final Iterable<Type> types = const [Position, _$Position];

  @override
  final String wireName = r'Position';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Position object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(PositionDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Position object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PositionBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PositionDataInner)]),
          ) as BuiltList<PositionDataInner>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Position deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PositionBuilder();
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

