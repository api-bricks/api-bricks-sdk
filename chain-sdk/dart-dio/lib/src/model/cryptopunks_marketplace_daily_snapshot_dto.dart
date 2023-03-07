//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cryptopunks_marketplace_daily_snapshot_dto.g.dart';

/// CRYPTOPUNKSMarketplaceDailySnapshotDTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [vid] - 
/// * [blockRange] - 
/// * [id] - 
/// * [marketplace] - 
/// * [timestamp] - 
/// * [collectionCount] - 
/// * [cumulativeTradeVolumeEth] - 
/// * [marketplaceRevenueEth] - 
/// * [creatorRevenueEth] - 
/// * [totalRevenueEth] - 
/// * [tradeCount] - 
/// * [cumulativeUniqueTraders] - 
/// * [dailyActiveTraders] - 
/// * [dailyTradedCollectionCount] - 
/// * [dailyTradedItemCount] - 
@BuiltValue()
abstract class CRYPTOPUNKSMarketplaceDailySnapshotDTO implements Built<CRYPTOPUNKSMarketplaceDailySnapshotDTO, CRYPTOPUNKSMarketplaceDailySnapshotDTOBuilder> {
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
  @BuiltValueField(wireName: r'marketplace')
  String? get marketplace;

  /// 
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// 
  @BuiltValueField(wireName: r'collection_count')
  int? get collectionCount;

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
  @BuiltValueField(wireName: r'cumulative_unique_traders')
  int? get cumulativeUniqueTraders;

  /// 
  @BuiltValueField(wireName: r'daily_active_traders')
  int? get dailyActiveTraders;

  /// 
  @BuiltValueField(wireName: r'daily_traded_collection_count')
  int? get dailyTradedCollectionCount;

  /// 
  @BuiltValueField(wireName: r'daily_traded_item_count')
  int? get dailyTradedItemCount;

  CRYPTOPUNKSMarketplaceDailySnapshotDTO._();

  factory CRYPTOPUNKSMarketplaceDailySnapshotDTO([void updates(CRYPTOPUNKSMarketplaceDailySnapshotDTOBuilder b)]) = _$CRYPTOPUNKSMarketplaceDailySnapshotDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CRYPTOPUNKSMarketplaceDailySnapshotDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CRYPTOPUNKSMarketplaceDailySnapshotDTO> get serializer => _$CRYPTOPUNKSMarketplaceDailySnapshotDTOSerializer();
}

class _$CRYPTOPUNKSMarketplaceDailySnapshotDTOSerializer implements PrimitiveSerializer<CRYPTOPUNKSMarketplaceDailySnapshotDTO> {
  @override
  final Iterable<Type> types = const [CRYPTOPUNKSMarketplaceDailySnapshotDTO, _$CRYPTOPUNKSMarketplaceDailySnapshotDTO];

  @override
  final String wireName = r'CRYPTOPUNKSMarketplaceDailySnapshotDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CRYPTOPUNKSMarketplaceDailySnapshotDTO object, {
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
    if (object.marketplace != null) {
      yield r'marketplace';
      yield serializers.serialize(
        object.marketplace,
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
    if (object.collectionCount != null) {
      yield r'collection_count';
      yield serializers.serialize(
        object.collectionCount,
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
    if (object.tradeCount != null) {
      yield r'trade_count';
      yield serializers.serialize(
        object.tradeCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.cumulativeUniqueTraders != null) {
      yield r'cumulative_unique_traders';
      yield serializers.serialize(
        object.cumulativeUniqueTraders,
        specifiedType: const FullType(int),
      );
    }
    if (object.dailyActiveTraders != null) {
      yield r'daily_active_traders';
      yield serializers.serialize(
        object.dailyActiveTraders,
        specifiedType: const FullType(int),
      );
    }
    if (object.dailyTradedCollectionCount != null) {
      yield r'daily_traded_collection_count';
      yield serializers.serialize(
        object.dailyTradedCollectionCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.dailyTradedItemCount != null) {
      yield r'daily_traded_item_count';
      yield serializers.serialize(
        object.dailyTradedItemCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CRYPTOPUNKSMarketplaceDailySnapshotDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CRYPTOPUNKSMarketplaceDailySnapshotDTOBuilder result,
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
        case r'marketplace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.marketplace = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'collection_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.collectionCount = valueDes;
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
        case r'cumulative_unique_traders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cumulativeUniqueTraders = valueDes;
          break;
        case r'daily_active_traders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dailyActiveTraders = valueDes;
          break;
        case r'daily_traded_collection_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dailyTradedCollectionCount = valueDes;
          break;
        case r'daily_traded_item_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dailyTradedItemCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CRYPTOPUNKSMarketplaceDailySnapshotDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CRYPTOPUNKSMarketplaceDailySnapshotDTOBuilder();
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

