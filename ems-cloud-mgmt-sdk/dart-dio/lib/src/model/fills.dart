//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fills.g.dart';

/// Fills
///
/// Properties:
/// * [time] - Execution time.
/// * [price] - Execution price.
/// * [amount] - Executed quantity.
@BuiltValue()
abstract class Fills implements Built<Fills, FillsBuilder> {
  /// Execution time.
  @BuiltValueField(wireName: r'time')
  Date? get time;

  /// Execution price.
  @BuiltValueField(wireName: r'price')
  num? get price;

  /// Executed quantity.
  @BuiltValueField(wireName: r'amount')
  num? get amount;

  Fills._();

  factory Fills([void updates(FillsBuilder b)]) = _$Fills;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FillsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Fills> get serializer => _$FillsSerializer();
}

class _$FillsSerializer implements PrimitiveSerializer<Fills> {
  @override
  final Iterable<Type> types = const [Fills, _$Fills];

  @override
  final String wireName = r'Fills';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Fills object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(Date),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Fills object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FillsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.time = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Fills deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FillsBuilder();
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

