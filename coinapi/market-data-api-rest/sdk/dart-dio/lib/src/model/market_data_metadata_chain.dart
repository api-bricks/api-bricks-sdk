//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'market_data_metadata_chain.g.dart';

/// Represents a blockchain chain.
///
/// Properties:
/// * [chainId] - Gets or sets the chain identifier.
/// * [name] - Gets or sets the name of the chain.
@BuiltValue()
abstract class MarketDataMetadataChain implements Built<MarketDataMetadataChain, MarketDataMetadataChainBuilder> {
  /// Gets or sets the chain identifier.
  @BuiltValueField(wireName: r'chain_id')
  String? get chainId;

  /// Gets or sets the name of the chain.
  @BuiltValueField(wireName: r'name')
  String? get name;

  MarketDataMetadataChain._();

  factory MarketDataMetadataChain([void updates(MarketDataMetadataChainBuilder b)]) = _$MarketDataMetadataChain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarketDataMetadataChainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MarketDataMetadataChain> get serializer => _$MarketDataMetadataChainSerializer();
}

class _$MarketDataMetadataChainSerializer implements PrimitiveSerializer<MarketDataMetadataChain> {
  @override
  final Iterable<Type> types = const [MarketDataMetadataChain, _$MarketDataMetadataChain];

  @override
  final String wireName = r'MarketDataMetadataChain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MarketDataMetadataChain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chainId != null) {
      yield r'chain_id';
      yield serializers.serialize(
        object.chainId,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    MarketDataMetadataChain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MarketDataMetadataChainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chainId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MarketDataMetadataChain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarketDataMetadataChainBuilder();
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


