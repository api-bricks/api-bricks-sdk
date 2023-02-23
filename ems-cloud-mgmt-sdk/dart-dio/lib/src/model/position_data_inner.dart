//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ord_side.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position_data_inner.g.dart';

/// The Position object.
///
/// Properties:
/// * [symbolIdExchange] - Exchange symbol.
/// * [symbolIdCoinapi] - CoinAPI symbol.
/// * [avgEntryPrice] - Calculated average price of all fills on this position.
/// * [quantity] - The current position quantity.
/// * [side] 
/// * [unrealizedPnl] - Unrealised profit or loss (PNL) of this position.
/// * [leverage] - Leverage for this position reported by the exchange.
/// * [crossMargin] - Is cross margin mode enable for this position?
/// * [liquidationPrice] - Liquidation price. If mark price will reach this value, the position will be liquidated.
/// * [rawData] 
@BuiltValue()
abstract class PositionDataInner implements Built<PositionDataInner, PositionDataInnerBuilder> {
  /// Exchange symbol.
  @BuiltValueField(wireName: r'symbol_id_exchange')
  String? get symbolIdExchange;

  /// CoinAPI symbol.
  @BuiltValueField(wireName: r'symbol_id_coinapi')
  String? get symbolIdCoinapi;

  /// Calculated average price of all fills on this position.
  @BuiltValueField(wireName: r'avg_entry_price')
  num? get avgEntryPrice;

  /// The current position quantity.
  @BuiltValueField(wireName: r'quantity')
  num? get quantity;

  @BuiltValueField(wireName: r'side')
  OrdSide? get side;
  // enum sideEnum {  BUY,  SELL,  };

  /// Unrealised profit or loss (PNL) of this position.
  @BuiltValueField(wireName: r'unrealized_pnl')
  num? get unrealizedPnl;

  /// Leverage for this position reported by the exchange.
  @BuiltValueField(wireName: r'leverage')
  num? get leverage;

  /// Is cross margin mode enable for this position?
  @BuiltValueField(wireName: r'cross_margin')
  bool? get crossMargin;

  /// Liquidation price. If mark price will reach this value, the position will be liquidated.
  @BuiltValueField(wireName: r'liquidation_price')
  num? get liquidationPrice;

  @BuiltValueField(wireName: r'raw_data')
  JsonObject? get rawData;

  PositionDataInner._();

  factory PositionDataInner([void updates(PositionDataInnerBuilder b)]) = _$PositionDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PositionDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PositionDataInner> get serializer => _$PositionDataInnerSerializer();
}

class _$PositionDataInnerSerializer implements PrimitiveSerializer<PositionDataInner> {
  @override
  final Iterable<Type> types = const [PositionDataInner, _$PositionDataInner];

  @override
  final String wireName = r'PositionDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PositionDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbolIdExchange != null) {
      yield r'symbol_id_exchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType(String),
      );
    }
    if (object.symbolIdCoinapi != null) {
      yield r'symbol_id_coinapi';
      yield serializers.serialize(
        object.symbolIdCoinapi,
        specifiedType: const FullType(String),
      );
    }
    if (object.avgEntryPrice != null) {
      yield r'avg_entry_price';
      yield serializers.serialize(
        object.avgEntryPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(num),
      );
    }
    if (object.side != null) {
      yield r'side';
      yield serializers.serialize(
        object.side,
        specifiedType: const FullType(OrdSide),
      );
    }
    if (object.unrealizedPnl != null) {
      yield r'unrealized_pnl';
      yield serializers.serialize(
        object.unrealizedPnl,
        specifiedType: const FullType(num),
      );
    }
    if (object.leverage != null) {
      yield r'leverage';
      yield serializers.serialize(
        object.leverage,
        specifiedType: const FullType(num),
      );
    }
    if (object.crossMargin != null) {
      yield r'cross_margin';
      yield serializers.serialize(
        object.crossMargin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.liquidationPrice != null) {
      yield r'liquidation_price';
      yield serializers.serialize(
        object.liquidationPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.rawData != null) {
      yield r'raw_data';
      yield serializers.serialize(
        object.rawData,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PositionDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PositionDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdExchange = valueDes;
          break;
        case r'symbol_id_coinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolIdCoinapi = valueDes;
          break;
        case r'avg_entry_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgEntryPrice = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.quantity = valueDes;
          break;
        case r'side':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdSide),
          ) as OrdSide;
          result.side = valueDes;
          break;
        case r'unrealized_pnl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unrealizedPnl = valueDes;
          break;
        case r'leverage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.leverage = valueDes;
          break;
        case r'cross_margin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.crossMargin = valueDes;
          break;
        case r'liquidation_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.liquidationPrice = valueDes;
          break;
        case r'raw_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.rawData = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PositionDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PositionDataInnerBuilder();
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

