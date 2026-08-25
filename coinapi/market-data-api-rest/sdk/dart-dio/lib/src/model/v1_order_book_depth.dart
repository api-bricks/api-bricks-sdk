//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_order_book_depth.g.dart';

/// Represents the depth of an order book.
///
/// Properties:
/// * [symbolId] - Gets or sets the symbol identifier.
/// * [timeExchange] - Gets or sets the exchange time of the order book.
/// * [timeCoinapi] - Gets or sets the CoinAPI time when the order book was received.
/// * [askLevels] - Gets or sets the number of ask levels in the order book.
/// * [bidLevels] - Gets or sets the number of bid levels in the order book.
/// * [askDepth] - Gets or sets the depth of the ask side of the order book.
/// * [bidDepth] - Gets or sets the depth of the bid side of the order book.
@BuiltValue()
abstract class V1OrderBookDepth implements Built<V1OrderBookDepth, V1OrderBookDepthBuilder> {
  /// Gets or sets the symbol identifier.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the exchange time of the order book.
  @BuiltValueField(wireName: r'time_exchange')
  DateTime? get timeExchange;

  /// Gets or sets the CoinAPI time when the order book was received.
  @BuiltValueField(wireName: r'time_coinapi')
  DateTime? get timeCoinapi;

  /// Gets or sets the number of ask levels in the order book.
  @BuiltValueField(wireName: r'ask_levels')
  int? get askLevels;

  /// Gets or sets the number of bid levels in the order book.
  @BuiltValueField(wireName: r'bid_levels')
  int? get bidLevels;

  /// Gets or sets the depth of the ask side of the order book.
  @BuiltValueField(wireName: r'ask_depth')
  double? get askDepth;

  /// Gets or sets the depth of the bid side of the order book.
  @BuiltValueField(wireName: r'bid_depth')
  double? get bidDepth;

  V1OrderBookDepth._();

  factory V1OrderBookDepth([void updates(V1OrderBookDepthBuilder b)]) = _$V1OrderBookDepth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1OrderBookDepthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1OrderBookDepth> get serializer => _$V1OrderBookDepthSerializer();
}

class _$V1OrderBookDepthSerializer implements PrimitiveSerializer<V1OrderBookDepth> {
  @override
  final Iterable<Type> types = const [V1OrderBookDepth, _$V1OrderBookDepth];

  @override
  final String wireName = r'V1OrderBookDepth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1OrderBookDepth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.askLevels != null) {
      yield r'ask_levels';
      yield serializers.serialize(
        object.askLevels,
        specifiedType: const FullType(int),
      );
    }
    if (object.bidLevels != null) {
      yield r'bid_levels';
      yield serializers.serialize(
        object.bidLevels,
        specifiedType: const FullType(int),
      );
    }
    if (object.askDepth != null) {
      yield r'ask_depth';
      yield serializers.serialize(
        object.askDepth,
        specifiedType: const FullType(double),
      );
    }
    if (object.bidDepth != null) {
      yield r'bid_depth';
      yield serializers.serialize(
        object.bidDepth,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1OrderBookDepth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1OrderBookDepthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolId = valueDes;
          break;
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
        case r'ask_levels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.askLevels = valueDes;
          break;
        case r'bid_levels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bidLevels = valueDes;
          break;
        case r'ask_depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.askDepth = valueDes;
          break;
        case r'bid_depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.bidDepth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1OrderBookDepth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1OrderBookDepthBuilder();
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


