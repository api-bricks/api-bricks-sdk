//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_v3_position_snapshot_dto.g.dart';

/// UniswapV3PositionSnapshotDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - NFT token identifier, format: (NFT token id)#(block number).
/// * [owner] - Owner of the NFT.
/// * [pool] - Pool the position is within.
/// * [position] - Position of which the snap was taken of.
/// * [timestamp] - Timestamp of block in which the snap was created.
/// * [liquidity] - Total position liquidity.
/// * [depositedToken0] - Amount of token 0 ever deposited to position.
/// * [depositedToken1] - Amount of token 1 ever deposited to position.
/// * [withdrawnToken0] - Amount of token 0 ever withdrawn from position (without fees).
/// * [withdrawnToken1] - Amount of token 1 ever withdrawn from position (without fees).
/// * [collectedFeesToken0] - All time collected fees in token0.
/// * [collectedFeesToken1] - All time collected fees in token1.
/// * [transaction] - Transaction in which the snapshot was initialized.
/// * [feeGrowthInside0LastX128] - Variable needed for fee computation.
/// * [feeGrowthInside1LastX128] - Variable needed for fee computation.
/// * [vid] - 
@BuiltValue()
abstract class UniswapV3PositionSnapshotDTO implements Built<UniswapV3PositionSnapshotDTO, UniswapV3PositionSnapshotDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// NFT token identifier, format: (NFT token id)#(block number).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Owner of the NFT.
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  /// Pool the position is within.
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// Position of which the snap was taken of.
  @BuiltValueField(wireName: r'position')
  String? get position;

  /// Timestamp of block in which the snap was created.
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// Total position liquidity.
  @BuiltValueField(wireName: r'liquidity')
  String? get liquidity;

  /// Amount of token 0 ever deposited to position.
  @BuiltValueField(wireName: r'deposited_token_0')
  String? get depositedToken0;

  /// Amount of token 1 ever deposited to position.
  @BuiltValueField(wireName: r'deposited_token_1')
  String? get depositedToken1;

  /// Amount of token 0 ever withdrawn from position (without fees).
  @BuiltValueField(wireName: r'withdrawn_token_0')
  String? get withdrawnToken0;

  /// Amount of token 1 ever withdrawn from position (without fees).
  @BuiltValueField(wireName: r'withdrawn_token_1')
  String? get withdrawnToken1;

  /// All time collected fees in token0.
  @BuiltValueField(wireName: r'collected_fees_token_0')
  String? get collectedFeesToken0;

  /// All time collected fees in token1.
  @BuiltValueField(wireName: r'collected_fees_token_1')
  String? get collectedFeesToken1;

  /// Transaction in which the snapshot was initialized.
  @BuiltValueField(wireName: r'transaction')
  String? get transaction;

  /// Variable needed for fee computation.
  @BuiltValueField(wireName: r'fee_growth_inside_0_last_x128')
  String? get feeGrowthInside0LastX128;

  /// Variable needed for fee computation.
  @BuiltValueField(wireName: r'fee_growth_inside_1_last_x128')
  String? get feeGrowthInside1LastX128;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  UniswapV3PositionSnapshotDTO._();

  factory UniswapV3PositionSnapshotDTO([void updates(UniswapV3PositionSnapshotDTOBuilder b)]) = _$UniswapV3PositionSnapshotDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapV3PositionSnapshotDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapV3PositionSnapshotDTO> get serializer => _$UniswapV3PositionSnapshotDTOSerializer();
}

class _$UniswapV3PositionSnapshotDTOSerializer implements PrimitiveSerializer<UniswapV3PositionSnapshotDTO> {
  @override
  final Iterable<Type> types = const [UniswapV3PositionSnapshotDTO, _$UniswapV3PositionSnapshotDTO];

  @override
  final String wireName = r'UniswapV3PositionSnapshotDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapV3PositionSnapshotDTO object, {
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
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidity != null) {
      yield r'liquidity';
      yield serializers.serialize(
        object.liquidity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.depositedToken0 != null) {
      yield r'deposited_token_0';
      yield serializers.serialize(
        object.depositedToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.depositedToken1 != null) {
      yield r'deposited_token_1';
      yield serializers.serialize(
        object.depositedToken1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.withdrawnToken0 != null) {
      yield r'withdrawn_token_0';
      yield serializers.serialize(
        object.withdrawnToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.withdrawnToken1 != null) {
      yield r'withdrawn_token_1';
      yield serializers.serialize(
        object.withdrawnToken1,
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
    if (object.transaction != null) {
      yield r'transaction';
      yield serializers.serialize(
        object.transaction,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthInside0LastX128 != null) {
      yield r'fee_growth_inside_0_last_x128';
      yield serializers.serialize(
        object.feeGrowthInside0LastX128,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthInside1LastX128 != null) {
      yield r'fee_growth_inside_1_last_x128';
      yield serializers.serialize(
        object.feeGrowthInside1LastX128,
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
    UniswapV3PositionSnapshotDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapV3PositionSnapshotDTOBuilder result,
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
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'liquidity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidity = valueDes;
          break;
        case r'deposited_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.depositedToken0 = valueDes;
          break;
        case r'deposited_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.depositedToken1 = valueDes;
          break;
        case r'withdrawn_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.withdrawnToken0 = valueDes;
          break;
        case r'withdrawn_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.withdrawnToken1 = valueDes;
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
        case r'transaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transaction = valueDes;
          break;
        case r'fee_growth_inside_0_last_x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthInside0LastX128 = valueDes;
          break;
        case r'fee_growth_inside_1_last_x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthInside1LastX128 = valueDes;
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
  UniswapV3PositionSnapshotDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapV3PositionSnapshotDTOBuilder();
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

