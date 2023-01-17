//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/numerics_big_integer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_v3_tick_dto.g.dart';

/// Ticks are the boundaries between discrete areas in price space.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [vid] - 
/// * [id] - Identifier, format: (pool address)#(tick index)
/// * [poolAddress] - Pool address.
/// * [tickIdx] 
/// * [pool] - Pool address.
/// * [liquidityGross] 
/// * [liquidityNet] 
/// * [price0] - Calculated price of token0 of tick within this pool - constant.
/// * [price1] - Calculated price of token1 of tick within this pool - constant.
/// * [volumeToken0] - Lifetime volume of token0 with this tick in range.
/// * [volumeToken1] - Lifetime volume of token1 with this tick in range.
/// * [volumeUsd] - Lifetime volume in derived USD with this tick in range.
/// * [untrackedVolumeUsd] - Lifetime volume in untracked USD with this tick in range.
/// * [feesUsd] - Fees in USD.
/// * [collectedFeesToken0] - All time collected fees in token0.
/// * [collectedFeesToken1] - All time collected fees in token1.
/// * [collectedFeesUsd] - All time collected fees in USD.
/// * [createdAtTimestamp] - Created time.
/// * [liquidityProviderCount] 
/// * [feeGrowthOutside0x128] 
/// * [feeGrowthOutside1x128] 
@BuiltValue()
abstract class UniswapV3TickDTO implements Built<UniswapV3TickDTO, UniswapV3TickDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  /// Identifier, format: (pool address)#(tick index)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Pool address.
  @BuiltValueField(wireName: r'pool_address')
  String? get poolAddress;

  @BuiltValueField(wireName: r'tick_idx')
  NumericsBigInteger? get tickIdx;

  /// Pool address.
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  @BuiltValueField(wireName: r'liquidity_gross')
  NumericsBigInteger? get liquidityGross;

  @BuiltValueField(wireName: r'liquidity_net')
  NumericsBigInteger? get liquidityNet;

  /// Calculated price of token0 of tick within this pool - constant.
  @BuiltValueField(wireName: r'price_0')
  String? get price0;

  /// Calculated price of token1 of tick within this pool - constant.
  @BuiltValueField(wireName: r'price_1')
  String? get price1;

  /// Lifetime volume of token0 with this tick in range.
  @BuiltValueField(wireName: r'volume_token_0')
  String? get volumeToken0;

  /// Lifetime volume of token1 with this tick in range.
  @BuiltValueField(wireName: r'volume_token_1')
  String? get volumeToken1;

  /// Lifetime volume in derived USD with this tick in range.
  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  /// Lifetime volume in untracked USD with this tick in range.
  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  /// Fees in USD.
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  /// All time collected fees in token0.
  @BuiltValueField(wireName: r'collected_fees_token_0')
  String? get collectedFeesToken0;

  /// All time collected fees in token1.
  @BuiltValueField(wireName: r'collected_fees_token_1')
  String? get collectedFeesToken1;

  /// All time collected fees in USD.
  @BuiltValueField(wireName: r'collected_fees_usd')
  String? get collectedFeesUsd;

  /// Created time.
  @BuiltValueField(wireName: r'created_at_timestamp')
  DateTime? get createdAtTimestamp;

  @BuiltValueField(wireName: r'liquidity_provider_count')
  NumericsBigInteger? get liquidityProviderCount;

  @BuiltValueField(wireName: r'fee_growth_outside_0x128')
  NumericsBigInteger? get feeGrowthOutside0x128;

  @BuiltValueField(wireName: r'fee_growth_outside_1x128')
  NumericsBigInteger? get feeGrowthOutside1x128;

  UniswapV3TickDTO._();

  factory UniswapV3TickDTO([void updates(UniswapV3TickDTOBuilder b)]) = _$UniswapV3TickDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapV3TickDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapV3TickDTO> get serializer => _$UniswapV3TickDTOSerializer();
}

class _$UniswapV3TickDTOSerializer implements PrimitiveSerializer<UniswapV3TickDTO> {
  @override
  final Iterable<Type> types = const [UniswapV3TickDTO, _$UniswapV3TickDTO];

  @override
  final String wireName = r'UniswapV3TickDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapV3TickDTO object, {
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
    if (object.vid != null) {
      yield r'vid';
      yield serializers.serialize(
        object.vid,
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
    if (object.poolAddress != null) {
      yield r'pool_address';
      yield serializers.serialize(
        object.poolAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tickIdx != null) {
      yield r'tick_idx';
      yield serializers.serialize(
        object.tickIdx,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityGross != null) {
      yield r'liquidity_gross';
      yield serializers.serialize(
        object.liquidityGross,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.liquidityNet != null) {
      yield r'liquidity_net';
      yield serializers.serialize(
        object.liquidityNet,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.price0 != null) {
      yield r'price_0';
      yield serializers.serialize(
        object.price0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.price1 != null) {
      yield r'price_1';
      yield serializers.serialize(
        object.price1,
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
    if (object.untrackedVolumeUsd != null) {
      yield r'untracked_volume_usd';
      yield serializers.serialize(
        object.untrackedVolumeUsd,
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
    if (object.collectedFeesToken0 != null) {
      yield r'collected_fees_token_0';
      yield serializers.serialize(
        object.collectedFeesToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.collectedFeesToken1 != null) {
      yield r'collected_fees_token_1';
      yield serializers.serialize(
        object.collectedFeesToken1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.collectedFeesUsd != null) {
      yield r'collected_fees_usd';
      yield serializers.serialize(
        object.collectedFeesUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAtTimestamp != null) {
      yield r'created_at_timestamp';
      yield serializers.serialize(
        object.createdAtTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.liquidityProviderCount != null) {
      yield r'liquidity_provider_count';
      yield serializers.serialize(
        object.liquidityProviderCount,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.feeGrowthOutside0x128 != null) {
      yield r'fee_growth_outside_0x128';
      yield serializers.serialize(
        object.feeGrowthOutside0x128,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.feeGrowthOutside1x128 != null) {
      yield r'fee_growth_outside_1x128';
      yield serializers.serialize(
        object.feeGrowthOutside1x128,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UniswapV3TickDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapV3TickDTOBuilder result,
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
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'pool_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.poolAddress = valueDes;
          break;
        case r'tick_idx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.tickIdx.replace(valueDes);
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'liquidity_gross':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.liquidityGross.replace(valueDes);
          break;
        case r'liquidity_net':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.liquidityNet.replace(valueDes);
          break;
        case r'price_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.price0 = valueDes;
          break;
        case r'price_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.price1 = valueDes;
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
        case r'untracked_volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.untrackedVolumeUsd = valueDes;
          break;
        case r'fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feesUsd = valueDes;
          break;
        case r'collected_fees_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collectedFeesToken0 = valueDes;
          break;
        case r'collected_fees_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collectedFeesToken1 = valueDes;
          break;
        case r'collected_fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collectedFeesUsd = valueDes;
          break;
        case r'created_at_timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAtTimestamp = valueDes;
          break;
        case r'liquidity_provider_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.liquidityProviderCount.replace(valueDes);
          break;
        case r'fee_growth_outside_0x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.feeGrowthOutside0x128.replace(valueDes);
          break;
        case r'fee_growth_outside_1x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.feeGrowthOutside1x128.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UniswapV3TickDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapV3TickDTOBuilder();
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

