//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cryptopunks_trade_dto.g.dart';

/// CRYPTOPUNKSTradeDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [vid] - 
/// * [blockRange] - 
/// * [id] - 
/// * [transactionHash] - 
/// * [logIndex] - 
/// * [timestamp] - 
/// * [isBundle] - 
/// * [collection] - 
/// * [tokenId] - 
/// * [amount] - 
/// * [priceEth] - 
/// * [buyer] - 
/// * [seller] - 
@BuiltValue()
abstract class CRYPTOPUNKSTradeDTO implements Built<CRYPTOPUNKSTradeDTO, CRYPTOPUNKSTradeDTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// 
  @BuiltValueField(wireName: r'block_number')
  String? get blockNumber;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  /// 
  @BuiltValueField(wireName: r'block_range')
  String? get blockRange;

  /// 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'transaction_hash')
  String? get transactionHash;

  /// 
  @BuiltValueField(wireName: r'log_index')
  int? get logIndex;

  /// 
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// 
  @BuiltValueField(wireName: r'is_bundle')
  bool? get isBundle;

  /// 
  @BuiltValueField(wireName: r'collection')
  String? get collection;

  /// 
  @BuiltValueField(wireName: r'token_id')
  String? get tokenId;

  /// 
  @BuiltValueField(wireName: r'amount')
  String? get amount;

  /// 
  @BuiltValueField(wireName: r'price_eth')
  String? get priceEth;

  /// 
  @BuiltValueField(wireName: r'buyer')
  String? get buyer;

  /// 
  @BuiltValueField(wireName: r'seller')
  String? get seller;

  CRYPTOPUNKSTradeDTO._();

  factory CRYPTOPUNKSTradeDTO([void updates(CRYPTOPUNKSTradeDTOBuilder b)]) = _$CRYPTOPUNKSTradeDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CRYPTOPUNKSTradeDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CRYPTOPUNKSTradeDTO> get serializer => _$CRYPTOPUNKSTradeDTOSerializer();
}

class _$CRYPTOPUNKSTradeDTOSerializer implements PrimitiveSerializer<CRYPTOPUNKSTradeDTO> {
  @override
  final Iterable<Type> types = const [CRYPTOPUNKSTradeDTO, _$CRYPTOPUNKSTradeDTO];

  @override
  final String wireName = r'CRYPTOPUNKSTradeDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CRYPTOPUNKSTradeDTO object, {
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
    if (object.blockRange != null) {
      yield r'block_range';
      yield serializers.serialize(
        object.blockRange,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.transactionHash != null) {
      yield r'transaction_hash';
      yield serializers.serialize(
        object.transactionHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logIndex != null) {
      yield r'log_index';
      yield serializers.serialize(
        object.logIndex,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isBundle != null) {
      yield r'is_bundle';
      yield serializers.serialize(
        object.isBundle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.collection != null) {
      yield r'collection';
      yield serializers.serialize(
        object.collection,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokenId != null) {
      yield r'token_id';
      yield serializers.serialize(
        object.tokenId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.priceEth != null) {
      yield r'price_eth';
      yield serializers.serialize(
        object.priceEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buyer != null) {
      yield r'buyer';
      yield serializers.serialize(
        object.buyer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seller != null) {
      yield r'seller';
      yield serializers.serialize(
        object.seller,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CRYPTOPUNKSTradeDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CRYPTOPUNKSTradeDTOBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blockNumber = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        case r'block_range':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blockRange = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'transaction_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transactionHash = valueDes;
          break;
        case r'log_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logIndex = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'is_bundle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isBundle = valueDes;
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collection = valueDes;
          break;
        case r'token_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'price_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceEth = valueDes;
          break;
        case r'buyer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buyer = valueDes;
          break;
        case r'seller':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.seller = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CRYPTOPUNKSTradeDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CRYPTOPUNKSTradeDTOBuilder();
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

