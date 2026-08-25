//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/v1_quote_trade.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_strike.g.dart';

/// Represents a strike within the option exchange group.
///
/// Properties:
/// * [strikePrice] - Gets or sets the strike price.
/// * [call] 
/// * [put] 
@BuiltValue()
abstract class V1Strike implements Built<V1Strike, V1StrikeBuilder> {
  /// Gets or sets the strike price.
  @BuiltValueField(wireName: r'strike_price')
  double? get strikePrice;

  @BuiltValueField(wireName: r'call')
  V1QuoteTrade? get call;

  @BuiltValueField(wireName: r'put')
  V1QuoteTrade? get put;

  V1Strike._();

  factory V1Strike([void updates(V1StrikeBuilder b)]) = _$V1Strike;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1StrikeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Strike> get serializer => _$V1StrikeSerializer();
}

class _$V1StrikeSerializer implements PrimitiveSerializer<V1Strike> {
  @override
  final Iterable<Type> types = const [V1Strike, _$V1Strike];

  @override
  final String wireName = r'V1Strike';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Strike object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.strikePrice != null) {
      yield r'strike_price';
      yield serializers.serialize(
        object.strikePrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.call != null) {
      yield r'call';
      yield serializers.serialize(
        object.call,
        specifiedType: const FullType(V1QuoteTrade),
      );
    }
    if (object.put != null) {
      yield r'put';
      yield serializers.serialize(
        object.put,
        specifiedType: const FullType(V1QuoteTrade),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Strike object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1StrikeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'strike_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.strikePrice = valueDes;
          break;
        case r'call':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(V1QuoteTrade),
          ) as V1QuoteTrade?;
          if (valueDes == null) continue;
          result.call.replace(valueDes);
          break;
        case r'put':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(V1QuoteTrade),
          ) as V1QuoteTrade?;
          if (valueDes == null) continue;
          result.put.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Strike deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1StrikeBuilder();
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


