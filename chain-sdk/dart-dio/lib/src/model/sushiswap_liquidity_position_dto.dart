//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sushiswap_liquidity_position_dto.g.dart';

/// SushiswapLiquidityPositionDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (pair address)-(user address)
/// * [user] - User address.
/// * [pair] - Pair address.
/// * [liquidityTokenBalance] - Amount of LP tokens minted for this position.
/// * [block] - Block number at which position was created.
/// * [timestamp] - Creation time.
/// * [vid] - 
@BuiltValue()
abstract class SushiswapLiquidityPositionDTO implements Built<SushiswapLiquidityPositionDTO, SushiswapLiquidityPositionDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (pair address)-(user address)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// User address.
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// Pair address.
  @BuiltValueField(wireName: r'pair')
  String? get pair;

  /// Amount of LP tokens minted for this position.
  @BuiltValueField(wireName: r'liquidity_token_balance')
  String? get liquidityTokenBalance;

  /// Block number at which position was created.
  @BuiltValueField(wireName: r'block')
  int? get block;

  /// Creation time.
  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  SushiswapLiquidityPositionDTO._();

  factory SushiswapLiquidityPositionDTO([void updates(SushiswapLiquidityPositionDTOBuilder b)]) = _$SushiswapLiquidityPositionDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SushiswapLiquidityPositionDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SushiswapLiquidityPositionDTO> get serializer => _$SushiswapLiquidityPositionDTOSerializer();
}

class _$SushiswapLiquidityPositionDTOSerializer implements PrimitiveSerializer<SushiswapLiquidityPositionDTO> {
  @override
  final Iterable<Type> types = const [SushiswapLiquidityPositionDTO, _$SushiswapLiquidityPositionDTO];

  @override
  final String wireName = r'SushiswapLiquidityPositionDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SushiswapLiquidityPositionDTO object, {
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
    if (object.liquidityTokenBalance != null) {
      yield r'liquidity_token_balance';
      yield serializers.serialize(
        object.liquidityTokenBalance,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.block != null) {
      yield r'block';
      yield serializers.serialize(
        object.block,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SushiswapLiquidityPositionDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SushiswapLiquidityPositionDTOBuilder result,
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
        case r'liquidity_token_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityTokenBalance = valueDes;
          break;
        case r'block':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.block = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
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
  SushiswapLiquidityPositionDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SushiswapLiquidityPositionDTOBuilder();
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

