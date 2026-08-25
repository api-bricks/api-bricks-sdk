//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/v1_last_trade.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_quote_trade.g.dart';

/// Represents a quote trade data model.
///
/// Properties:
/// * [symbolId] - Gets or sets the symbol identifier.
/// * [timeExchange] - Gets or sets the exchange time of the quote trade.
/// * [timeCoinapi] - Gets or sets the CoinAPI time when the quote trade was received.
/// * [askPrice] - Gets or sets the best asking price.
/// * [askSize] - Gets or sets the volume resting on the best ask. If the value is equal to zero, then the size is unknown.
/// * [bidPrice] - Gets or sets the best bidding price.
/// * [bidSize] - Gets or sets the volume resting on the best bid. If the value is equal to zero, then the size is unknown.
/// * [lastTrade] 
@BuiltValue()
abstract class V1QuoteTrade implements Built<V1QuoteTrade, V1QuoteTradeBuilder> {
  /// Gets or sets the symbol identifier.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the exchange time of the quote trade.
  @BuiltValueField(wireName: r'time_exchange')
  DateTime? get timeExchange;

  /// Gets or sets the CoinAPI time when the quote trade was received.
  @BuiltValueField(wireName: r'time_coinapi')
  DateTime? get timeCoinapi;

  /// Gets or sets the best asking price.
  @BuiltValueField(wireName: r'ask_price')
  double? get askPrice;

  /// Gets or sets the volume resting on the best ask. If the value is equal to zero, then the size is unknown.
  @BuiltValueField(wireName: r'ask_size')
  double? get askSize;

  /// Gets or sets the best bidding price.
  @BuiltValueField(wireName: r'bid_price')
  double? get bidPrice;

  /// Gets or sets the volume resting on the best bid. If the value is equal to zero, then the size is unknown.
  @BuiltValueField(wireName: r'bid_size')
  double? get bidSize;

  @BuiltValueField(wireName: r'last_trade')
  V1LastTrade? get lastTrade;

  V1QuoteTrade._();

  factory V1QuoteTrade([void updates(V1QuoteTradeBuilder b)]) = _$V1QuoteTrade;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1QuoteTradeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1QuoteTrade> get serializer => _$V1QuoteTradeSerializer();
}

class _$V1QuoteTradeSerializer implements PrimitiveSerializer<V1QuoteTrade> {
  @override
  final Iterable<Type> types = const [V1QuoteTrade, _$V1QuoteTrade];

  @override
  final String wireName = r'V1QuoteTrade';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1QuoteTrade object, {
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
    if (object.askPrice != null) {
      yield r'ask_price';
      yield serializers.serialize(
        object.askPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.askSize != null) {
      yield r'ask_size';
      yield serializers.serialize(
        object.askSize,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.bidPrice != null) {
      yield r'bid_price';
      yield serializers.serialize(
        object.bidPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.bidSize != null) {
      yield r'bid_size';
      yield serializers.serialize(
        object.bidSize,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.lastTrade != null) {
      yield r'last_trade';
      yield serializers.serialize(
        object.lastTrade,
        specifiedType: const FullType(V1LastTrade),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1QuoteTrade object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1QuoteTradeBuilder result,
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
        case r'ask_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.askPrice = valueDes;
          break;
        case r'ask_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.askSize = valueDes;
          break;
        case r'bid_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.bidPrice = valueDes;
          break;
        case r'bid_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.bidSize = valueDes;
          break;
        case r'last_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(V1LastTrade),
          ) as V1LastTrade?;
          if (valueDes == null) continue;
          result.lastTrade.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1QuoteTrade deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1QuoteTradeBuilder();
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


