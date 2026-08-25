//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_order_book_base.g.dart';

/// Represents the base model for order book data.
///
/// Properties:
/// * [symbolId] - Gets or sets the symbol identifier.
/// * [timeExchange] - Gets or sets the exchange time of the order book.
/// * [timeCoinapi] - Gets or sets the CoinAPI time when the order book was received.
/// * [asks] - Gets or sets the asks made by market makers.
/// * [bids] - Gets or sets the bids made by market makers.
@BuiltValue()
abstract class V1OrderBookBase implements Built<V1OrderBookBase, V1OrderBookBaseBuilder> {
  /// Gets or sets the symbol identifier.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the exchange time of the order book.
  @BuiltValueField(wireName: r'time_exchange')
  DateTime? get timeExchange;

  /// Gets or sets the CoinAPI time when the order book was received.
  @BuiltValueField(wireName: r'time_coinapi')
  DateTime? get timeCoinapi;

  /// Gets or sets the asks made by market makers.
  @BuiltValueField(wireName: r'asks')
  JsonObject? get asks;

  /// Gets or sets the bids made by market makers.
  @BuiltValueField(wireName: r'bids')
  JsonObject? get bids;

  V1OrderBookBase._();

  factory V1OrderBookBase([void updates(V1OrderBookBaseBuilder b)]) = _$V1OrderBookBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1OrderBookBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1OrderBookBase> get serializer => _$V1OrderBookBaseSerializer();
}

class _$V1OrderBookBaseSerializer implements PrimitiveSerializer<V1OrderBookBase> {
  @override
  final Iterable<Type> types = const [V1OrderBookBase, _$V1OrderBookBase];

  @override
  final String wireName = r'V1OrderBookBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1OrderBookBase object, {
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
    if (object.asks != null) {
      yield r'asks';
      yield serializers.serialize(
        object.asks,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.bids != null) {
      yield r'bids';
      yield serializers.serialize(
        object.bids,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1OrderBookBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1OrderBookBaseBuilder result,
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
        case r'asks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.asks = valueDes;
          break;
        case r'bids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.bids = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1OrderBookBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1OrderBookBaseBuilder();
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


