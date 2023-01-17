//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/transactions_e_trade_aggressive_side.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cow_trade_dto.g.dart';

/// Trade entity.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (order id)|(transaction hash)|(event index).
/// * [timestamp] - Block's timestamp.
/// * [gasPrice] - Transaction's gas price.
/// * [gasLimit] - Transaction's gas limit.
/// * [feeAmount] - Trade's fee amount.
/// * [txHash] - Trade event transaction hash.
/// * [settlement] - Reference to settlement.
/// * [buyAmount] - Buy amount.
/// * [sellAmount] - Sell amount.
/// * [sellToken] - Address of token that is sold.
/// * [buyToken] - Address of token that is bought.
/// * [order] - Reference to order.
/// * [vid] - 
/// * [poolId] 
/// * [transactionId] 
/// * [evaluatedPrice] 
/// * [evaluatedAmount] 
/// * [evaluatedAggressor] 
@BuiltValue()
abstract class CowTradeDTO implements Built<CowTradeDTO, CowTradeDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (order id)|(transaction hash)|(event index).
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Block's timestamp.
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// Transaction's gas price.
  @BuiltValueField(wireName: r'gas_price')
  String? get gasPrice;

  /// Transaction's gas limit.
  @BuiltValueField(wireName: r'gas_limit')
  String? get gasLimit;

  /// Trade's fee amount.
  @BuiltValueField(wireName: r'fee_amount')
  String? get feeAmount;

  /// Trade event transaction hash.
  @BuiltValueField(wireName: r'tx_hash')
  String? get txHash;

  /// Reference to settlement.
  @BuiltValueField(wireName: r'settlement')
  String? get settlement;

  /// Buy amount.
  @BuiltValueField(wireName: r'buy_amount')
  String? get buyAmount;

  /// Sell amount.
  @BuiltValueField(wireName: r'sell_amount')
  String? get sellAmount;

  /// Address of token that is sold.
  @BuiltValueField(wireName: r'sell_token')
  String? get sellToken;

  /// Address of token that is bought.
  @BuiltValueField(wireName: r'buy_token')
  String? get buyToken;

  /// Reference to order.
  @BuiltValueField(wireName: r'order')
  String? get order;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  @BuiltValueField(wireName: r'pool_id')
  String? get poolId;

  @BuiltValueField(wireName: r'transaction_id')
  String? get transactionId;

  @BuiltValueField(wireName: r'evaluated_price')
  double? get evaluatedPrice;

  @BuiltValueField(wireName: r'evaluated_amount')
  double? get evaluatedAmount;

  @BuiltValueField(wireName: r'evaluated_aggressor')
  TransactionsETradeAggressiveSide? get evaluatedAggressor;
  // enum evaluatedAggressorEnum {  Buy,  Sell,  EstimatedBuy,  EstimatedSell,  Unknown,  };

  CowTradeDTO._();

  factory CowTradeDTO([void updates(CowTradeDTOBuilder b)]) = _$CowTradeDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CowTradeDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CowTradeDTO> get serializer => _$CowTradeDTOSerializer();
}

class _$CowTradeDTOSerializer implements PrimitiveSerializer<CowTradeDTO> {
  @override
  final Iterable<Type> types = const [CowTradeDTO, _$CowTradeDTO];

  @override
  final String wireName = r'CowTradeDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CowTradeDTO object, {
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
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gasPrice != null) {
      yield r'gas_price';
      yield serializers.serialize(
        object.gasPrice,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gasLimit != null) {
      yield r'gas_limit';
      yield serializers.serialize(
        object.gasLimit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeAmount != null) {
      yield r'fee_amount';
      yield serializers.serialize(
        object.feeAmount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.txHash != null) {
      yield r'tx_hash';
      yield serializers.serialize(
        object.txHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.settlement != null) {
      yield r'settlement';
      yield serializers.serialize(
        object.settlement,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buyAmount != null) {
      yield r'buy_amount';
      yield serializers.serialize(
        object.buyAmount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sellAmount != null) {
      yield r'sell_amount';
      yield serializers.serialize(
        object.sellAmount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sellToken != null) {
      yield r'sell_token';
      yield serializers.serialize(
        object.sellToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buyToken != null) {
      yield r'buy_token';
      yield serializers.serialize(
        object.buyToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CowTradeDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CowTradeDTOBuilder result,
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
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'gas_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gasPrice = valueDes;
          break;
        case r'gas_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gasLimit = valueDes;
          break;
        case r'fee_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeAmount = valueDes;
          break;
        case r'tx_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txHash = valueDes;
          break;
        case r'settlement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.settlement = valueDes;
          break;
        case r'buy_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buyAmount = valueDes;
          break;
        case r'sell_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sellAmount = valueDes;
          break;
        case r'sell_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sellToken = valueDes;
          break;
        case r'buy_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buyToken = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.order = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CowTradeDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CowTradeDTOBuilder();
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

