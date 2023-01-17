//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sushiswap_mint_dto.g.dart';

/// Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (transaction hash)-(index in the transaction mint array).
/// * [transaction] - Reference to the transaction Mint was included in.
/// * [timestamp] - Timestamp of Mint, used to sort recent liquidity provisions.
/// * [pair] - Reference to pair.
/// * [to] - Recipient of liquidity tokens.
/// * [liquidity] - Amount of liquidity tokens minted.
/// * [sender] - Address that initiated the liquidity provision.
/// * [amount0] - Amount of token0 provided.
/// * [amount1] - Amount of token1 provided.
/// * [logIndex] - Index in the transaction event was emitted.
/// * [amountUsd] - Derived USD value of token0 amount plus token1 amount.
/// * [feeTo] - Address of fee recipient (if fee is on).
/// * [feeLiquidity] - Amount of liquidity sent to fee recipient (if fee is on).
/// * [vid] - 
@BuiltValue()
abstract class SushiswapMintDTO implements Built<SushiswapMintDTO, SushiswapMintDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (transaction hash)-(index in the transaction mint array).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Reference to the transaction Mint was included in.
  @BuiltValueField(wireName: r'transaction')
  String? get transaction;

  /// Timestamp of Mint, used to sort recent liquidity provisions.
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// Reference to pair.
  @BuiltValueField(wireName: r'pair')
  String? get pair;

  /// Recipient of liquidity tokens.
  @BuiltValueField(wireName: r'to')
  String? get to;

  /// Amount of liquidity tokens minted.
  @BuiltValueField(wireName: r'liquidity')
  String? get liquidity;

  /// Address that initiated the liquidity provision.
  @BuiltValueField(wireName: r'sender')
  String? get sender;

  /// Amount of token0 provided.
  @BuiltValueField(wireName: r'amount_0')
  String? get amount0;

  /// Amount of token1 provided.
  @BuiltValueField(wireName: r'amount_1')
  String? get amount1;

  /// Index in the transaction event was emitted.
  @BuiltValueField(wireName: r'log_index')
  String? get logIndex;

  /// Derived USD value of token0 amount plus token1 amount.
  @BuiltValueField(wireName: r'amount_usd')
  String? get amountUsd;

  /// Address of fee recipient (if fee is on).
  @BuiltValueField(wireName: r'fee_to')
  String? get feeTo;

  /// Amount of liquidity sent to fee recipient (if fee is on).
  @BuiltValueField(wireName: r'fee_liquidity')
  String? get feeLiquidity;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  SushiswapMintDTO._();

  factory SushiswapMintDTO([void updates(SushiswapMintDTOBuilder b)]) = _$SushiswapMintDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SushiswapMintDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SushiswapMintDTO> get serializer => _$SushiswapMintDTOSerializer();
}

class _$SushiswapMintDTOSerializer implements PrimitiveSerializer<SushiswapMintDTO> {
  @override
  final Iterable<Type> types = const [SushiswapMintDTO, _$SushiswapMintDTO];

  @override
  final String wireName = r'SushiswapMintDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SushiswapMintDTO object, {
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
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
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
    SushiswapMintDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SushiswapMintDTOBuilder result,
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
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
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
  SushiswapMintDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SushiswapMintDTOBuilder();
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

