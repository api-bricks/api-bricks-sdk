//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_icon.g.dart';

/// Represents an icon.
///
/// Properties:
/// * [exchangeId] - Gets or sets the exchange ID associated with the icon.
/// * [assetId] - Gets or sets the asset ID associated with the icon.
/// * [url] - Gets or sets the URL of the icon.
@BuiltValue()
abstract class V1Icon implements Built<V1Icon, V1IconBuilder> {
  /// Gets or sets the exchange ID associated with the icon.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the asset ID associated with the icon.
  @BuiltValueField(wireName: r'asset_id')
  String? get assetId;

  /// Gets or sets the URL of the icon.
  @BuiltValueField(wireName: r'url')
  String? get url;

  V1Icon._();

  factory V1Icon([void updates(V1IconBuilder b)]) = _$V1Icon;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1IconBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Icon> get serializer => _$V1IconSerializer();
}

class _$V1IconSerializer implements PrimitiveSerializer<V1Icon> {
  @override
  final Iterable<Type> types = const [V1Icon, _$V1Icon];

  @override
  final String wireName = r'V1Icon';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Icon object, {
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
    V1Icon object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1IconBuilder result,
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
  V1Icon deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1IconBuilder();
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


