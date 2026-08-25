//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_listing_item.g.dart';

/// Represents a listing data item.
///
/// Properties:
/// * [metricId] - Gets or sets the metric ID.
/// * [symbolId] - Gets or sets the CoinAPI symbol ID. Null for exchange-level metrics.
/// * [symbolIdExternal] - Gets or sets the exchange-native symbol ID. Null for exchange-level metrics.
/// * [exchangeId] - Gets or sets the exchange ID.
/// * [assetId] - Gets or sets the asset ID.
/// * [assetIdExternal] - Gets or sets the asset ID.
/// * [chainId] - Gets or sets the chain ID.
/// * [networkId] - Gets or sets the network ID.
@BuiltValue()
abstract class V1ListingItem implements Built<V1ListingItem, V1ListingItemBuilder> {
  /// Gets or sets the metric ID.
  @BuiltValueField(wireName: r'metric_id')
  String? get metricId;

  /// Gets or sets the CoinAPI symbol ID. Null for exchange-level metrics.
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  /// Gets or sets the exchange-native symbol ID. Null for exchange-level metrics.
  @BuiltValueField(wireName: r'symbol_id_external')
  String? get symbolIdExternal;

  /// Gets or sets the exchange ID.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the asset ID.
  @BuiltValueField(wireName: r'asset_id')
  String? get assetId;

  /// Gets or sets the asset ID.
  @BuiltValueField(wireName: r'asset_id_external')
  String? get assetIdExternal;

  /// Gets or sets the chain ID.
  @BuiltValueField(wireName: r'chain_id')
  String? get chainId;

  /// Gets or sets the network ID.
  @BuiltValueField(wireName: r'network_id')
  String? get networkId;

  V1ListingItem._();

  factory V1ListingItem([void updates(V1ListingItemBuilder b)]) = _$V1ListingItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ListingItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ListingItem> get serializer => _$V1ListingItemSerializer();
}

class _$V1ListingItemSerializer implements PrimitiveSerializer<V1ListingItem> {
  @override
  final Iterable<Type> types = const [V1ListingItem, _$V1ListingItem];

  @override
  final String wireName = r'V1ListingItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ListingItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metricId != null) {
      yield r'metric_id';
      yield serializers.serialize(
        object.metricId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolIdExternal != null) {
      yield r'symbol_id_external';
      yield serializers.serialize(
        object.symbolIdExternal,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetId != null) {
      yield r'asset_id';
      yield serializers.serialize(
        object.assetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetIdExternal != null) {
      yield r'asset_id_external';
      yield serializers.serialize(
        object.assetIdExternal,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.chainId != null) {
      yield r'chain_id';
      yield serializers.serialize(
        object.chainId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.networkId != null) {
      yield r'network_id';
      yield serializers.serialize(
        object.networkId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ListingItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ListingItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metric_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metricId = valueDes;
          break;
        case r'symbol_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolId = valueDes;
          break;
        case r'symbol_id_external':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolIdExternal = valueDes;
          break;
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'asset_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetId = valueDes;
          break;
        case r'asset_id_external':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdExternal = valueDes;
          break;
        case r'chain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chainId = valueDes;
          break;
        case r'network_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.networkId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ListingItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ListingItemBuilder();
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


