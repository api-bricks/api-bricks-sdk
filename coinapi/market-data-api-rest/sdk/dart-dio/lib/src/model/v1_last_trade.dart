//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_last_trade.g.dart';

/// Represents the last executed transaction.
///
/// Properties:
/// * [timeExchange] - Gets or sets the exchange time of the last trade.
/// * [timeCoinapi] - Gets or sets the CoinAPI time when the last trade was received.
/// * [uuid] - Gets or sets the UUID of the last trade.
/// * [price] - Gets or sets the price of the last trade.
/// * [size] - Gets or sets the size of the last trade.
/// * [takerSide] - Gets or sets the taker side of the last trade.
@BuiltValue()
abstract class V1LastTrade implements Built<V1LastTrade, V1LastTradeBuilder> {
  /// Gets or sets the exchange time of the last trade.
  @BuiltValueField(wireName: r'time_exchange')
  DateTime? get timeExchange;

  /// Gets or sets the CoinAPI time when the last trade was received.
  @BuiltValueField(wireName: r'time_coinapi')
  DateTime? get timeCoinapi;

  /// Gets or sets the UUID of the last trade.
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// Gets or sets the price of the last trade.
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// Gets or sets the size of the last trade.
  @BuiltValueField(wireName: r'size')
  double? get size;

  /// Gets or sets the taker side of the last trade.
  @BuiltValueField(wireName: r'taker_side')
  String? get takerSide;

  V1LastTrade._();

  factory V1LastTrade([void updates(V1LastTradeBuilder b)]) = _$V1LastTrade;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1LastTradeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1LastTrade> get serializer => _$V1LastTradeSerializer();
}

class _$V1LastTradeSerializer implements PrimitiveSerializer<V1LastTrade> {
  @override
  final Iterable<Type> types = const [V1LastTrade, _$V1LastTrade];

  @override
  final String wireName = r'V1LastTrade';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1LastTrade object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timeExchange != null) {
      yield r'time_exchange';
      yield serializers.serialize(
        object.timeExchange,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timeCoinapi != null) {
      yield r'time_coinapi';
      yield serializers.serialize(
        object.timeCoinapi,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(double),
      );
    }
    if (object.takerSide != null) {
      yield r'taker_side';
      yield serializers.serialize(
        object.takerSide,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1LastTrade object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1LastTradeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeExchange = valueDes;
          break;
        case r'time_coinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeCoinapi = valueDes;
          break;
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uuid = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'taker_side':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.takerSide = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1LastTrade deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1LastTradeBuilder();
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


