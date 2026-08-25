//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'market_data_metadata_icon.g.dart';

/// Represents an icon.
///
/// Properties:
/// * [exchangeId] - Gets or sets the exchange ID associated with the icon.
/// * [assetId] - Gets or sets the asset ID associated with the icon.
/// * [url] - Gets or sets the URL of the icon.
@BuiltValue()
abstract class MarketDataMetadataIcon implements Built<MarketDataMetadataIcon, MarketDataMetadataIconBuilder> {
  /// Gets or sets the exchange ID associated with the icon.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the asset ID associated with the icon.
  @BuiltValueField(wireName: r'asset_id')
  String? get assetId;

  /// Gets or sets the URL of the icon.
  @BuiltValueField(wireName: r'url')
  String? get url;

  MarketDataMetadataIcon._();

  factory MarketDataMetadataIcon([void updates(MarketDataMetadataIconBuilder b)]) = _$MarketDataMetadataIcon;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarketDataMetadataIconBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarketDataMetadataIcon> get serializer => _$MarketDataMetadataIconSerializer();
}

class _$MarketDataMetadataIconSerializer implements PrimitiveSerializer<MarketDataMetadataIcon> {
  @override
  final Iterable<Type> types = const [MarketDataMetadataIcon, _$MarketDataMetadataIcon];

  @override
  final String wireName = r'MarketDataMetadataIcon';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarketDataMetadataIcon object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MarketDataMetadataIcon object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarketDataMetadataIconBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarketDataMetadataIcon deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarketDataMetadataIconBuilder();
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


