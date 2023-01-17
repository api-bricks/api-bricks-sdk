//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sushiswap_liquidity_position_snapshot_dto.g.dart';

/// This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (pair address)-(user address)-(timestamp)
/// * [liquidityPosition] - Reference to LP identifier.
/// * [timestamp] - Creation time.
/// * [block] - Block in which snapshot has been created.
/// * [user] - Reference to user.
/// * [pair] - Reference to the pair liquidity is being provided on.
/// * [token0PriceUsd] - Snapshot of token0 price in USD.
/// * [token1PriceUsd] - Snapshot of token0 price in USD.
/// * [reserve0] - Snapshot of pair token0 reserves.
/// * [reserve1] - Snapshot of pair token1 reserves.
/// * [reserveUsd] - Snapshot of pair reserves in USD.
/// * [liquidityTokenTotalSupply] - Snapshot of pool token supply.
/// * [liquidityTokenBalance] - Snapshot of users pool token balance.
/// * [vid] - 
@BuiltValue()
abstract class SushiswapLiquidityPositionSnapshotDTO implements Built<SushiswapLiquidityPositionSnapshotDTO, SushiswapLiquidityPositionSnapshotDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (pair address)-(user address)-(timestamp)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Reference to LP identifier.
  @BuiltValueField(wireName: r'liquidity_position')
  String? get liquidityPosition;

  /// Creation time.
  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  /// Block in which snapshot has been created.
  @BuiltValueField(wireName: r'block')
  int? get block;

  /// Reference to user.
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// Reference to the pair liquidity is being provided on.
  @BuiltValueField(wireName: r'pair')
  String? get pair;

  /// Snapshot of token0 price in USD.
  @BuiltValueField(wireName: r'token_0_price_usd')
  String? get token0PriceUsd;

  /// Snapshot of token0 price in USD.
  @BuiltValueField(wireName: r'token_1_price_usd')
  String? get token1PriceUsd;

  /// Snapshot of pair token0 reserves.
  @BuiltValueField(wireName: r'reserve_0')
  String? get reserve0;

  /// Snapshot of pair token1 reserves.
  @BuiltValueField(wireName: r'reserve_1')
  String? get reserve1;

  /// Snapshot of pair reserves in USD.
  @BuiltValueField(wireName: r'reserve_usd')
  String? get reserveUsd;

  /// Snapshot of pool token supply.
  @BuiltValueField(wireName: r'liquidity_token_total_supply')
  String? get liquidityTokenTotalSupply;

  /// Snapshot of users pool token balance.
  @BuiltValueField(wireName: r'liquidity_token_balance')
  String? get liquidityTokenBalance;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  SushiswapLiquidityPositionSnapshotDTO._();

  factory SushiswapLiquidityPositionSnapshotDTO([void updates(SushiswapLiquidityPositionSnapshotDTOBuilder b)]) = _$SushiswapLiquidityPositionSnapshotDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SushiswapLiquidityPositionSnapshotDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SushiswapLiquidityPositionSnapshotDTO> get serializer => _$SushiswapLiquidityPositionSnapshotDTOSerializer();
}

class _$SushiswapLiquidityPositionSnapshotDTOSerializer implements PrimitiveSerializer<SushiswapLiquidityPositionSnapshotDTO> {
  @override
  final Iterable<Type> types = const [SushiswapLiquidityPositionSnapshotDTO, _$SushiswapLiquidityPositionSnapshotDTO];

  @override
  final String wireName = r'SushiswapLiquidityPositionSnapshotDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SushiswapLiquidityPositionSnapshotDTO object, {
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
    if (object.liquidityPosition != null) {
      yield r'liquidity_position';
      yield serializers.serialize(
        object.liquidityPosition,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(int),
      );
    }
    if (object.block != null) {
      yield r'block';
      yield serializers.serialize(
        object.block,
        specifiedType: const FullType(int),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pair != null) {
      yield r'pair';
      yield serializers.serialize(
        object.pair,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token0PriceUsd != null) {
      yield r'token_0_price_usd';
      yield serializers.serialize(
        object.token0PriceUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token1PriceUsd != null) {
      yield r'token_1_price_usd';
      yield serializers.serialize(
        object.token1PriceUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reserve0 != null) {
      yield r'reserve_0';
      yield serializers.serialize(
        object.reserve0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reserve1 != null) {
      yield r'reserve_1';
      yield serializers.serialize(
        object.reserve1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reserveUsd != null) {
      yield r'reserve_usd';
      yield serializers.serialize(
        object.reserveUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityTokenTotalSupply != null) {
      yield r'liquidity_token_total_supply';
      yield serializers.serialize(
        object.liquidityTokenTotalSupply,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityTokenBalance != null) {
      yield r'liquidity_token_balance';
      yield serializers.serialize(
        object.liquidityTokenBalance,
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
    SushiswapLiquidityPositionSnapshotDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SushiswapLiquidityPositionSnapshotDTOBuilder result,
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
        case r'liquidity_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityPosition = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        case r'block':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.block = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        case r'pair':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pair = valueDes;
          break;
        case r'token_0_price_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token0PriceUsd = valueDes;
          break;
        case r'token_1_price_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token1PriceUsd = valueDes;
          break;
        case r'reserve_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reserve0 = valueDes;
          break;
        case r'reserve_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reserve1 = valueDes;
          break;
        case r'reserve_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reserveUsd = valueDes;
          break;
        case r'liquidity_token_total_supply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityTokenTotalSupply = valueDes;
          break;
        case r'liquidity_token_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityTokenBalance = valueDes;
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
  SushiswapLiquidityPositionSnapshotDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SushiswapLiquidityPositionSnapshotDTOBuilder();
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

