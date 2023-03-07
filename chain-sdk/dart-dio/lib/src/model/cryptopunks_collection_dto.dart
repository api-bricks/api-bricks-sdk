//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cryptopunks_collection_dto.g.dart';

/// CRYPTOPUNKSCollectionDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [vid] - 
/// * [blockRange] - 
/// * [id] - 
/// * [name] - 
/// * [symbol] - 
/// * [totalSupply] - 
/// * [royaltyFee] - 
/// * [cumulativeTradeVolumeEth] - 
/// * [marketplaceRevenueEth] - 
/// * [creatorRevenueEth] - 
/// * [totalRevenueEth] - 
/// * [tradeCount] - 
/// * [buyerCount] - 
/// * [sellerCount] - 
@BuiltValue()
abstract class CRYPTOPUNKSCollectionDTO implements Built<CRYPTOPUNKSCollectionDTO, CRYPTOPUNKSCollectionDTOBuilder> {
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

  /// 
  @BuiltValueField(wireName: r'block_range')
  String? get blockRange;

  /// 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// 
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// 
  @BuiltValueField(wireName: r'total_supply')
  String? get totalSupply;

  /// 
  @BuiltValueField(wireName: r'royalty_fee')
  String? get royaltyFee;

  /// 
  @BuiltValueField(wireName: r'cumulative_trade_volume_eth')
  String? get cumulativeTradeVolumeEth;

  /// 
  @BuiltValueField(wireName: r'marketplace_revenue_eth')
  String? get marketplaceRevenueEth;

  /// 
  @BuiltValueField(wireName: r'creator_revenue_eth')
  String? get creatorRevenueEth;

  /// 
  @BuiltValueField(wireName: r'total_revenue_eth')
  String? get totalRevenueEth;

  /// 
  @BuiltValueField(wireName: r'trade_count')
  int? get tradeCount;

  /// 
  @BuiltValueField(wireName: r'buyer_count')
  int? get buyerCount;

  /// 
  @BuiltValueField(wireName: r'seller_count')
  int? get sellerCount;

  CRYPTOPUNKSCollectionDTO._();

  factory CRYPTOPUNKSCollectionDTO([void updates(CRYPTOPUNKSCollectionDTOBuilder b)]) = _$CRYPTOPUNKSCollectionDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CRYPTOPUNKSCollectionDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CRYPTOPUNKSCollectionDTO> get serializer => _$CRYPTOPUNKSCollectionDTOSerializer();
}

class _$CRYPTOPUNKSCollectionDTOSerializer implements PrimitiveSerializer<CRYPTOPUNKSCollectionDTO> {
  @override
  final Iterable<Type> types = const [CRYPTOPUNKSCollectionDTO, _$CRYPTOPUNKSCollectionDTO];

  @override
  final String wireName = r'CRYPTOPUNKSCollectionDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CRYPTOPUNKSCollectionDTO object, {
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalSupply != null) {
      yield r'total_supply';
      yield serializers.serialize(
        object.totalSupply,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.royaltyFee != null) {
      yield r'royalty_fee';
      yield serializers.serialize(
        object.royaltyFee,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cumulativeTradeVolumeEth != null) {
      yield r'cumulative_trade_volume_eth';
      yield serializers.serialize(
        object.cumulativeTradeVolumeEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.marketplaceRevenueEth != null) {
      yield r'marketplace_revenue_eth';
      yield serializers.serialize(
        object.marketplaceRevenueEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creatorRevenueEth != null) {
      yield r'creator_revenue_eth';
      yield serializers.serialize(
        object.creatorRevenueEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalRevenueEth != null) {
      yield r'total_revenue_eth';
      yield serializers.serialize(
        object.totalRevenueEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tradeCount != null) {
      yield r'trade_count';
      yield serializers.serialize(
        object.tradeCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.buyerCount != null) {
      yield r'buyer_count';
      yield serializers.serialize(
        object.buyerCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.sellerCount != null) {
      yield r'seller_count';
      yield serializers.serialize(
        object.sellerCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CRYPTOPUNKSCollectionDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CRYPTOPUNKSCollectionDTOBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'total_supply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalSupply = valueDes;
          break;
        case r'royalty_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.royaltyFee = valueDes;
          break;
        case r'cumulative_trade_volume_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cumulativeTradeVolumeEth = valueDes;
          break;
        case r'marketplace_revenue_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.marketplaceRevenueEth = valueDes;
          break;
        case r'creator_revenue_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorRevenueEth = valueDes;
          break;
        case r'total_revenue_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalRevenueEth = valueDes;
          break;
        case r'trade_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tradeCount = valueDes;
          break;
        case r'buyer_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.buyerCount = valueDes;
          break;
        case r'seller_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sellerCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CRYPTOPUNKSCollectionDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CRYPTOPUNKSCollectionDTOBuilder();
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

