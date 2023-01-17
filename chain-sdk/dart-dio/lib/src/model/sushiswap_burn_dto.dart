//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sushiswap_burn_dto.g.dart';

/// Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (transaction id):(transaction.burns.length).
/// * [transaction] - Reference to the transaction Burn was included in.
/// * [timestamp] - Timestamp of Burn, used to sort recent liquidity removals.
/// * [pair] - Reference to pair.
/// * [liquidity] - Amount of liquidity tokens burned.
/// * [sender] - Address that initiated the liquidity removal.
/// * [amount0] - Amount of token0 removed.
/// * [amount1] - Amount of token1 removed.
/// * [to] - Recipient of tokens.
/// * [logIndex] - Index in the transaction event was emitted.
/// * [amountUsd] - Derived amount based on available prices of tokens.
/// * [complete] - 
/// * [feeTo] - Address of fee recipient (if fee is on).
/// * [feeLiquidity] - Amount of tokens sent to fee recipient (if fee is on).
/// * [vid] - 
@BuiltValue()
abstract class SushiswapBurnDTO implements Built<SushiswapBurnDTO, SushiswapBurnDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (transaction id):(transaction.burns.length).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Reference to the transaction Burn was included in.
  @BuiltValueField(wireName: r'transaction')
  String? get transaction;

  /// Timestamp of Burn, used to sort recent liquidity removals.
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// Reference to pair.
  @BuiltValueField(wireName: r'pair')
  String? get pair;

  /// Amount of liquidity tokens burned.
  @BuiltValueField(wireName: r'liquidity')
  String? get liquidity;

  /// Address that initiated the liquidity removal.
  @BuiltValueField(wireName: r'sender')
  String? get sender;

  /// Amount of token0 removed.
  @BuiltValueField(wireName: r'amount_0')
  String? get amount0;

  /// Amount of token1 removed.
  @BuiltValueField(wireName: r'amount_1')
  String? get amount1;

  /// Recipient of tokens.
  @BuiltValueField(wireName: r'to')
  String? get to;

  /// Index in the transaction event was emitted.
  @BuiltValueField(wireName: r'log_index')
  String? get logIndex;

  /// Derived amount based on available prices of tokens.
  @BuiltValueField(wireName: r'amount_usd')
  String? get amountUsd;

  /// 
  @BuiltValueField(wireName: r'complete')
  bool? get complete;

  /// Address of fee recipient (if fee is on).
  @BuiltValueField(wireName: r'fee_to')
  String? get feeTo;

  /// Amount of tokens sent to fee recipient (if fee is on).
  @BuiltValueField(wireName: r'fee_liquidity')
  String? get feeLiquidity;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  SushiswapBurnDTO._();

  factory SushiswapBurnDTO([void updates(SushiswapBurnDTOBuilder b)]) = _$SushiswapBurnDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SushiswapBurnDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SushiswapBurnDTO> get serializer => _$SushiswapBurnDTOSerializer();
}

class _$SushiswapBurnDTOSerializer implements PrimitiveSerializer<SushiswapBurnDTO> {
  @override
  final Iterable<Type> types = const [SushiswapBurnDTO, _$SushiswapBurnDTO];

  @override
  final String wireName = r'SushiswapBurnDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SushiswapBurnDTO object, {
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
    if (object.transaction != null) {
      yield r'transaction';
      yield serializers.serialize(
        object.transaction,
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
    if (object.pair != null) {
      yield r'pair';
      yield serializers.serialize(
        object.pair,
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
    if (object.sender != null) {
      yield r'sender';
      yield serializers.serialize(
        object.sender,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.amount0 != null) {
      yield r'amount_0';
      yield serializers.serialize(
        object.amount0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.amount1 != null) {
      yield r'amount_1';
      yield serializers.serialize(
        object.amount1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logIndex != null) {
      yield r'log_index';
      yield serializers.serialize(
        object.logIndex,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.amountUsd != null) {
      yield r'amount_usd';
      yield serializers.serialize(
        object.amountUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.complete != null) {
      yield r'complete';
      yield serializers.serialize(
        object.complete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.feeTo != null) {
      yield r'fee_to';
      yield serializers.serialize(
        object.feeTo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeLiquidity != null) {
      yield r'fee_liquidity';
      yield serializers.serialize(
        object.feeLiquidity,
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
    SushiswapBurnDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SushiswapBurnDTOBuilder result,
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
        case r'transaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transaction = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'pair':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pair = valueDes;
          break;
        case r'liquidity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidity = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sender = valueDes;
          break;
        case r'amount_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.amount0 = valueDes;
          break;
        case r'amount_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.amount1 = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'log_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logIndex = valueDes;
          break;
        case r'amount_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.amountUsd = valueDes;
          break;
        case r'complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.complete = valueDes;
          break;
        case r'fee_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeTo = valueDes;
          break;
        case r'fee_liquidity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeLiquidity = valueDes;
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
  SushiswapBurnDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SushiswapBurnDTOBuilder();
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

