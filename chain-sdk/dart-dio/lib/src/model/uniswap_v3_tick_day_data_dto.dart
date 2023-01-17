//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_v3_tick_day_data_dto.g.dart';

/// Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (pool address)-(tick index)-(timestamp).
/// * [date] - Timestamp rounded to current day by dividing by 86400.
/// * [pool] - Pointer to pool.
/// * [tick] - Pointer to tick.
/// * [liquidityGross] - Total liquidity pool has as tick lower or upper at end of period.
/// * [liquidityNet] - How much liquidity changes when tick crossed at end of period.
/// * [volumeToken0] - Hourly volume of token0 with this tick in range.
/// * [volumeToken1] - Hourly volume of token1 with this tick in range.
/// * [volumeUsd] - Hourly volume in derived USD with this tick in range.
/// * [feesUsd] - Fees in USD.
/// * [feeGrowthOutside0x128] - Variable needed for fee computation.
/// * [feeGrowthOutside1x128] - Variable needed for fee computation.
/// * [vid] - 
@BuiltValue()
abstract class UniswapV3TickDayDataDTO implements Built<UniswapV3TickDayDataDTO, UniswapV3TickDayDataDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (pool address)-(tick index)-(timestamp).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Timestamp rounded to current day by dividing by 86400.
  @BuiltValueField(wireName: r'date')
  int? get date;

  /// Pointer to pool.
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// Pointer to tick.
  @BuiltValueField(wireName: r'tick')
  String? get tick;

  /// Total liquidity pool has as tick lower or upper at end of period.
  @BuiltValueField(wireName: r'liquidity_gross')
  String? get liquidityGross;

  /// How much liquidity changes when tick crossed at end of period.
  @BuiltValueField(wireName: r'liquidity_net')
  String? get liquidityNet;

  /// Hourly volume of token0 with this tick in range.
  @BuiltValueField(wireName: r'volume_token_0')
  String? get volumeToken0;

  /// Hourly volume of token1 with this tick in range.
  @BuiltValueField(wireName: r'volume_token_1')
  String? get volumeToken1;

  /// Hourly volume in derived USD with this tick in range.
  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  /// Fees in USD.
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  /// Variable needed for fee computation.
  @BuiltValueField(wireName: r'fee_growth_outside_0x128')
  String? get feeGrowthOutside0x128;

  /// Variable needed for fee computation.
  @BuiltValueField(wireName: r'fee_growth_outside_1x128')
  String? get feeGrowthOutside1x128;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  UniswapV3TickDayDataDTO._();

  factory UniswapV3TickDayDataDTO([void updates(UniswapV3TickDayDataDTOBuilder b)]) = _$UniswapV3TickDayDataDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapV3TickDayDataDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapV3TickDayDataDTO> get serializer => _$UniswapV3TickDayDataDTOSerializer();
}

class _$UniswapV3TickDayDataDTOSerializer implements PrimitiveSerializer<UniswapV3TickDayDataDTO> {
  @override
  final Iterable<Type> types = const [UniswapV3TickDayDataDTO, _$UniswapV3TickDayDataDTO];

  @override
  final String wireName = r'UniswapV3TickDayDataDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapV3TickDayDataDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entryTime != null) {
      yield r'entry_time';
      yield serializers.serialize(
        object.entryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.recvTime != null) {
      yield r'recv_time';
      yield serializers.serialize(
        object.recvTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.blockNumber != null) {
      yield r'block_number';
      yield serializers.serialize(
        object.blockNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(int),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tick != null) {
      yield r'tick';
      yield serializers.serialize(
        object.tick,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityGross != null) {
      yield r'liquidity_gross';
      yield serializers.serialize(
        object.liquidityGross,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityNet != null) {
      yield r'liquidity_net';
      yield serializers.serialize(
        object.liquidityNet,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volumeToken0 != null) {
      yield r'volume_token_0';
      yield serializers.serialize(
        object.volumeToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volumeToken1 != null) {
      yield r'volume_token_1';
      yield serializers.serialize(
        object.volumeToken1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volumeUsd != null) {
      yield r'volume_usd';
      yield serializers.serialize(
        object.volumeUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feesUsd != null) {
      yield r'fees_usd';
      yield serializers.serialize(
        object.feesUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthOutside0x128 != null) {
      yield r'fee_growth_outside_0x128';
      yield serializers.serialize(
        object.feeGrowthOutside0x128,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthOutside1x128 != null) {
      yield r'fee_growth_outside_1x128';
      yield serializers.serialize(
        object.feeGrowthOutside1x128,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vid != null) {
      yield r'vid';
      yield serializers.serialize(
        object.vid,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UniswapV3TickDayDataDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapV3TickDayDataDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entry_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.entryTime = valueDes;
          break;
        case r'recv_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recvTime = valueDes;
          break;
        case r'block_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blockNumber = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.date = valueDes;
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'tick':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tick = valueDes;
          break;
        case r'liquidity_gross':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityGross = valueDes;
          break;
        case r'liquidity_net':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityNet = valueDes;
          break;
        case r'volume_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeToken0 = valueDes;
          break;
        case r'volume_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeToken1 = valueDes;
          break;
        case r'volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeUsd = valueDes;
          break;
        case r'fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feesUsd = valueDes;
          break;
        case r'fee_growth_outside_0x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthOutside0x128 = valueDes;
          break;
        case r'fee_growth_outside_1x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthOutside1x128 = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UniswapV3TickDayDataDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapV3TickDayDataDTOBuilder();
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

