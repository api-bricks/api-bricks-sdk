//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cryptopunks_market_place_dto.g.dart';

/// CRYPTOPUNKSMarketPlaceDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [vid] - 
/// * [blockRange] - 
/// * [id] - 
/// * [name] - 
/// * [slug] - 
/// * [schemaVersion] - 
/// * [subgraphVersion] - 
/// * [methodologyVersion] - 
/// * [collectionCount] - 
/// * [tradeCount] - 
/// * [cumulativeTradeVolumeEth] - 
/// * [marketplaceRevenueEth] - 
/// * [creatorRevenueEth] - 
/// * [totalRevenueEth] - 
/// * [cumulativeUniqueTraders] - 
@BuiltValue()
abstract class CRYPTOPUNKSMarketPlaceDTO implements Built<CRYPTOPUNKSMarketPlaceDTO, CRYPTOPUNKSMarketPlaceDTOBuilder> {
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
  @BuiltValueField(wireName: r'slug')
  String? get slug;

  /// 
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// 
  @BuiltValueField(wireName: r'subgraph_version')
  String? get subgraphVersion;

  /// 
  @BuiltValueField(wireName: r'methodology_version')
  String? get methodologyVersion;

  /// 
  @BuiltValueField(wireName: r'collection_count')
  int? get collectionCount;

  /// 
  @BuiltValueField(wireName: r'trade_count')
  int? get tradeCount;

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
  @BuiltValueField(wireName: r'cumulative_unique_traders')
  int? get cumulativeUniqueTraders;

  CRYPTOPUNKSMarketPlaceDTO._();

  factory CRYPTOPUNKSMarketPlaceDTO([void updates(CRYPTOPUNKSMarketPlaceDTOBuilder b)]) = _$CRYPTOPUNKSMarketPlaceDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CRYPTOPUNKSMarketPlaceDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CRYPTOPUNKSMarketPlaceDTO> get serializer => _$CRYPTOPUNKSMarketPlaceDTOSerializer();
}

class _$CRYPTOPUNKSMarketPlaceDTOSerializer implements PrimitiveSerializer<CRYPTOPUNKSMarketPlaceDTO> {
  @override
  final Iterable<Type> types = const [CRYPTOPUNKSMarketPlaceDTO, _$CRYPTOPUNKSMarketPlaceDTO];

  @override
  final String wireName = r'CRYPTOPUNKSMarketPlaceDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CRYPTOPUNKSMarketPlaceDTO object, {
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
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.schemaVersion != null) {
      yield r'schema_version';
      yield serializers.serialize(
        object.schemaVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subgraphVersion != null) {
      yield r'subgraph_version';
      yield serializers.serialize(
        object.subgraphVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.methodologyVersion != null) {
      yield r'methodology_version';
      yield serializers.serialize(
        object.methodologyVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.collectionCount != null) {
      yield r'collection_count';
      yield serializers.serialize(
        object.collectionCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.tradeCount != null) {
      yield r'trade_count';
      yield serializers.serialize(
        object.tradeCount,
        specifiedType: const FullType(int),
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
    if (object.cumulativeUniqueTraders != null) {
      yield r'cumulative_unique_traders';
      yield serializers.serialize(
        object.cumulativeUniqueTraders,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CRYPTOPUNKSMarketPlaceDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CRYPTOPUNKSMarketPlaceDTOBuilder result,
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
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.slug = valueDes;
          break;
        case r'schema_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.schemaVersion = valueDes;
          break;
        case r'subgraph_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subgraphVersion = valueDes;
          break;
        case r'methodology_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.methodologyVersion = valueDes;
          break;
        case r'collection_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.collectionCount = valueDes;
          break;
        case r'trade_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tradeCount = valueDes;
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
        case r'cumulative_unique_traders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cumulativeUniqueTraders = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CRYPTOPUNKSMarketPlaceDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CRYPTOPUNKSMarketPlaceDTOBuilder();
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

