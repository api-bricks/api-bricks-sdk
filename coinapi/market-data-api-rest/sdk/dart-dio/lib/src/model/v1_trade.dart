//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_trade.g.dart';

/// Represents a trade executed on the exchange.
///
/// Properties:
/// * [symbolId] - The symbol identifier.
/// * [timeExchange] - The time of trade reported by the exchange.
/// * [timeCoinapi] - The time when the trade was received by CoinAPI.
/// * [uuid] - The unique identifier for the trade.
/// * [price] - The price of the transaction.
/// * [size] - The base asset amount traded in the transaction. If the value is zero, it indicates that the transaction price is just marking a data point, such as in the index time series.
/// * [takerSide] - The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
/// * [idTrade] - The trade identifier.
/// * [idOrderMaker] - The order maker identifier.
/// * [idOrderTaker] - The order taker identifier.
/// * [userTaker] - Wallet address of the taker (aggressive) side. Present only for L4 data sources.
/// * [userMaker] - Wallet address of the maker (passive) side. Present only for L4 data sources.
@BuiltValue()
abstract class V1Trade implements Built<V1Trade, V1TradeBuilder> {
  /// The symbol identifier.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// The time of trade reported by the exchange.
  @BuiltValueField(wireName: r'time_exchange')
  DateTime? get timeExchange;

  /// The time when the trade was received by CoinAPI.
  @BuiltValueField(wireName: r'time_coinapi')
  DateTime? get timeCoinapi;

  /// The unique identifier for the trade.
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// The price of the transaction.
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// The base asset amount traded in the transaction. If the value is zero, it indicates that the transaction price is just marking a data point, such as in the index time series.
  @BuiltValueField(wireName: r'size')
  double? get size;

  /// The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
  @BuiltValueField(wireName: r'taker_side')
  String? get takerSide;

  /// The trade identifier.
  @BuiltValueField(wireName: r'id_trade')
  String? get idTrade;

  /// The order maker identifier.
  @BuiltValueField(wireName: r'id_order_maker')
  String? get idOrderMaker;

  /// The order taker identifier.
  @BuiltValueField(wireName: r'id_order_taker')
  String? get idOrderTaker;

  /// Wallet address of the taker (aggressive) side. Present only for L4 data sources.
  @BuiltValueField(wireName: r'user_taker')
  String? get userTaker;

  /// Wallet address of the maker (passive) side. Present only for L4 data sources.
  @BuiltValueField(wireName: r'user_maker')
  String? get userMaker;

  V1Trade._();

  factory V1Trade([void updates(V1TradeBuilder b)]) = _$V1Trade;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1TradeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Trade> get serializer => _$V1TradeSerializer();
}

class _$V1TradeSerializer implements PrimitiveSerializer<V1Trade> {
  @override
  final Iterable<Type> types = const [V1Trade, _$V1Trade];

  @override
  final String wireName = r'V1Trade';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Trade object, {
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
    if (object.idTrade != null) {
      yield r'id_trade';
      yield serializers.serialize(
        object.idTrade,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.idOrderMaker != null) {
      yield r'id_order_maker';
      yield serializers.serialize(
        object.idOrderMaker,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.idOrderTaker != null) {
      yield r'id_order_taker';
      yield serializers.serialize(
        object.idOrderTaker,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userTaker != null) {
      yield r'user_taker';
      yield serializers.serialize(
        object.userTaker,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userMaker != null) {
      yield r'user_maker';
      yield serializers.serialize(
        object.userMaker,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Trade object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1TradeBuilder result,
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
        case r'id_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idTrade = valueDes;
          break;
        case r'id_order_maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idOrderMaker = valueDes;
          break;
        case r'id_order_taker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idOrderTaker = valueDes;
          break;
        case r'user_taker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userTaker = valueDes;
          break;
        case r'user_maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userMaker = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Trade deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1TradeBuilder();
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


