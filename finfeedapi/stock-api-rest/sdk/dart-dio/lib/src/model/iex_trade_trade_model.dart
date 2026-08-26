//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iex_trade_trade_model.g.dart';

/// Represents the response DTO for a single trade event (report or break).
///
/// Properties:
/// * [isTradeBreak] - Indicates if this record represents a trade break (true) or a trade report (false).
/// * [symbol] - The stock symbol.
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch.
/// * [timestamp] - Time when the event was recorded as DateTime (UTC).
/// * [size] - Trade volume (or break volume) in number of shares.
/// * [price] - Trade price (or break price) as decimal.
/// * [tradeId] - IEX trade identifier (same for report and its corresponding break).
/// * [isIntermarketSweep] - Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order.
/// * [isExtendedHoursTrade] - Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade.
/// * [isOddLotTrade] - Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade.
/// * [isTradeThroughExempt] - Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross.
/// * [isSinglePriceCrossTrade] - Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading.
@BuiltValue()
abstract class IEXTradeTradeModel implements Built<IEXTradeTradeModel, IEXTradeTradeModelBuilder> {
  /// Indicates if this record represents a trade break (true) or a trade report (false).
  @BuiltValueField(wireName: r'is_trade_break')
  bool? get isTradeBreak;

  /// The stock symbol.
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch.
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the event was recorded as DateTime (UTC).
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Trade volume (or break volume) in number of shares.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Trade price (or break price) as decimal.
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// IEX trade identifier (same for report and its corresponding break).
  @BuiltValueField(wireName: r'trade_id')
  int? get tradeId;

  /// Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order.
  @BuiltValueField(wireName: r'is_intermarket_sweep')
  bool? get isIntermarketSweep;

  /// Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade.
  @BuiltValueField(wireName: r'is_extended_hours_trade')
  bool? get isExtendedHoursTrade;

  /// Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade.
  @BuiltValueField(wireName: r'is_odd_lot_trade')
  bool? get isOddLotTrade;

  /// Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross.
  @BuiltValueField(wireName: r'is_trade_through_exempt')
  bool? get isTradeThroughExempt;

  /// Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading.
  @BuiltValueField(wireName: r'is_single_price_cross_trade')
  bool? get isSinglePriceCrossTrade;

  IEXTradeTradeModel._();

  factory IEXTradeTradeModel([void updates(IEXTradeTradeModelBuilder b)]) = _$IEXTradeTradeModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IEXTradeTradeModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IEXTradeTradeModel> get serializer => _$IEXTradeTradeModelSerializer();
}

class _$IEXTradeTradeModelSerializer implements PrimitiveSerializer<IEXTradeTradeModel> {
  @override
  final Iterable<Type> types = const [IEXTradeTradeModel, _$IEXTradeTradeModel];

  @override
  final String wireName = r'IEXTradeTradeModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IEXTradeTradeModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isTradeBreak != null) {
      yield r'is_trade_break';
      yield serializers.serialize(
        object.isTradeBreak,
        specifiedType: const FullType(bool),
      );
    }
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampNanos != null) {
      yield r'timestamp_nanos';
      yield serializers.serialize(
        object.timestampNanos,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.tradeId != null) {
      yield r'trade_id';
      yield serializers.serialize(
        object.tradeId,
        specifiedType: const FullType(int),
      );
    }
    if (object.isIntermarketSweep != null) {
      yield r'is_intermarket_sweep';
      yield serializers.serialize(
        object.isIntermarketSweep,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isExtendedHoursTrade != null) {
      yield r'is_extended_hours_trade';
      yield serializers.serialize(
        object.isExtendedHoursTrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isOddLotTrade != null) {
      yield r'is_odd_lot_trade';
      yield serializers.serialize(
        object.isOddLotTrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isTradeThroughExempt != null) {
      yield r'is_trade_through_exempt';
      yield serializers.serialize(
        object.isTradeThroughExempt,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSinglePriceCrossTrade != null) {
      yield r'is_single_price_cross_trade';
      yield serializers.serialize(
        object.isSinglePriceCrossTrade,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IEXTradeTradeModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IEXTradeTradeModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_trade_break':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isTradeBreak = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'timestamp_nanos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestampNanos = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'trade_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tradeId = valueDes;
          break;
        case r'is_intermarket_sweep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isIntermarketSweep = valueDes;
          break;
        case r'is_extended_hours_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isExtendedHoursTrade = valueDes;
          break;
        case r'is_odd_lot_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOddLotTrade = valueDes;
          break;
        case r'is_trade_through_exempt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isTradeThroughExempt = valueDes;
          break;
        case r'is_single_price_cross_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isSinglePriceCrossTrade = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IEXTradeTradeModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IEXTradeTradeModelBuilder();
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


