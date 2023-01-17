//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dex_order_dto.g.dart';

/// Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Identifier, format: (owner address)-(order id)
/// * [owner] - Reference to owner.
/// * [orderId] - Order id.
/// * [fromBatchId] - Batch id from which order became valid.
/// * [fromEpoch] - Start of epoch in which order was placed and became valid.
/// * [untilBatchId] - Batch id until which trade was still valid.
/// * [untilEpoch] - End of epoch in which order was placed.
/// * [buyToken] - Identifier of token that was bought.
/// * [sellToken] - Identifier of token that was sold.
/// * [priceNumerator] - Price enumerator.
/// * [priceDenominator] - Price denominator.
/// * [maxSellAmount] - Maximum sell amount.
/// * [minReceiveAmount] - Minimum receive amount.
/// * [soldVolume] - Sold volume.
/// * [boughtVolume] - Bought volume.
/// * [createEpoch] - Epoch in which order was created.
/// * [cancelEpoch] - Epoch in which order was cancelled.
/// * [deleteEpoch] - Epoch in which order was deleted.
/// * [txHash] - Transaction hash.
/// * [txLogIndex] - Event index within transaction.
/// * [vid] - 
@BuiltValue()
abstract class DexOrderDTO implements Built<DexOrderDTO, DexOrderDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Identifier, format: (owner address)-(order id)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Reference to owner.
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  /// Order id.
  @BuiltValueField(wireName: r'order_id')
  int? get orderId;

  /// Batch id from which order became valid.
  @BuiltValueField(wireName: r'from_batch_id')
  String? get fromBatchId;

  /// Start of epoch in which order was placed and became valid.
  @BuiltValueField(wireName: r'from_epoch')
  String? get fromEpoch;

  /// Batch id until which trade was still valid.
  @BuiltValueField(wireName: r'until_batch_id')
  String? get untilBatchId;

  /// End of epoch in which order was placed.
  @BuiltValueField(wireName: r'until_epoch')
  String? get untilEpoch;

  /// Identifier of token that was bought.
  @BuiltValueField(wireName: r'buy_token')
  String? get buyToken;

  /// Identifier of token that was sold.
  @BuiltValueField(wireName: r'sell_token')
  String? get sellToken;

  /// Price enumerator.
  @BuiltValueField(wireName: r'price_numerator')
  String? get priceNumerator;

  /// Price denominator.
  @BuiltValueField(wireName: r'price_denominator')
  String? get priceDenominator;

  /// Maximum sell amount.
  @BuiltValueField(wireName: r'max_sell_amount')
  String? get maxSellAmount;

  /// Minimum receive amount.
  @BuiltValueField(wireName: r'min_receive_amount')
  String? get minReceiveAmount;

  /// Sold volume.
  @BuiltValueField(wireName: r'sold_volume')
  String? get soldVolume;

  /// Bought volume.
  @BuiltValueField(wireName: r'bought_volume')
  String? get boughtVolume;

  /// Epoch in which order was created.
  @BuiltValueField(wireName: r'create_epoch')
  String? get createEpoch;

  /// Epoch in which order was cancelled.
  @BuiltValueField(wireName: r'cancel_epoch')
  String? get cancelEpoch;

  /// Epoch in which order was deleted.
  @BuiltValueField(wireName: r'delete_epoch')
  String? get deleteEpoch;

  /// Transaction hash.
  @BuiltValueField(wireName: r'tx_hash')
  String? get txHash;

  /// Event index within transaction.
  @BuiltValueField(wireName: r'tx_log_index')
  String? get txLogIndex;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  DexOrderDTO._();

  factory DexOrderDTO([void updates(DexOrderDTOBuilder b)]) = _$DexOrderDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DexOrderDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DexOrderDTO> get serializer => _$DexOrderDTOSerializer();
}

class _$DexOrderDTOSerializer implements PrimitiveSerializer<DexOrderDTO> {
  @override
  final Iterable<Type> types = const [DexOrderDTO, _$DexOrderDTO];

  @override
  final String wireName = r'DexOrderDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DexOrderDTO object, {
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
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(int),
      );
    }
    if (object.fromBatchId != null) {
      yield r'from_batch_id';
      yield serializers.serialize(
        object.fromBatchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fromEpoch != null) {
      yield r'from_epoch';
      yield serializers.serialize(
        object.fromEpoch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.untilBatchId != null) {
      yield r'until_batch_id';
      yield serializers.serialize(
        object.untilBatchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.untilEpoch != null) {
      yield r'until_epoch';
      yield serializers.serialize(
        object.untilEpoch,
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
    if (object.sellToken != null) {
      yield r'sell_token';
      yield serializers.serialize(
        object.sellToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceNumerator != null) {
      yield r'price_numerator';
      yield serializers.serialize(
        object.priceNumerator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceDenominator != null) {
      yield r'price_denominator';
      yield serializers.serialize(
        object.priceDenominator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxSellAmount != null) {
      yield r'max_sell_amount';
      yield serializers.serialize(
        object.maxSellAmount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minReceiveAmount != null) {
      yield r'min_receive_amount';
      yield serializers.serialize(
        object.minReceiveAmount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.soldVolume != null) {
      yield r'sold_volume';
      yield serializers.serialize(
        object.soldVolume,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.boughtVolume != null) {
      yield r'bought_volume';
      yield serializers.serialize(
        object.boughtVolume,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createEpoch != null) {
      yield r'create_epoch';
      yield serializers.serialize(
        object.createEpoch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cancelEpoch != null) {
      yield r'cancel_epoch';
      yield serializers.serialize(
        object.cancelEpoch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deleteEpoch != null) {
      yield r'delete_epoch';
      yield serializers.serialize(
        object.deleteEpoch,
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
    if (object.txLogIndex != null) {
      yield r'tx_log_index';
      yield serializers.serialize(
        object.txLogIndex,
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
    DexOrderDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DexOrderDTOBuilder result,
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
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderId = valueDes;
          break;
        case r'from_batch_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fromBatchId = valueDes;
          break;
        case r'from_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fromEpoch = valueDes;
          break;
        case r'until_batch_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.untilBatchId = valueDes;
          break;
        case r'until_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.untilEpoch = valueDes;
          break;
        case r'buy_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buyToken = valueDes;
          break;
        case r'sell_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sellToken = valueDes;
          break;
        case r'price_numerator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceNumerator = valueDes;
          break;
        case r'price_denominator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceDenominator = valueDes;
          break;
        case r'max_sell_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maxSellAmount = valueDes;
          break;
        case r'min_receive_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.minReceiveAmount = valueDes;
          break;
        case r'sold_volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.soldVolume = valueDes;
          break;
        case r'bought_volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.boughtVolume = valueDes;
          break;
        case r'create_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createEpoch = valueDes;
          break;
        case r'cancel_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancelEpoch = valueDes;
          break;
        case r'delete_epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deleteEpoch = valueDes;
          break;
        case r'tx_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txHash = valueDes;
          break;
        case r'tx_log_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txLogIndex = valueDes;
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
  DexOrderDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DexOrderDTOBuilder();
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

