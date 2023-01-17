//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/numerics_big_integer.dart';
import 'package:openapi/src/model/transactions_e_trade_aggressive_side.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_v3_swap_dto.g.dart';

/// Swap are created for each token swap within a pair.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [vid] - 
/// * [id] - Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
/// * [transaction] - Pointer to transaction.
/// * [timestamp] - Timestamp of transaction.
/// * [pool] - Pool swap occured within.
/// * [token0] - Reference to token0 as stored in pair contract.
/// * [token1] - Reference to token1 as stored in pair contract.
/// * [sender] - Sender of the swap.
/// * [recipient] - Recipient of the swap.
/// * [origin] - Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
/// * [amount0] - Delta of token0 swapped.
/// * [amount1] - Delta of token1 swapped.
/// * [amountUsd] - Derived amount of tokens sold in USD.
/// * [sqrtPriceX96] 
/// * [tick] 
/// * [logIndex] 
/// * [evaluatedPrice] 
/// * [evaluatedAmount] 
/// * [evaluatedAggressor] 
/// * [poolId] 
/// * [transactionId] 
@BuiltValue()
abstract class UniswapV3SwapDTO implements Built<UniswapV3SwapDTO, UniswapV3SwapDTOBuilder> {
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

  /// Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Pointer to transaction.
  @BuiltValueField(wireName: r'transaction')
  String? get transaction;

  /// Timestamp of transaction.
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Pool swap occured within.
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// Reference to token0 as stored in pair contract.
  @BuiltValueField(wireName: r'token_0')
  String? get token0;

  /// Reference to token1 as stored in pair contract.
  @BuiltValueField(wireName: r'token_1')
  String? get token1;

  /// Sender of the swap.
  @BuiltValueField(wireName: r'sender')
  String? get sender;

  /// Recipient of the swap.
  @BuiltValueField(wireName: r'recipient')
  String? get recipient;

  /// Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
  @BuiltValueField(wireName: r'origin')
  String? get origin;

  /// Delta of token0 swapped.
  @BuiltValueField(wireName: r'amount_0')
  String? get amount0;

  /// Delta of token1 swapped.
  @BuiltValueField(wireName: r'amount_1')
  String? get amount1;

  /// Derived amount of tokens sold in USD.
  @BuiltValueField(wireName: r'amount_usd')
  String? get amountUsd;

  @BuiltValueField(wireName: r'sqrt_price_x96')
  NumericsBigInteger? get sqrtPriceX96;

  @BuiltValueField(wireName: r'tick')
  NumericsBigInteger? get tick;

  @BuiltValueField(wireName: r'log_index')
  NumericsBigInteger? get logIndex;

  @BuiltValueField(wireName: r'evaluated_price')
  double? get evaluatedPrice;

  @BuiltValueField(wireName: r'evaluated_amount')
  double? get evaluatedAmount;

  @BuiltValueField(wireName: r'evaluated_aggressor')
  TransactionsETradeAggressiveSide? get evaluatedAggressor;
  // enum evaluatedAggressorEnum {  Buy,  Sell,  EstimatedBuy,  EstimatedSell,  Unknown,  };

  @BuiltValueField(wireName: r'pool_id')
  String? get poolId;

  @BuiltValueField(wireName: r'transaction_id')
  String? get transactionId;

  UniswapV3SwapDTO._();

  factory UniswapV3SwapDTO([void updates(UniswapV3SwapDTOBuilder b)]) = _$UniswapV3SwapDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapV3SwapDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapV3SwapDTO> get serializer => _$UniswapV3SwapDTOSerializer();
}

class _$UniswapV3SwapDTOSerializer implements PrimitiveSerializer<UniswapV3SwapDTO> {
  @override
  final Iterable<Type> types = const [UniswapV3SwapDTO, _$UniswapV3SwapDTO];

  @override
  final String wireName = r'UniswapV3SwapDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapV3SwapDTO object, {
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
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token0 != null) {
      yield r'token_0';
      yield serializers.serialize(
        object.token0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token1 != null) {
      yield r'token_1';
      yield serializers.serialize(
        object.token1,
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
    if (object.recipient != null) {
      yield r'recipient';
      yield serializers.serialize(
        object.recipient,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
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
    if (object.amountUsd != null) {
      yield r'amount_usd';
      yield serializers.serialize(
        object.amountUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sqrtPriceX96 != null) {
      yield r'sqrt_price_x96';
      yield serializers.serialize(
        object.sqrtPriceX96,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.tick != null) {
      yield r'tick';
      yield serializers.serialize(
        object.tick,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.logIndex != null) {
      yield r'log_index';
      yield serializers.serialize(
        object.logIndex,
        specifiedType: const FullType(NumericsBigInteger),
      );
    }
    if (object.evaluatedPrice != null) {
      yield r'evaluated_price';
      yield serializers.serialize(
        object.evaluatedPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.evaluatedAmount != null) {
      yield r'evaluated_amount';
      yield serializers.serialize(
        object.evaluatedAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.evaluatedAggressor != null) {
      yield r'evaluated_aggressor';
      yield serializers.serialize(
        object.evaluatedAggressor,
        specifiedType: const FullType(TransactionsETradeAggressiveSide),
      );
    }
    if (object.poolId != null) {
      yield r'pool_id';
      yield serializers.serialize(
        object.poolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UniswapV3SwapDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapV3SwapDTOBuilder result,
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
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token0 = valueDes;
          break;
        case r'token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token1 = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sender = valueDes;
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recipient = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.origin = valueDes;
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
        case r'amount_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.amountUsd = valueDes;
          break;
        case r'sqrt_price_x96':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.sqrtPriceX96.replace(valueDes);
          break;
        case r'tick':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.tick.replace(valueDes);
          break;
        case r'log_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NumericsBigInteger),
          ) as NumericsBigInteger;
          result.logIndex.replace(valueDes);
          break;
        case r'evaluated_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.evaluatedPrice = valueDes;
          break;
        case r'evaluated_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.evaluatedAmount = valueDes;
          break;
        case r'evaluated_aggressor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransactionsETradeAggressiveSide),
          ) as TransactionsETradeAggressiveSide;
          result.evaluatedAggressor = valueDes;
          break;
        case r'pool_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.poolId = valueDes;
          break;
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UniswapV3SwapDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapV3SwapDTOBuilder();
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

